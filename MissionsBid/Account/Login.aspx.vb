Imports System.Data.SqlClient

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString("ReturnUrl"))
    End Sub

    Dim connectionstring As String = "Data Source=SIMON;Initial Catalog=tygarcia;Persist Security Info=True;User ID=tygarcia;Password=tygarcia"

    Private Function checkUser(ByVal username As String, ByVal password As String) As Boolean
        Dim check As Integer = 0
        Using connection As New SqlConnection(connectionstring)
            Dim sqlcommand As New SqlCommand("checkPass", connection)
            sqlcommand.Parameters.AddWithValue("@username", username)
            sqlcommand.Parameters.AddWithValue("@pass", password)
            sqlcommand.CommandType = CommandType.StoredProcedure
            connection.Open()
            check = sqlcommand.ExecuteScalar()
            If check > 0 Then
                Return True
            Else
                Return False
            End If
        End Using
    End Function

    Protected Sub Login1_Authenticate(sender As Object, e As System.Web.UI.WebControls.AuthenticateEventArgs) Handles Login1.Authenticate
        If checkUser(Login1.UserName, Login1.Password) Then
            Session("USER-ID") = Login1.UserName
            e.Authenticated = True
            Response.Redirect("~/Default.aspx")
        Else
            e.Authenticated = False
            Response.Redirect("~/Account/Login.aspx")
        End If
    End Sub
End Class