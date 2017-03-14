Imports Microsoft.VisualBasic
Imports System
Imports System.IO
Imports System.Web.UI
Imports DevExpress.Web
Imports System.Web.Configuration.Internal
Imports System.Drawing
Imports System.Web.Configuration



Public Class Food
    Inherits System.Web.UI.Page


    Public Property FoodCode() As String
        Get
            Return ViewState("FoodCode")
        End Get
        Set(ByVal value As String)
            ViewState("FoodCode") = value
        End Set
    End Property

    Public ReadOnly Property UploadDirectory() As String
        Get
            Return WebConfigurationManager.AppSettings("FoodImageUploadFolder")
        End Get

    End Property



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        hpFood.NavigateUrl = "~\Detail\CreateFood.aspx"
        Dim RequestFoodID = Request.QueryString("foodID")

    End Sub


    Protected Sub ListItem_Command(ByVal sender As Object, ByVal e As CommandEventArgs)
        Select Case e.CommandName
            Case "OpenCreateFood"
                'Session("IsEditing") = True
                Response.Redirect("~\Prototype\ProFood.aspx?foodID=" & e.CommandArgument)
        End Select
    End Sub



    Private Sub gv_FoodShow_CustomCallback(sender As Object, e As DevExpress.Web.ASPxGridViewCustomCallbackEventArgs) Handles gv_FoodShow.CustomCallback
        gv_FoodShow.DataBind()
    End Sub
End Class