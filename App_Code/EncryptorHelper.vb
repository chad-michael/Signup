Imports Microsoft.VisualBasic

Namespace SunGard.Web.Security

    Public Class EncryptorHelper
        Public Shared Function GetEncryptor() As SunGard.Security.Encryptor

            Dim key() As Byte = {154, 85, 23, 188, 178, 31, 232, 224, 55, 143, 150, 154, 86, 213, 110, 105, 175, 2, 150, 208, 188, 94, 33, 92}
            Dim iv() As Byte = {8, 85, 55, 107, 4, 178, 34, 154}

            Dim xCryptor As New SunGard.Security.Encryptor(key, iv)
            Return xCryptor

        End Function

    End Class
End Namespace