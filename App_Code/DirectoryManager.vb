Imports Microsoft.VisualBasic
Imports System.DirectoryServices
Imports Stark.SignUp.AD

Namespace Stark.SignUp.AD

    Public Class Manager
        Private Shared Function GetPassword() As String
            Return System.Configuration.ConfigurationManager.AppSettings.Item("serviceAccountPassword")
        End Function

        Private Shared Function GetUsername() As String
            Return System.Configuration.ConfigurationManager.AppSettings.Item("serviceAccountUsername")
        End Function



        Public Shared Function GetThisUser(ByVal UserName As String) As DirectoryEntry
            Dim de As DirectoryEntry
            Dim UserPath As String = GetUserPath(UserName)

            de = New DirectoryEntry(UserPath, GetUsername(), GetPassword(), AuthenticationTypes.Secure)
            Return de


        End Function

        ''' <summary>
        ''' Provides Methods to Get a users AD Path based on their user name 
        ''' </summary>
        ''' <param name="UserName">The username of the user</param>
        ''' <returns>Fully Qualified AD path</returns>
        ''' <remarks>Must use ADHelper in conjunction with this to get a users login id based on their username</remarks>
        Public Shared Function GetUserPath(ByVal UserName As String) As String

            Dim de As DirectoryEntry = GetDirectoryEntry
            Dim deSearch As New DirectorySearcher

            deSearch.SearchRoot = de
            deSearch.Filter = "(&(objectClass=user) (cn=" + UserName + "))"


            Dim AllResults As SearchResultCollection = deSearch.FindAll

            If Not AllResults.Count = 0 Then
                Return AllResults.Item(0).Path
            Else
                Return Nothing
            End If

        End Function



        '''<summary>
        ''' Method used to create an entry to the AD.
        ''' Replace the path, username, and password.
        '''</summary>
        '''<returns>DirectoryEntry</returns>
        Public Shared ReadOnly Property GetDirectoryEntry() As DirectoryEntry
            Get
                Dim de As New DirectoryEntry
                de.Path = "LDAP://dc1/DC=delta,DC=edu"
                de.Username = GetUsername()
                de.Password = GetPassword()
                de.AuthenticationType = AuthenticationTypes.Secure
                Return de
            End Get
        End Property


        '''<summary>
        ''' Method used to create an entry to the AD.
        ''' Replace the path, username, and password.
        '''</summary>
        ''' <param name="path">Path as String</param>
        '''<returns>DirectoryEntry</returns>
        Public Shared ReadOnly Property GetDirectoryEntry(ByVal path As String) As DirectoryEntry
            Get

                Dim de As New DirectoryEntry
                de.Path = path
                de.Username = GetUsername()
                de.Password = GetPassword()
                Return de
            End Get
        End Property

        '''<summary>
        '''Method to validate if a user exists in the AD.
        '''</summary>
        '''<param name="UserName"></param>
        '''<returns></returns>
        Public Shared ReadOnly Property UserExists(ByVal UserName As String) As Boolean
            Get
                Dim de As DirectoryEntry = Manager.GetDirectoryEntry
                Dim deSearch As DirectorySearcher = New DirectorySearcher
                deSearch.SearchRoot = de
                deSearch.Filter = "(&(objectClass=user) (cn=" & UserName & "))"
                Dim result As SearchResultCollection = deSearch.FindAll
                If (result.Count = 0) Then
                    Return False
                Else
                    Return True
                End If

            End Get
        End Property

        ''' <summary>
        ''' Not Used in SignUp
        ''' </summary>
        ''' <param name="UserName"></param>
        ''' <value></value>
        ''' <returns></returns>
        ''' <remarks></remarks>
        Public Shared ReadOnly Property GetSearchResult(ByVal UserName As String) As SearchResultCollection
            Get
                Dim de As DirectoryEntry = Manager.GetDirectoryEntry
                Dim deSearch As DirectorySearcher = New DirectorySearcher
                deSearch.SearchRoot = de
                deSearch.Filter = "(&(objectClass=user) (cn=" & UserName & "))"
                Dim result As SearchResultCollection = deSearch.FindAll
                If (result.Count = 0) Then
                    Return Nothing
                Else
                    Return result
                End If
            End Get
        End Property


        ''' <summary>
        ''' Helper method that sets properties for AD users.
        ''' </summary>
        ''' <param name="de"></param>
        ''' <param name="PropertyName"></param>
        ''' <param name="PropertyValue"></param>
        Public Shared Sub SetProperty(ByVal de As DirectoryEntry, ByVal PropertyName As String, ByVal PropertyValue As String)
            If Not PropertyValue Is Nothing Then
                If (de.Properties.Contains(PropertyName)) Then
                    de.Properties(PropertyName)(0) = PropertyValue

                Else
                    de.Properties(PropertyName).Add(PropertyValue)
                End If
            End If
        End Sub

        ''' <summary>
        ''' Method to set a user's password
        ''' </summary>
        '''<param name="path"></param>
        Public Shared Function SetPassword(ByVal path As String, ByVal theUser As Stark.BOL.Validate) As Boolean
            Dim usr As DirectoryEntry = New DirectoryEntry
            usr.Username = GetUsername()
            usr.Password = GetPassword()
            usr.Path = path
            usr.AuthenticationType = AuthenticationTypes.Secure
            Dim password As String
            password = theUser.Password
            Try
                usr.Invoke("SetPassword", password)
                usr.CommitChanges()
            Catch ex As Exception
                Return False
            End Try

            usr.Close()
            Return True
        End Function



        ''' <summary>
        ''' Method to enable a user account in the AD.
        '''</summary>
        ''' <param name="de"></param>
        Public Shared Sub EnableAccount(ByVal de As DirectoryEntry)
            'UF_DONT_EXPIRE_PASSWD 0x10000
            Dim exp As Integer = CType(de.Properties("userAccountControl").Value, Integer)
            de.Properties("userAccountControl").Value = "66048" '| 0x0001
            de.CommitChanges()
            'UF_ACCOUNTDISABLE 0x0002
            'Dim val As Integer = CType(de.Properties("userAccountControl").Value, Integer)
            'de.Properties("userAccountControl").Value = val '& ~0x0002
            'de.CommitChanges()
        End Sub

        '''<summary>
        ''' Method that creates a new user account
        '''</summary>
        ''' <param name="IDNumber"></param>
        ''' <param name="name"></param>
        ''' <param name="login"></param>
        ''' <param name="email"></param>
        ''' <param name="group"></param> 
        Public Shared Sub CreateNewUser(ByVal IDNumber As String, ByVal name As String, ByVal login As String, ByVal email As String, ByVal group As String)

            ' Dim catalog As New Catalog()
            Dim de As DirectoryEntry = Manager.GetDirectoryEntry

            '1. Create User Account
            Dim users As DirectoryEntries = de.Children
            Dim newuser As DirectoryEntry = users.Add("CN=" & login, "user")

            '2. Set Properties
            SetProperty(newuser, "employeeID", IDNumber)
            SetProperty(newuser, "givenname", name)
            SetProperty(newuser, "SAMAccountName", login)
            SetProperty(newuser, "userPrincipalName", login)
            SetProperty(newuser, "mail", email)
            newuser.CommitChanges()

            '3. Set Password

            'SetPassword(newuser.Path)
            newuser.CommitChanges()

            '4. Enable Account
            Manager.EnableAccount(newuser)

            '5. Add User To Student Group
            Manager.AddUserToGroup(de, newuser, "Student")


            '6. Create Users Email Account



        End Sub


        '''<summary>
        '''Method that formats a date in the required format
        ''' needed (AAAAMMDDMMSSSS.0Z) to compare dates in AD.
        ''' </summary>
        ''' <param name="thisdate"></param>
        ''' <returns>Date in valid format for AD</returns>
        Public Shared Function ToADDateString(ByVal thisdate As DateTime) As String
            Dim year As String = thisdate.Year.ToString()
            Dim month As Integer = thisdate.Month
            Dim day As Integer = thisdate.Day

            Dim sb As StringBuilder = New StringBuilder()
            sb.Append(year)
            If month < 10 Then
                sb.Append("0")
            End If
            sb.Append(month.ToString())
            If day < 10 Then
                sb.Append("0")
            End If
            sb.Append(day.ToString())
            sb.Append("000000.0Z")
            Return sb.ToString()
        End Function


        ''' <summary>
        ''' Method that returns a DataTable with a list of users modified from a given date.
        ''' </summary>
        '''<param name="fromdate"></param>
        Public Shared Function GetModifiedUsers(ByVal fromdate As DateTime) As Data.DataTable
            Dim dt As Data.DataTable = New Data.DataTable()
            dt.Columns.Add("EmployeeID")
            dt.Columns.Add("Name")
            dt.Columns.Add("Email")
            dt.Columns.Add("AccountType")
            dt.Columns.Add("Path")

            Dim de As DirectoryEntry = GetDirectoryEntry()
            Dim ds As DirectorySearcher = New DirectorySearcher(de)

            Dim filter As StringBuilder = New StringBuilder()
            filter.Append("(&(objectCategory=Person)(objectClass=user)(whenChanged>=")
            filter.Append(Manager.ToADDateString(fromdate))
            filter.Append("))")

            ds.Filter = filter.ToString()
            ds.SearchScope = SearchScope.Subtree
            Dim results As SearchResultCollection = ds.FindAll()

            Dim result As SearchResult
            For Each result In results


                Try
                    Dim dr As Data.DataRow = dt.NewRow()
                    Dim dey As DirectoryEntry = Manager.GetDirectoryEntry(result.Path)
                    dr("EmployeeID") = dey.Properties("employeeID").Value
                    dr("Name") = dey.Properties("givenname").Value
                    dr("Email") = dey.Properties("mail").Value
                    dr("AccountType") = dey.Properties("userAccountControl").Value
                    dr("Path") = dey.Path.ToString
                    dt.Rows.Add(dr)
                    dey.Close()
                Catch ex As Exception

                End Try




            Next

            de.Close()
            Return dt
        End Function


        '''<summary>
        ''' Method to add a user to a group</summary>
        ''' 

        Public Shared Sub AddUserToGroup(ByVal de As DirectoryEntry, ByVal deUser As DirectoryEntry, ByVal GroupName As String)
            Dim deSearch As DirectorySearcher = New DirectoryServices.DirectorySearcher

            deSearch.SearchRoot = de
            deSearch.Filter = "(&(objectClass=group) (cn=" & GroupName & "))"

            Dim results As SearchResultCollection = deSearch.FindAll

            Dim isGroupMember As Boolean = False

            If (results.Count > 0) Then
                Dim group As DirectoryEntry = GetDirectoryEntry(results(0).Path)

                Dim members As Object = group.Invoke("Members", Nothing)
                ' Dim member As Object
                Dim member As Object
                For Each member In members.IEnumerable
                    Dim x As DirectoryEntry = New DirectoryEntry(member)
                    If x.Name <> deUser.Name Then
                        isGroupMember = False
                    Else
                        isGroupMember = True
                        Exit For
                    End If
                Next

                If Not isGroupMember Then
                    group.Invoke("Add", New Object() {deUser.Path.ToString})
                End If
                group.Close()

            End If
        End Sub

        Public Shared Sub CreateUserMailBox()
            'CreateCDOEXMailBox()

        End Sub
    End Class
End Namespace