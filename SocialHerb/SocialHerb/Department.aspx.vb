Public Class Department
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        hpDepartment.NavigateUrl = "~\Detail\CreateDepartment.aspx"
    End Sub

End Class