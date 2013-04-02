Imports System.Data.SqlClient

Public Class Approval
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Dim connectionString As String = "Data Source=SIMON;Initial Catalog=tygarcia;Persist Security Info=True;User ID=tygarcia;Password=tygarcia"
    Dim orgName As String
    Protected Sub FormView1_PageIndexChanging(sender As Object, e As System.Web.UI.WebControls.FormViewPageEventArgs) Handles FormView1.PageIndexChanging
        Using connection As New SqlConnection(connectionString)

            Dim sqlCommand As New SqlCommand("getApplication", connection)
            sqlCommand.CommandType = CommandType.StoredProcedure
            sqlCommand.Parameters.AddWithValue("@Name", orgName)
            connection.Open()
            Dim rowsAffected As Integer = sqlCommand.ExecuteNonQuery()

        End Using
    End Sub

    Protected Sub ListBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBox1.SelectedIndexChanged
        orgName = ListBox1.SelectedValue
        FormView1.UpdateItem(True)
    End Sub
End Class