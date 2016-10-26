Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration

Namespace Stark.DAL
    Public Class DBAccess
        Private cmd As IDbCommand = New SqlCommand()
        Private strConnectionString As String = ""
        Private handleErrors As Boolean = False
        Private strLastError As String = ""

        Public Sub New()
            Dim objConnectionStringSettings As ConnectionStringSettings = ConfigurationManager.ConnectionStrings("DeltaMasterCS")
            strConnectionString = objConnectionStringSettings.ConnectionString
            Dim cnn As New SqlConnection()
            cnn.ConnectionString = strConnectionString
            cmd.Connection = cnn
            cmd.CommandType = CommandType.StoredProcedure
        End Sub

        Public Property CommandType() As CommandType
            Get
                Return cmd.CommandType
            End Get
            Set(ByVal value As CommandType)
                cmd.CommandType = value
            End Set
        End Property


        Public Function ExecuteReader() As IDataReader
            Dim reader As IDataReader = Nothing
            Try
                If cmd.Connection.State = ConnectionState.Closed Then
                    Me.Open()
                End If
                reader = cmd.ExecuteReader(CommandBehavior.CloseConnection)
            Catch ex As Exception
                If handleErrors Then
                    strLastError = ex.Message
                Else
                    Throw
                End If
            End Try
            Return reader
        End Function

        Public Function ExecuteReader(ByVal commandtext As String) As IDataReader
            Dim reader As IDataReader = Nothing
            Try
                cmd.CommandText = commandtext
                reader = Me.ExecuteReader()
            Catch ex As Exception
                If (handleErrors) Then
                    strLastError = ex.Message
                Else
                    Throw
                End If
            End Try
            Return reader
        End Function

        Public Function ExecuteScalar() As Object
            Dim obj As Object = Nothing
            Try
                If cmd.Connection.State = ConnectionState.Closed Then
                    Me.Open()
                End If
                obj = cmd.ExecuteScalar()
            Catch ex As Exception
                If handleErrors Then
                    strLastError = ex.Message
                Else
                    Throw
                End If
            End Try
            Return obj
        End Function
        Public Function ExecuteScalar(ByVal commandtext As String) As Object
            Dim obj As Object = Nothing
            Try
                cmd.CommandText = commandtext
                obj = Me.ExecuteScalar()
            Catch ex As Exception
                If (handleErrors) Then
                    strLastError = ex.Message
                Else
                    Throw
                End If
            End Try
            Return obj
        End Function

        Public Function ExecuteNonQuery() As Integer
            Dim i As Integer = -1
            Try
                If cmd.Connection.State = ConnectionState.Closed Then
                    Me.Open()
                End If
                i = cmd.ExecuteNonQuery()
            Catch ex As Exception
                If handleErrors Then
                    strLastError = ex.Message
                Else
                    Throw
                End If
            End Try
            Return i
        End Function



        Public Function ExecuteNonQuery(ByVal commandtext As String) As Integer
            Dim i As Integer = -1
            Try
                cmd.CommandText = commandtext
                i = Me.ExecuteNonQuery()
            Catch ex As Exception
                If handleErrors Then
                    strLastError = ex.Message
                Else
                    Throw
                End If
            End Try
            Return i
        End Function
        Public Function ExecuteDataSet() As DataSet
            Dim da As SqlDataAdapter = Nothing
            Dim ds As DataSet = Nothing
            Try
                If cmd.Connection.State = ConnectionState.Closed Then
                    Me.Open()
                End If
                da = New SqlDataAdapter()
                da.SelectCommand = CType(cmd, SqlCommand)
                ds = New DataSet()
                da.Fill(ds)
            Catch ex As Exception
                If (handleErrors) Then
                    strLastError = ex.Message
                Else
                    Throw
                End If
            End Try
            Return ds
        End Function
        Public Function ExecuteDataSet(ByVal commandtext As String) As DataSet
            Dim ds As DataSet = Nothing
            Try
                cmd.CommandText = commandtext
                ds = Me.ExecuteDataSet()
            Catch ex As Exception
                If handleErrors Then
                    strLastError = ex.Message
                Else
                    Throw
                End If
            End Try
            Return ds
        End Function

        Public Property CommandTimeout() As Integer
            Get
                Return cmd.CommandTimeout
            End Get
            Set(ByVal value As Integer)
                cmd.CommandTimeout = value
            End Set
        End Property

        Public Property Connection() As IDbConnection
            Get
                Return cmd.Connection
            End Get
            Set(ByVal value As IDbConnection)
                cmd.Connection = value
            End Set
        End Property

        Public Property CommandText() As String
            Get
                Return cmd.CommandText
            End Get
            Set(ByVal value As String)
                cmd.CommandText = value
                cmd.Parameters.Clear()
            End Set
        End Property

        Public ReadOnly Property Parameters() As IDataParameterCollection
            Get
                Return cmd.Parameters
            End Get
        End Property

        Public Property Transaction() As IDbTransaction
            Get
                Return cmd.Transaction
            End Get
            Set(ByVal value As IDbTransaction)
                cmd.Transaction = value
            End Set
        End Property

        Public ReadOnly Property command As SqlCommand
            Get
                Return cmd
            End Get
        End Property

        Public Sub AddParameter(ByVal paramname As String, ByVal paramvalue As Object)
            Dim param As SqlParameter = New SqlParameter(paramname, paramvalue)
            cmd.Parameters.Add(param)
        End Sub

        Public Sub AddParameter(ByRef param As IDataParameter)
            cmd.Parameters.Add(param)
        End Sub

        Public Function BeginTransaction() As IDbTransaction
            Dim tran As IDbTransaction = cmd.Connection.BeginTransaction()
            cmd.Transaction = tran
            Return tran
        End Function

        Public Sub CommitTransaction()
            cmd.Transaction.Commit()
        End Sub

        Public Sub RollbackTransaction()
            cmd.Transaction.Rollback()
        End Sub

        Public ReadOnly Property State() As System.Data.ConnectionState
            Get
                Return cmd.Connection.State
            End Get
        End Property

        Public Property ConnectionString() As String
            Get
                Return strConnectionString
            End Get
            Set(ByVal value As String)
                strConnectionString = value
            End Set
        End Property

        Private Sub Open()
            cmd.Connection.Open()
        End Sub

        Private Sub Close()
            cmd.Connection.Close()
        End Sub

        Public Property HandleExceptions() As Boolean
            Get
                Return handleErrors
            End Get
            Set(ByVal value As Boolean)
                handleErrors = value
            End Set
        End Property

        Public ReadOnly Property LastError() As String
            Get
                Return strLastError
            End Get
        End Property

        Public Sub Dispose()
            cmd.Dispose()
        End Sub

    End Class
End Namespace