Imports Stark.BOL.Validate
Imports Stark.SignUp.AD

Partial Class DepartmentalAccountChange
    Inherits System.Web.UI.Page

    Private Function GetUsername() As String
        Return System.Configuration.ConfigurationManager.AppSettings.Item("serviceAccountUsername")
    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim dam As String = Request.Form("uid")
        Dim pass As String = Request.Form("password")

        Dim userInfo As New Stark.BOL.Validate
        userInfo.Password = pass
        userInfo.UserID = dam

        Dim ADManager As New SunGard.ActiveDirectoryManager.ADHelper(Manager.GetUserPath(GetUsername()))
        Dim ADUser As SunGard.ActiveDirectoryManager.UserData = New SunGard.ActiveDirectoryManager.UserData()

        Dim path As String = Manager.GetUserPath(ADManager.GetUsersCN(dam))

        If Not path Is Nothing Then
            If Not Manager.SetPassword(path, userInfo) Then
                Throw New Exception("Can't Set Password")
            Else
                Response.Redirect("https://deltanet.delta.edu/myintranet/webowners/confirmation.asp")
            End If
        Else
            'Response.Write(path)
        End If
       

    End Sub
End Class
