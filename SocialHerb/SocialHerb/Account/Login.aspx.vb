Imports System.Web.Security
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString("ReturnUrl"))


        Dim Username As String = "Triplemind"
        Dim Password As String = "mamind22"
        'If User IsNot Nothing Then
        '    LoginUser.UserName = Username

        '    'Else
        '    '    LoginUser.FailureText.Equals = True
        'End If
    End Sub

   

    Private Sub LoginButton_Click(sender As Object, e As System.EventArgs) Handles LoginButton.Click
        Response.Redirect("~/Default.aspx")
    End Sub
End Class