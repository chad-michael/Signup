Imports Stark.SignUp.AD
Imports Stark.BOL.Validate
Partial Class PinRequired
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        If (Page.IsValid) Then
            'Change the password based on the session and then remove the session value
            Dim userInfo As New Stark.BOL.Validate
            Dim path As String
            Dim emailer As New Mailer

            userInfo = Session("UserInfo")
            path = Session("UserPath")

            'Check to make sure that the pin is correct
            If inputTxtPin.Text = userInfo.pin Then
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
                Me.ErrorMessageText.Text = "This is not the correct pin"
            End If
        End If

    End Sub

End Class