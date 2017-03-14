Imports System.Windows.Forms

Public Class ProHerb
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
        txt_Branch.Text = ""
        txt_Flower.Text = ""
        txt_Fruit.Text = ""
        txt_HerbImgid.Text = ""
        txt_Howto.Text = ""
        txt_leaf.Text = ""
        txt_LinkRe.Text = ""
        txt_OtherName.Text = ""
        txt_Properties.Text = ""
        txt_RefName.Text = ""
        txt_RefRe.Text = ""
        txt_Root.Text = ""
        txt_Seed.Text = ""
        txt_trunk.Text = ""
        txt_warnnig.Text = ""
        txtName.Text = ""
        imgName.Visible = False
        imgLeaf.Visible = False
        imgFlower.Visible = False
        imgInfo.Visible = False
        Image1.Visible = False
        Image2.Visible = False
    End Sub

    Private Sub btnDelete_Click(sender As Object, e As System.EventArgs) Handles btnDelete.Click
        ExitApplication()
    End Sub
End Class