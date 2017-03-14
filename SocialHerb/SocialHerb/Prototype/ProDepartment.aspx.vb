Imports System.Windows.Forms

Public Class ProDepartment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Public Sub ExitApplication()
        ' Display a message box asking users if they 
        ' want to exit the application.
        If MessageBox.Show("Do you want to Delete?", "Social Herb", _
              MessageBoxButtons.YesNo, MessageBoxIcon.Question) _
              = DialogResult.Yes Then
            DeleteData()
        End If
    End Sub


    Private Sub DeleteData()
        txt_DEName.Text = ""
        txt_Address.Text = ""
        txt_Email.Text = ""
        txt_Fax.Text = ""
        txt_Role.Text = ""
        txt_Tel.Text = ""
        txt_Website.Text = ""

    End Sub



    Private Sub btnDelete_Click(sender As Object, e As System.EventArgs) Handles btnDelete.Click
        ExitApplication()
    End Sub
End Class