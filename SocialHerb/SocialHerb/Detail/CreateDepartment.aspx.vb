Imports System.Data
Imports System.Data.DataTable
Imports System.Data.SqlClient
Imports DevExpress.Web
Imports System.IO
Imports System.Web.Configuration
Imports System.Drawing
Public Class CreateDepartment
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim RequestDepartmentID = Request.QueryString("ID")

    End Sub


    Public Function GetNextDepartmentid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From dpid In ctx.Contacts Select CType(dpid.ID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function



    Private Sub AddData()

        Dim getDepartmentid As Integer = GetNextDepartmentid()

        Try

            Dim department As New Contact
            With department
                '    .ID = getDepartmentid
                '    .contactName = txtName.Text
                '    .tel = txtDetail.Text
                '    .email = txtRelief.Text
                '    .Address = txtherb.Text
                '    .role =
                '    .website =
                '.date = Now
            End With

            Using ctx As New SocialHerbDataContext
                ctx.Contacts.InsertOnSubmit(department)
                ctx.SubmitChanges()
            End Using

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        ' lblErrorEdit.Text = "Record insert Complete"

    End Sub


    'Private Sub btnUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUpdate.Click

    '    AddData()

    'End Sub

End Class