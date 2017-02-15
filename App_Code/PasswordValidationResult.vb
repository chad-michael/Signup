Imports Microsoft.VisualBasic

'''<summary>Supports all classes in the .NET Framework class hierarchy and provides low-level services to derived classes. This is the ultimate base class of all classes in the .NET Framework; it is the root of the type hierarchy.To browse the .NET Framework source code for this type, see the Reference Source.</summary>
Public Class PasswordValidationResult
    Implements IPasswordValidationResult
    Public Property ResultMessage As String Implements IPasswordValidationResult.ResultMessage
    Public Property PasswordIsValid As Boolean Implements IPasswordValidationResult.PasswordIsValid

    Public Sub New(ByVal result As String, ByVal isValid As Boolean)
        PasswordIsValid = isValid
        ResultMessage = "<p>" + result + "</p>"
    End Sub
End Class