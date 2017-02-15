Imports Microsoft.VisualBasic

Imports System.Data
Namespace Stark.SignUp
    Public Class SignUpActions
        Public Shared Function DoCheckPassword(ByVal theUser As Stark.BOL.Validate) As PasswordValidationResult

            If theUser.Password.Length < 8 Then
                theUser.PasswordCheckErrors.Append("Password is Too Short")
                Dim resultPackage As New PasswordValidationResult("Password is Too Short", False)
                Return resultPackage
            End If
            If theUser.Password.Length > 32 Then
                theUser.PasswordCheckErrors.Append("Password is Too Long")
                Dim resultPackage As New PasswordValidationResult("Password is Too Long", False)
                Return resultPackage
            End If

            Dim result As New Validation2008.ValidationResult()
            result = Validation2008.Validation.Calculate(theUser.Password, theUser.UserID)
            If Not result.Status Then
                Dim resultPackage As New PasswordValidationResult(result.Message, False)
                Return resultPackage
            End If

            Return DoCheckOldPasswords(theUser)

        End Function

        Private Shared Function DoCheckOldPasswords(ByVal theUser As Stark.BOL.Validate) As PasswordValidationResult
            Dim db As New Stark.DAL.DBAccess
            db.CommandType = Data.CommandType.StoredProcedure
            db.CommandText = "ReturnPasswordSetForSignUp"
            db.AddParameter("@IDNo", theUser.DeltaID)

            Dim PassTable As New System.Data.DataTable

            PassTable.Load(db.ExecuteReader)
            Dim oldPasswordsArray As New Collections.Specialized.StringCollection
            Dim count As Integer = 0

            Dim lastchange As New DateTime()
            lastchange = CType(PassTable.Rows(0)("LastChange"), Date)

            lastchange = lastchange.AddMinutes(-20)

            If lastchange.AddMinutes(15) > Date.Now Then
                Return New PasswordValidationResult("Requested password is OK, but you can not change your password for 15 minutes: You have changed your password within the last 15 minutes.  Please wait", False)
            End If

            Try
                While count <= 5
                    If Not PassTable.Rows(0).Item(count) Is System.DBNull.Value Then
                        oldPasswordsArray.Add(PassTable.Rows(0).Item(count).ToString)

                    End If
                    count = count + 1
                End While

            Catch ex As Exception

            Finally
                db.Connection.Close()
                db.Dispose()
            End Try

            Dim CheckSequence As String
            Dim StartCheckSequence As Integer = 0
            'Check to see if the password has been used for the past 5 times.

            'Create an instance of the encryptor class
            Dim xCryptor As SunGard.Security.Encryptor
            xCryptor = SunGard.Web.Security.EncryptorHelper.GetEncryptor()

            Dim encryptedPassword As String
            Dim password As String

            For Each encryptedPassword In oldPasswordsArray
                'Try
                password = xCryptor.Decrypt(encryptedPassword)

                If password = theUser.Password Then
                    theUser.PasswordCheckErrors.Append("You have previously used this password and will need to select a new one")
                    Return New PasswordValidationResult("You have previously used this password and will need to select a new one", False)
                Else
                    StartCheckSequence = 0

                    Do While StartCheckSequence < password.Length - 4
                        CheckSequence = password.Substring(StartCheckSequence, 4)
                        If theUser.Password.IndexOf(CheckSequence) >= 0 Then
                            theUser.PasswordCheckErrors.Append("Your password is too similar to other passwords you have used.  Please select a password without that does not use a sequence of three or more numbers from your old passwords.")
                            Return New PasswordValidationResult("Your password is too similar to other passwords you have used.  Please select a password without that does not use a sequence of three or more numbers or letters from your old passwords.", False)

                        End If
                        StartCheckSequence = StartCheckSequence + 1
                    Loop

                End If
                'Catch ex As Exception
                'We just skip this one if there are errors.
                'End Try

            Next
            Return New PasswordValidationResult("Password is valid", True)
        End Function

        Public Shared Sub DoInsert(ByVal theUser As Stark.BOL.Validate)
            Dim db As New Stark.DAL.DBAccess
            'Create the keys for the encryptor

            Dim xCryptor As SunGard.Security.Encryptor
            xCryptor = SunGard.Web.Security.EncryptorHelper.GetEncryptor()

            db.CommandType = Data.CommandType.StoredProcedure
            db.CommandText = "spDoInsertUser"
            db.AddParameter("@varUserID", theUser.UserID)
            db.AddParameter("@varPassword", xCryptor.Encrypt(theUser.Password))
            db.AddParameter("@varDeltaID", theUser.DeltaID)
            db.AddParameter("@varSSN", theUser.SSN)
            db.AddParameter("@varBirthDate", theUser.dtBirthDate)
            db.AddParameter("varType", "SP")

            db.ExecuteNonQuery()
        End Sub

        Public Shared Function DoUpdate(ByVal theUser As Stark.BOL.Validate) As Boolean
            Dim db As New Stark.DAL.DBAccess
            Dim retVal As Boolean = True

            Dim xCryptor As SunGard.Security.Encryptor
            xCryptor = SunGard.Web.Security.EncryptorHelper.GetEncryptor()

            Try
                db.CommandType = Data.CommandType.StoredProcedure
                db.CommandText = "DoUpdatePassword"

                db.AddParameter("@IDNo", theUser.DeltaID)
                db.AddParameter("@PassKey", xCryptor.Encrypt(theUser.Password))

                db.ExecuteNonQuery()
            Catch ex As Exception
                Throw New Exception(ex.Message)
                retVal = False
            Finally
                db.Connection.Close()
                db.Dispose()
            End Try
            Return retVal
        End Function

        Public Shared Function GetExpiredPasswordUsers(ByVal lastDate As DateTime) As System.Data.DataTable
            Dim dt As New System.Data.DataTable
            Dim db As New Stark.DAL.DBAccess
            db.CommandText = "DoGetExpiredPasswords"
            db.AddParameter("@LastDate", lastDate)

            dt.Load(db.ExecuteReader())
            db.Connection.Close()
            Return dt

        End Function

    End Class
End Namespace