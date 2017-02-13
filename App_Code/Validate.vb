Imports Microsoft.VisualBasic
Imports Stark.SignUp
Imports System.Data.SqlClient

Namespace Stark.BOL

    Public Class Validate
        Public Sub New()

        End Sub

        Public StatusMessage As String = ""
        Public PasswordCheckErrors As New StringBuilder
        Private _password As String
        Private _typeFlag As String
        Private _deltaID As String
        Private _userID As String
        Private _ssn As String
        Private _birthdate As String
        Private _dateBirthDate As Date
        Private _isValid As Boolean
        Private _UserType As String
        Private _FName As String
        Private _LName As String
        Private _pin As String
        Private _UserDetails As New Collections.Specialized.NameValueCollection

        Public Property UserDetails() As Collections.Specialized.NameValueCollection
            Get
                Return _UserDetails
            End Get
            Set(ByVal value As Collections.Specialized.NameValueCollection)
                _UserDetails = value
            End Set
        End Property

        Public Property FirstName() As String
            Get
                Return _FName
            End Get
            Set(ByVal value As String)
                _FName = value
            End Set
        End Property

        Public Property pin() As String
            Get
                Return _pin
            End Get
            Set(ByVal value As String)
                _pin = value
            End Set
        End Property

        Public Property LastName() As String
            Get
                Return _LName
            End Get
            Set(ByVal value As String)
                _LName = value
            End Set
        End Property
        Public Property Password() As String
            Get
                Return _password
            End Get
            Set(ByVal value As String)
                _password = value
            End Set
        End Property
        Public Property UserType() As String
            Get
                Return _UserType
            End Get
            Set(ByVal value As String)
                _UserType = value
            End Set
        End Property

        Public Property TypeFlag() As String
            Get
                Return _typeFlag
            End Get
            Set(ByVal value As String)
                _typeFlag = value
            End Set
        End Property
        Public Property DeltaID() As String
            Get
                Return _deltaID
            End Get
            Set(ByVal value As String)
                _deltaID = value
            End Set
        End Property
        Public Property SSN() As String
            Get
                Return _ssn
            End Get
            Set(ByVal value As String)
                _ssn = value
            End Set
        End Property
        Public Property BirthDate() As String
            Get
                Return _birthdate
            End Get
            Set(ByVal value As String)
                _birthdate = value
            End Set
        End Property
        Public Property dtBirthDate() As Date
            Get
                Return _dateBirthDate
            End Get
            Set(ByVal value As Date)
                _dateBirthDate = value
            End Set
        End Property
        Public Property IsValid() As Boolean
            Get
                Return _isValid
            End Get
            Set(ByVal value As Boolean)
                _isValid = value
            End Set
        End Property
        Public Property UserID() As String
            Get
                Return _userID
            End Get
            Set(ByVal value As String)
                _userID = value
            End Set
        End Property

        Public Shared Function DoCheckIsValid(ByVal User As Stark.BOL.Validate) As Validate

            Dim db As New Stark.DAL.DBAccess
            db.CommandType = Data.CommandType.StoredProcedure
            db.CommandText = "DoCheckIsValidForSignUp"

            db.AddParameter("@IDNo", User.DeltaID)
            db.AddParameter("@SSN", User.SSN)
            db.AddParameter("@BirthDate", User.dtBirthDate)

            Dim UserInfoSet As System.Data.DataSet
            Try
                UserInfoSet = db.ExecuteDataSet
                If UserInfoSet.Tables.Count > 0 Then
                    If UserInfoSet.Tables(0).Rows.Count > 0 Then
                        User.IsValid = True
                        User.UserID = UserInfoSet.Tables(0).Rows(0).Item("Usernames")
                        User.UserType = UserInfoSet.Tables(0).Rows(0).Item("Type")
                        User.FirstName = UserInfoSet.Tables(0).Rows(0).Item("FirstNM")
                        User.LastName = UserInfoSet.Tables(0).Rows(0).Item("LastNM")
                        User.StatusMessage = User.StatusMessage & User.UserID & " is a valid user.<br />"
                        Try
                            User.UserDetails.Add("CST", UserInfoSet.Tables(0).Rows(0).Item("CST"))
                            User.UserDetails.Add("Web", UserInfoSet.Tables(0).Rows(0).Item("WebDesign"))
                            User.UserDetails.Add("Assessment", UserInfoSet.Tables(0).Rows(0).Item("Assessment"))
                        Catch ex As Exception
                            Dim emailer As New Mailer
                            emailer.SendErrorReport("Problem with User ID " & User.UserID & "<br /><br/> IDNO:  " & User.DeltaID & " <br /> <br />" & ex.Message & " <br /> <br />" & ex.StackTrace)
                        End Try

                    End If
                Else
                    User.IsValid = False

                    User.StatusMessage = User.StatusMessage & User.UserID & " is NOT a valid user.<br />"
                    User.StatusMessage = User.StatusMessage & User.dtBirthDate.ToLongDateString & " "
                End If
            Catch ex As Exception
                User.IsValid = False
                User.StatusMessage = ex.Message + " <br /> There was a problem looking up your user information"
                User.StatusMessage = User.StatusMessage + " <br /> Please Verify that you have entered the information"
            Finally
                db.Connection.Close()
                db.Dispose()
            End Try

            Return User
        End Function

        Public Shared Sub GetUserPin(ByVal User As Stark.BOL.Validate)

            Dim db As New Stark.DAL.DBAccess
            Dim idnoParam As New System.Data.SqlClient.SqlParameter("@IDNo", User.DeltaID)
            Dim outPin As New System.Data.SqlClient.SqlParameter("@pin", Data.SqlDbType.NVarChar, 10)
            outPin.Direction = Data.ParameterDirection.Output

            db.CommandType = Data.CommandType.StoredProcedure
            db.CommandText = "GetUserPin"

            db.AddParameter(idnoParam)
            db.AddParameter(outPin)

            Try
                ''For Each a As SqlParameter In db.command.Parameters
                ''    User.pin = User.pin + a.ParameterName
                ''Next
                db.ExecuteNonQuery()
                If Not IsDBNull(outPin.Value) Then
                    User.pin = outPin.Value
                Else
                    User.pin = ""
                End If

            Catch ex As Exception
                User.pin = "There was an error pulling the data" + ex.Message
            Finally
                db.Connection.Close()
                db.Dispose()
            End Try

        End Sub

        Public Shared Sub DoCheckIsNewUser(ByVal user As Stark.BOL.Validate)
            Dim db As New Stark.DAL.DBAccess
            db.CommandType = Data.CommandType.Text
            db.CommandText = "SELECT userid FROM users WHERE userid = @varUserID"
            db.AddParameter("@varUserID", user.UserID)
            Dim reader As System.Data.SqlClient.SqlDataReader
            reader = db.ExecuteReader

            If reader.Read Then
                user.TypeFlag = "Update"
            Else
                user.TypeFlag = "Insert"
            End If

        End Sub

        Public Shared Function Update(ByVal user As Stark.BOL.Validate) As Boolean
            If SignUpActions.DoUpdate(user) Then
                user.StatusMessage = user.StatusMessage & " Update Record.<br />"
                Return True
            Else
                Return False
            End If
        End Function

        Public Shared Sub Insert(ByVal user As Stark.BOL.Validate)
            SignUpActions.DoInsert(user)
            user.StatusMessage = user.StatusMessage & " Insert Record.<br />"
        End Sub
    End Class
End Namespace