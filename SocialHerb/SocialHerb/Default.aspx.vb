Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Drawing
Imports System.Drawing.Imaging
Imports System.IO
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Linq



Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    End Sub


    'Protected Sub list_Command(ByVal sender As Object, ByVal e As CommandEventArgs)
    '    Select Case e.CommandName
    '        Case "OpenCreateDisease"
    '            Response.Redirect("../Detail/CreateDisease.aspx?DiseaseID=" & e.CommandArgument)
    '            'Case "OpenUploadProposalFile"
    '            '    Response.Redirect("../Document/ProposalUpload.aspx?pId=" & e.CommandArgument)
    '            'Case "OpenUploadGeneralFile"
    '            '    Response.Redirect("../Document/GeneralUpload.aspx?gId=" & e.CommandArgument)
    '            'Case "PrintQuotation"
    '            '    Response.Redirect("../Report/Report.aspx?quotaId=" & e.CommandArgument)
    '    End Select
    'End Sub

End Class