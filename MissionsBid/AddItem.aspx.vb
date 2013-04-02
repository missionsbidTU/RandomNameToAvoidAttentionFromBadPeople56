Imports System.Data.SqlClient

Public Class AddItem
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked Then
            Label4.Visible = True
            TextBox4.Visible = True
        Else
            Label4.Visible = False
            TextBox4.Visible = False
        End If
    End Sub
    Dim connectionstring As String = "Data Source=SIMON;Initial Catalog=tygarcia;Persist Security Info=True;User ID=tygarcia;Password=tygarcia"
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Session("USER-ID") IsNot Nothing Then
            Using connection As New SqlConnection(connectionstring)
                Dim sqlCommand As New SqlCommand("ListItem", connection)
                sqlCommand.CommandType = CommandType.StoredProcedure
                sqlCommand.Parameters.AddWithValue("@Name", TextBox1.Text)
                sqlCommand.Parameters.AddWithValue("@description", TextBox2.Text)
                sqlCommand.Parameters.AddWithValue("@price", TextBox3.Text)
                sqlCommand.Parameters.AddWithValue("@Username", Session("USER-ID").ToString)
                If CheckBox1.Checked Then
                    sqlCommand.Parameters.AddWithValue("@buyout", TextBox4.Text)
                Else
                    sqlCommand.Parameters.AddWithValue("@buyout", Nothing)
                End If
                connection.Open()
                Dim rowsAffected As Integer = sqlCommand.ExecuteNonQuery()
                Debug.Print(rowsAffected)
                Response.Redirect("ItemListed.aspx")
            End Using
        Else
            Response.Redirect("MustBeLogged.aspx")
        End If

    End Sub
End Class