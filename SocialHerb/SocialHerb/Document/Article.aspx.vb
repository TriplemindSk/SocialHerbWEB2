Imports Microsoft.VisualBasic
Imports System
Imports System.IO
Imports System.Web.UI
Imports DevExpress.Web
Imports System.Web.Configuration.Internal
Imports System.Drawing
Imports System.Web.Configuration


Public Class WebForm1
    Inherits System.Web.UI.Page



    Public Property ArticleCode() As String
        Get
            Return ViewState("ArticleCode")
        End Get
        Set(ByVal value As String)
            ViewState("ArticleCode") = value
        End Set
    End Property

    Public ReadOnly Property UploadDirectory() As String
        Get
            Return WebConfigurationManager.AppSettings("ArticleImageUploadFolder")
        End Get

    End Property

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        hpArticle.NavigateUrl = "~\Detail\CreateArticle.aspx"
        Dim RequestArticleID = Request.QueryString("articleID")

        'gv_ArticleShow.SearchPanelFilter = "รค"

    End Sub


    Protected Sub ListItem_Command(ByVal sender As Object, ByVal e As CommandEventArgs)
        Select Case e.CommandName
            Case "OpenCreateArticle"
                'Session("IsEditing") = True
                Response.Redirect("~\Detail\CreateArticle.aspx?articleID=" & e.CommandArgument)
        End Select
    End Sub



    Private Sub gv_ArticleShow_CustomCallback(sender As Object, e As DevExpress.Web.ASPxGridViewCustomCallbackEventArgs) Handles gv_ArticleShow.CustomCallback
        gv_ArticleShow.DataBind()
    End Sub
End Class