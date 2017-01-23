Imports Microsoft.VisualBasic
Imports System
Imports System.IO
Imports System.Web.UI
Imports DevExpress.Web


Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        hpArticle.NavigateUrl = "~\Detail\CreateArticle.aspx"
    End Sub

End Class