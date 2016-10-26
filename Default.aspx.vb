Imports Stark.SignUp.AD
Imports Stark.BOL.Validate
Partial Class _Default
    Inherits System.Web.UI.Page
    Private encDisplay As String
    Private encDisplaySSN As String
    Protected catalogofDate As New Stark.SignUp.Utilities.DateHandler


    'Protected retVal As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        

        Me.PanelNoSuccess.Visible = False
        Me.NoGoodPassword.Visible = False
        Me.NoAuthentication.Visible = False

        If Not Page.IsPostBack Then
            Dim i As Integer = 1901

            While i < 2010
                inputBDYear.Items.Add(i.ToString)
                i = i + 1
            End While

            Me.inputBDMonth.DataSource = catalogofDate.Months
            Me.inputBDMonth.DataTextField = "Month"
            Me.inputBDMonth.DataValueField = "IDCol"
            Me.inputBDMonth.DataBind()
        End If

 
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        If (Page.IsValid) Then
            Dim emailer As New Mailer


            Dim dtBirthDate As Date = New Date(Me.inputBDYear.SelectedValue, Me.inputBDMonth.SelectedValue, Me.inputBDDay.SelectedValue)
            Dim userInfo As New Stark.BOL.Validate
            userInfo.DeltaID = Server.HtmlEncode(Me.inputTxtDeltaID.Text)

            userInfo.SSN = inputTxtSSN.Text
            userInfo.BirthDate = dtBirthDate.Date.ToShortDateString
            userInfo.dtBirthDate = dtBirthDate

            'password input validated durring validation process. 
            userInfo.Password = inputTxtPassword.Text
            userInfo.IsValid = True

            'Make sure the user is in the ERP Table 
            'If the are valid, the userInfo.IsValid is set to true
            DoCheckIsValid(userInfo)

            GetUserPin(userInfo)            

            'If the user has been validated against the ERP informaton then continue
            If userInfo.IsValid Then
                Dim passwordValidationResult As PasswordValidationResult
                passwordValidationResult = Stark.SignUp.SignUpActions.DoCheckPassword(userInfo)

                If Not passwordValidationResult.PasswordIsValid Then 'If the User has a invalid password
                    Me.PanelNoSuccess.Visible = True
                    Me.NoGoodPassword.Visible = True
                    Me.lblPasswordProblemMessage.Text = passwordValidationResult.ResultMessage
                    userInfo.IsValid = False
                End If
            Else
                Me.PanelNoSuccess.Visible = True
                Me.NoAuthentication.Visible = True
                userInfo.IsValid = False
            End If

            'Make sure the user is still valid to proceed.  At this point, they won't be if there password is not accepted.
            If userInfo.IsValid Then
                'Continue to insert the record in the databae
                'Check if their new, if so create their accounts. 
                'Normal operation will be that the user will not be new, so we will update it. 

                'Update SQL First.  If the update of AD fails, then we'll roll back the SQL transaction
                If Update(userInfo) Then
                    Dim path As String = Manager.GetUserPath(userInfo.UserID)
                    If Not path Is Nothing Then
                        If userInfo.pin <> "" Then
                            'Put this into the session if everything passes
                            Session("UserInfo") = userInfo
                            Session("UserPath") = path
                            Response.Redirect("PinRequired.aspx")
                        End If
                        If Not Manager.SetPassword(path, userInfo) Then
                            'Roll Back SQL Update Statement  -- TODO
                            'Throw New Exception("Couldn't Update AD.  Please contact the administrator")
                            Me.ErrorMessageText.Text = "If Not Manager.SetPassword : There was a problem updating a password in Active Directory. <br /><br />  If you have been admitted within the past 4 hours, your account has not been created. <br/> <br/>  Please contact the OIT help desk at 686-9575 for assistance.  Your error has been logged."
                            emailer.SendErrorReport("User Path:  " & path & "  <br /> <br />Problem with User ID " & userInfo.UserID & "<br /><br/> " & userInfo.DeltaID & " <br /> <br />" & ErrorMessageText.Text)
                        Else
                            Session.Add("UserID", userInfo.UserID)
                            Session.Add("UserType", userInfo.UserType)
                            Response.Redirect("~/results.aspx")
                        End If
                    Else
                        Me.PanelNoSuccess.Visible = True
                        Me.ErrorMessage.Visible = True
                        Me.ErrorMessageText.Text = "There was a problem updating your password in Active Directory. <br /><br />  If you have been admitted within the past 4 hours, your account has not been created. <br/> <br/>  Please contact the OIT help desk at 686-9575 for assistance.  Your error has been logged."
                        emailer.SendErrorReport("User Path is Nothing <br /> <br />Problem with User ID " & userInfo.UserID & "<br /><br/> " & userInfo.DeltaID & " <br /> <br />" & ErrorMessageText.Text)
                    End If
                Else
                    'Couldn't Update SQL for some reason.  
                    Me.PanelNoSuccess.Visible = True
                    Me.ErrorMessage.Visible = True
                    Me.ErrorMessageText.Text = "There was a problem updating the database.  Please contact the OIT help desk at 686-9575 for assistance.  Your error has been logged."
                    emailer.SendErrorReport("<br /> <br /> Problem with User ID " & userInfo.UserID & "<br /><br/> " & userInfo.DeltaID & " <br /> <br />" & ErrorMessageText.Text)
                End If
            Else
                Me.PanelNoSuccess.Visible = True
                Me.ErrorMessage.Visible = True
                Me.ErrorMessageText.Text = userInfo.PasswordCheckErrors.ToString
                'Throw New Exception("Couldn't Update SQL.  Please contact the administrator")
            End If

            'If we get to this point there was an unrecoverable error.  Show the message
            Me.PanelNoSuccess.Visible = True
            Me.ErrorMessage.Visible = True
            Dim errorString As String = Me.ErrorMessageText.Text
            'emailer.SendErrorReport("If something failed, then we will get to this point.  <br /> <br />" & userInfo.UserID & "<br /><br/> " & ErrorMessageText.Text)
            'Throw New Exception("Couldn't Update SQL.  Please contact the administrator")

        Else
            Me.PanelNoSuccess.Visible = True
            Me.ErrorMessage.Visible = True
            Me.ErrorMessageText.Text = "All fields must be contain valid values before your new password will be accepted.  Please check that your new password meets all complexity rules and that you have correctly entered your personal information.  <br/> <br/> Please scroll down and choose a new password."

        End If



    End Sub

End Class