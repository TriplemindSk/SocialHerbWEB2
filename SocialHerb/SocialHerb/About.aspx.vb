Imports System.Data
Imports System.Data.DataTable
Imports System.Data.SqlClient
Imports DevExpress.Web
Imports System.IO
Imports System.Web.Configuration
Imports System.Drawing

Public Class About
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Public Function GetNextAdminid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From adid In ctx.Admins Select CType(adid.adminID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function

    Public Sub AddData()

        Dim getAdminid As Integer = GetNextAdminid()

        Try
            Dim admin As New Admin
            With admin
                .adminID = getAdminid
                .usernameAd = txtUser.Text
                .passwordAd = txtPass.Text

            End With

            Using ctx As New SocialHerbDataContext
                ctx.Admins.InsertOnSubmit(admin)
                ctx.SubmitChanges()
            End Using


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        lblErrorEdit.Text = "Record insert Complete"



    End Sub

    Private Sub btnUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUpdate.Click
        If txtPass.Text = txtRe.Text Then

            AddData()

        Else
            lblErrorEdit.Text = "Confirm Password is not match with Password!!! Please Confirm Password again "
        End If


    End Sub
End Class