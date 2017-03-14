Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Drawing
Imports System.Drawing.Imaging
Imports System.IO
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Linq


Public Class Disease
    Inherits System.Web.UI.Page


    Public Property DiseaseCode() As String
        Get
            Return ViewState("DiseaseCode")
        End Get
        Set(ByVal value As String)
            ViewState("DiseaseCode") = value
        End Set
    End Property


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        hpDisease.NavigateUrl = "~\Detail\CreateDisease.aspx"

        'gv_DiseaseShow.SearchPanelFilter = "รค"
        Dim RequestDiseaseID = Request.QueryString("diseaseID")

    End Sub


    Private Sub gv_DiseaseShow_CustomCallback(sender As Object, e As DevExpress.Web.ASPxGridViewCustomCallbackEventArgs) Handles gv_DiseaseShow.CustomCallback
        gv_DiseaseShow.DataBind()
    End Sub


    Protected Sub ListItem_Command(ByVal sender As Object, ByVal e As CommandEventArgs)
        Select Case e.CommandName
            Case "OpenCreateDisease"
                'Session("IsEditing") = True
                Response.Redirect("~\Prototype\ProDisease.aspx?diseaseID= " & e.CommandArgument)
        End Select
    End Sub
End Class