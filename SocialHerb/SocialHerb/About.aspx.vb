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

    Public Sub AddData()

        Dim admin As SocialHerb.Admin
        Dim strSQL, strConnString As String

        strConnString = WebConfigurationManager.ConnectionStrings("SocialHerb").ConnectionString
        strSQL = "insert into Admin (usernameAd,passwordAd" & _
        ") values ('" & txtUser.Text & "','" & txtPass.Text & "')"

        Try
            Using objConn As New SqlConnection(strConnString)
                objConn.Open()
                Dim objCmd As New SqlCommand(strSQL, objConn)


                txtUser.Text = ""
                txtPass.Text = ""

                objCmd.ExecuteNonQuery()

                objConn.Close()
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