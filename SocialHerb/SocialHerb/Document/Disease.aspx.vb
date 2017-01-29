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

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        hpDisease.NavigateUrl = "~\Detail\CreateDisease.aspx"

        'gv_DiseaseShow.SearchPanelFilter = "รค"


    End Sub

End Class