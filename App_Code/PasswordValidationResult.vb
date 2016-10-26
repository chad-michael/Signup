Imports Microsoft.VisualBasic

Public Class PasswordValidationResult

    Private _resultMessage As String
    Public Property ResultMessage() As String
        Get
            Return _resultMessage
        End Get
        Set(ByVal value As String)
            _resultMessage = value
        End Set
    End Property

    Private _passwordIsValid As Boolean
    Public Property PasswordIsValid() As Boolean
        Get
            Return _passwordIsValid
        End Get
        Set(ByVal value As Boolean)
            _passwordIsValid = value
        End Set
    End Property

    Public Sub New(ByVal result As String, ByVal isValid As Boolean)
        Me._passwordIsValid = isValid
        Me._resultMessage = result
    End Sub


End Class
