Imports System.Web.Configuration.Internal
Imports System.Drawing
Imports System.Web.Configuration

Public Class Infographic
    Inherits System.Web.UI.Page


    Public Property InfoCode() As String
        Get
            Return ViewState("InfoCode")
        End Get
        Set(ByVal value As String)
            ViewState("InfoCode") = value
        End Set
    End Property

    Public ReadOnly Property UploadDirectory() As String
        Get
            Return WebConfigurationManager.AppSettings("InfoImageUploadFolder")
        End Get

    End Property


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If (Not IsPostBack) Then
        '    gv_InfoShow.SearchPanelFilter = "ก"
        'End If
        hpInfo.NavigateUrl = "~\Detail\CreateInfo.aspx"
        Dim RequestInfoID = Request.QueryString("infoID")

    End Sub

    Protected Sub ListItem_Command(ByVal sender As Object, ByVal e As CommandEventArgs)
        Select Case e.CommandName
            Case "OpenCreateInfo"
                'Session("IsEditing") = True
                Response.Redirect("~\Prototype\ProInfo.aspx?infoID=" & e.CommandArgument)
        End Select
    End Sub

    Private Sub gv_InfoShow_CustomCallback(sender As Object, e As DevExpress.Web.ASPxGridViewCustomCallbackEventArgs) Handles gv_InfoShow.CustomCallback
        gv_InfoShow.DataBind()
    End Sub
End Class