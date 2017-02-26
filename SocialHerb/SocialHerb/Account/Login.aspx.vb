Imports System.Web.Security
Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Configuration
Imports Bonzen.Utils

Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'RegisterHyperLink.NavigateUrl = "Register.aspx?ReturnUrl=" + HttpUtility.UrlEncode(Request.QueryString("ReturnUrl"))

    End Sub

    Private Sub LoginButton_Click(sender As Object, e As System.EventArgs) Handles LoginButton.Click

        Dim Admin As New Admin
        Dim Username As String = ""
        Dim Password As String = ""
        Username = LoginUser.UserName
        Password = LoginUser.Password
        Authenticate(Username, Password)
        GetUserByUsername(Username)

        If User IsNot Nothing Then
            'Session("UserFullname") = Admin.usernameAd
            Session("Username") = Admin.usernameAd
            Response.Redirect("~/Default.aspx")
            'FormsAuthentication.RedirectFromLoginPage(Username, False)
        Else
            'Login.CreateHtmlTextWriterFromType("ไม่สามารถเข้าสู่ระบบได้ กรุณาลองใหม่อีกครั้ง", String.Equals)

        End If
    End Sub


    Public Function Authenticate(ByVal username As String, ByVal password As String) As Admin
        Dim Admin As New Admin
        Dim dt As New DataTable
        'Using ctx = New SocialHerbDataContext
        '    Dim userPassw As String
        '    Dim sql = (From u In ctx.Admins Where u.usernameAd.ToLower = username.ToLower).SingleOrDefault
        '    String.IsNullOrWhiteSpace ถ้าตัวแปรนี้เป็นค่าว่าง
        '    If String.IsNullOrWhiteSpace(sql) Then
        '        Admin = (From u In ctx.Admins Where u.usernameAd.ToLower = username.ToLower _
        '                And u.passwordAd = password).SingleOrDefault
        '    Else
        '        userPassw = CryptoUtils.ComputePasswordHash(password, sql)
        '        Admin = (From u In ctx.Admins Where u.usernameAd.ToLower = username.ToLower _
        '                And u.passwordAd = userPassw).SingleOrDefault
        '    End If
        'End Using

        Return Admin
    End Function


    Public Function GetUserByUsername(ByVal username As String) As Admin
        Dim Admin As New Admin
        Using ctx = New SocialHerbDataContext
            Admin = (From u In ctx.Admins Where u.usernameAd.ToLower = username.ToLower).SingleOrDefault
        End Using
        Return Admin
    End Function


End Class