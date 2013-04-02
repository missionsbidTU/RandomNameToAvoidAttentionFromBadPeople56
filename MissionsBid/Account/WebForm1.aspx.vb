Imports System.Data.SqlClient

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Dim connectionstring As String = "Data Source=SIMON;Initial Catalog=tygarcia;Persist Security Info=True;User ID=tygarcia;Password=tygarcia"

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim check As Integer = 0
        Dim username As String = userBox.Text
        username = "'" + username + "'"
        Dim pass As String = passBox.Text
        pass = "'" + pass + "'"
        Using connection As New SqlConnection(connectionstring)
            Dim test As String = "SELECT * FROM Users WHERE Username = " + username + " AND Password = " + pass
            Dim sqlCommand As New SqlCommand(test, connection)
            sqlCommand.CommandType = CommandType.Text
            connection.Open()
            check = sqlCommand.ExecuteScalar()

            If check > 0 Then
                Debug.Print("User and pass were good.")
                'Dim sqlCommand As New SqlCommand("SELECT
                Server.Transfer("~/Default.aspx")
            Else
                Debug.Print("Wrong info.")
            End If
        End Using
    End Sub
End Class