Imports Microsoft.VisualBasic
Imports System.Net.Mail

Public Class Mailer

    Public Sub New()

    End Sub

    Public Sub DoMassMail(ByVal users As System.Data.DataTable)
        Dim row As System.Data.DataRow
        For Each row In users.Rows
            Dim message As New System.Net.Mail.MailMessage("help@delta.edu", row.Item("EmailAddress"))
            message.Body = "Your Delta College Electronic Password Will Expire In "
        Next
    End Sub

    Public Sub SendErrorReport(ByVal Message As String)
        Dim smtpClient As New SmtpClient()

        Dim body As New MailMessage()

        Try
            Dim fromAddress As MailAddress = New MailAddress("signup@delta.edu", "Sign Up Web Application")
            smtpClient.Host = "exchmail.delta.edu"
            smtpClient.Port = 25

            body.From = fromAddress

            'body.To.Add("lucasstark@delta.edu")
            'body.To.Add("ngaeder@delta.edu")
            body.To.Add("richardzeien@delta.edu")
            'body.To.Add("richardmince@delta.edu")
            body.To.Add("signup_errors@delta.edu")

            body.Subject = "Report From Sign Up"

            body.IsBodyHtml = True
            body.Body = Message

            smtpClient.Send(body)

        Catch ex As Exception

        End Try



    End Sub

End Class
