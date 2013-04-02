Public Class Default2
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("USER-ID") IsNot Nothing Then
            Label1.Text = "Welcome back " + Session("USER-ID")
            LinkButton1.Text = "Log out"
            Label1.Visible = True

        Else
            LinkButton1.Text = "Log in"
            Label1.Visible = False

        End If
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        If LinkButton1.Text.Equals("Log out") Then
            Session("USER-ID") = Nothing
            Response.Redirect("~/Default.aspx")
        ElseIf LinkButton1.Text.Equals("Log in") Then
            Response.Redirect("~/Account/Login.aspx")
        End If
    End Sub
End Class