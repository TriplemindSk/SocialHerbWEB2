Public Class Food
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        hpFood.NavigateUrl = "~\Detail\CreateFood.aspx"
    End Sub

End Class