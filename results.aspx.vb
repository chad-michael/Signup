Imports Stark.SignUp.AD
Partial Class results
    Inherits System.Web.UI.Page
    Private UserArgs As System.Data.DataSet
    Private ArgsCollection As Collections.Specialized.NameValueCollection

    Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            Dim userInfo As String = ""
            If Not Session.Item("UserID") Is Nothing Then
                userInfo = Session("UserID")
            End If

            Dim userType As String = "-1"
            If Not Session.Item("UserType") Is Nothing Then
                userType = Session.Item("UserType")
            End If

            lblUserName.Text = userInfo
            EnumTypes(userType)

        Catch ex As Exception
            Dim emailer As New Mailer
            emailer.SendErrorReport("Null reference on signup.delta.edu/results.  This is a most likely a NON-Critial error. <br/> <br/>" + ex.Message)
            Me.ErrorMessage.Visible = True
            EnumTypes("-1")
        End Try

    End Sub

    Private Sub EnumTypes(ByVal type As String)
        Select Case type
            Case "-1"
                Me.ErrorMessage.Visible = True
                Me.Calendar.Visible = False
                Me.DeltaNet.Visible = False
                Me.NetworkAccount.Visible = False
                Me.EmailFacStaff.Visible = False
                Me.FTPFacStaff.Visible = False
                Me.FTPStudents.Visible = False
                Me.MyDelta.Visible = False
                Me.Educator.Visible = False

            Case "05"
                Me.ErrorMessage.Visible = False
                Me.Calendar.Visible = False
                Me.DeltaNet.Visible = False
                Me.NetworkAccount.Visible = False
                Me.EmailStudents.Visible = True
                Me.Educator.Visible = True
                Me.FTPStudents.Visible = True
                Me.MyDelta.Visible = True
            Case Else
                Me.ErrorMessage.Visible = False
                Me.FTPFacStaff.Visible = True
                Me.Calendar.Visible = True
                Me.DeltaNet.Visible = True
                Me.EmailFacStaff.Visible = True
                Me.Educator.Visible = True
                Me.MyDelta.Visible = True
                Me.NetworkAccount.Visible = True
        End Select
    End Sub
End Class