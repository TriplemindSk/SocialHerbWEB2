Imports DevExpress.Web.ASPxGridView
Imports System.Web.Configuration
Imports System.Drawing

Public Class Department
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        hpDepartment.NavigateUrl = "~\Detail\CreateDepartment.aspx"
        Dim RequestDepartmentID = Request.QueryString("ID")
    End Sub

   
    Private Sub gv_DepartmentShow_CustomCallback(sender As Object, e As DevExpress.Web.ASPxGridViewCustomCallbackEventArgs) Handles gv_DepartmentShow.CustomCallback
        gv_DepartmentShow.DataBind()
    End Sub


    Protected Sub ListItem_Command(ByVal sender As Object, ByVal e As CommandEventArgs)
        Select Case e.CommandName
            Case "OpenCreateDepartment"
                'Session("IsEditing") = True
                Response.Redirect("~\Detail\CreateDepartment.aspx?ID= " & e.CommandArgument)
        End Select
    End Sub
End Class