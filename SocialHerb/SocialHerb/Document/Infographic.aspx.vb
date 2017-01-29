Public Class Infographic
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'If (Not IsPostBack) Then
        '    gv_InfoShow.SearchPanelFilter = "ก"
        'End If
        hpInfo.NavigateUrl = "~\Detail\CreateInfo.aspx"

    End Sub

End Class