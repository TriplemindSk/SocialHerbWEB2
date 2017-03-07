Imports System.Web.Configuration.Internal
Imports System.Drawing
Imports System.Web.Configuration


Public Class Herb
    Inherits System.Web.UI.Page




    Public Property HerbCode() As String
        Get
            Return ViewState("HerbCode")
        End Get
        Set(ByVal value As String)
            ViewState("HerbCode") = value
        End Set
    End Property

    Public ReadOnly Property UploadDirectory() As String
        Get
            Return WebConfigurationManager.AppSettings("HerbImageUploadFolder")
        End Get

    End Property



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        hpHerb.NavigateUrl = "~\Detail\CreateHerb.aspx"
        Dim RequestHerbID = Request.QueryString("herbID")

    End Sub

    Protected Sub ListItem_Command(ByVal sender As Object, ByVal e As CommandEventArgs)
        Select Case e.CommandName
            Case "OpenCreateHerb"
                'Session("IsEditing") = True
                Response.Redirect("~\Detail\CreateHerb.aspx?herbID=" & e.CommandArgument)
        End Select
    End Sub

    Private Sub gv_HerbShow_CustomCallback(sender As Object, e As DevExpress.Web.ASPxGridViewCustomCallbackEventArgs) Handles gv_HerbShow.CustomCallback
        gv_HerbShow.DataBind()
    End Sub
End Class