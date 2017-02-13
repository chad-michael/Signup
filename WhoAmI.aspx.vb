Imports Stark.SignUp.AD
Imports Stark.BOL.Validate
Partial Class WhoAmI
    Inherits System.Web.UI.Page
    Protected catalogofDate As New Stark.SignUp.Utilities.DateHandler

    'Protected retVal As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

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
            Me.inputBDMonth.Attributes.Add("onchange", "javascript:setdays()")
        End If
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Dim dtBirthDate As Date = New Date(Me.inputBDYear.SelectedValue, Me.inputBDMonth.SelectedValue, Me.inputBDDay.SelectedValue)
        Dim userInfo As New Stark.BOL.Validate
        userInfo.DeltaID = Me.inputTxtDeltaID.Text

        userInfo.SSN = inputTxtSSN.Text
        userInfo.BirthDate = dtBirthDate.Date.ToShortDateString
        userInfo.dtBirthDate = dtBirthDate

        'Make sure the user is in the ERP Table
        'If the are valid, the userInfo.IsValid is set to true
        userInfo = DoCheckIsValid(userInfo)

        If userInfo.IsValid Then
            Success.Visible = True
            lblUserName.Text = userInfo.UserID
            Me.PanelNoSuccess.Visible = False
        Else
            Success.Visible = False
            Me.PanelNoSuccess.Visible = True
            Me.NoAuthentication.Visible = True

        End If

    End Sub
End Class