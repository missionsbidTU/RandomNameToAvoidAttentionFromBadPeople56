Imports System.Data.SqlClient

Public Class Register2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim first_name, last_name, username, password, address, email, Type As String
        first_name = firstnameTxtBox.Text
        last_name = lastnameTxtBox.Text
        username = usernameTxtBox.Text
        password = passwordTxtBox.Text
        address = addressTxtBox.Text
        email = emailTxtBox.Text
        Type = acctType.SelectedItem.Text
        Dim connectionString As String = "Data Source=SIMON;Initial Catalog=tygarcia;Persist Security Info=True;User ID=tygarcia;Password=tygarcia"
        If (acctType.SelectedItem.Text.Contains("Org") = False) Then
            Using connection As New SqlConnection(connectionString)

                Dim sqlCommand As New SqlCommand("AddUser", connection)
                sqlCommand.CommandType = CommandType.StoredProcedure
                sqlCommand.Parameters.AddWithValue("@first_name", first_name)
                sqlCommand.Parameters.AddWithValue("@last_name", last_name)
                sqlCommand.Parameters.AddWithValue("@username", username)
                sqlCommand.Parameters.AddWithValue("@password", password)
                sqlCommand.Parameters.AddWithValue("@address", address)
                sqlCommand.Parameters.AddWithValue("email", email)
                sqlCommand.Parameters.AddWithValue("@Type", Type)
                connection.Open()
                Dim rowsAffected As Integer = sqlCommand.ExecuteNonQuery()
                Debug.Print(String.Format("Affected {0} row(s)", rowsAffected))
            End Using
        Else
            Server.Transfer("~/Account/OrgReg.aspx")
        End If
    End Sub

    Protected Sub acctType_SelectedIndexChanged(sender As Object, e As EventArgs) Handles acctType.SelectedIndexChanged

        If acctType.SelectedItem.Text.Contains("Org") Then

            Server.Transfer("~/Account/OrgReg.aspx")
        End If
    End Sub
End Class