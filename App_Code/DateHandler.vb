Imports Microsoft.VisualBasic
Imports System.Data
Namespace Stark.SignUp.Utilities

    Public Class DateHandler

        Private _Months As DataTable

        Public Property Months() As DataTable
            Get
                Return _Months
            End Get
            Set(ByVal value As DataTable)
                _Months = value
            End Set
        End Property

        Public Sub New()
            Dim month As String
            Dim TempMonths As New DataTable
            Dim MonthsCol As New System.Collections.Specialized.StringCollection
            MonthsCol.Add("Jan")
            MonthsCol.Add("Feb")
            MonthsCol.Add("Mar")
            MonthsCol.Add("Apr")
            MonthsCol.Add("May")
            MonthsCol.Add("Jun")
            MonthsCol.Add("Jul")
            MonthsCol.Add("Aug")
            MonthsCol.Add("Sep")
            MonthsCol.Add("Oct")
            MonthsCol.Add("Nov")
            MonthsCol.Add("Dec")

            Dim IDcol As New System.Data.DataColumn
            IDcol.ColumnName = "IDCol"
            Dim MonthName As New System.Data.DataColumn
            MonthName.ColumnName = "Month"
            TempMonths.Columns.Add(IDcol)
            TempMonths.Columns.Add(MonthName)

            Dim row As System.Data.DataRow

            Dim index As Integer = 1
            For Each month In MonthsCol

                row = TempMonths.NewRow
                row.Item("IDCol") = index
                row.Item("Month") = month
                index = index + 1
                TempMonths.Rows.Add(row)

            Next
            Months = TempMonths

        End Sub

        Public Function GetDays(ByVal month As Integer) As String
            Dim CalendarToday As New Date(System.DateTime.Today.Ticks)

            Dim DaysInMonth As Integer = Date.DaysInMonth(CalendarToday.Year, month)
            Return DaysInMonth.ToString

        End Function

    End Class
End Namespace