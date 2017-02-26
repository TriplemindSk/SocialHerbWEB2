Imports System.Data
Imports System.Data.DataTable
Imports System.Data.SqlClient
Imports DevExpress.Web
Imports System.IO
Imports System.Web.Configuration
Imports System.Drawing



Public Class CreateDisease
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim RequestDiseaseName = Request.QueryString("diseaseID")


    End Sub
    Public Function GetNextDiseaseid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From did In ctx.Diseases Select CType(did.diseaseID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function


    Private Sub AddData()

        Dim getDiseaseid As Integer = GetNextDiseaseid()
       
        Try

            Dim disease As New Disease
            With disease
                .diseaseID = getDiseaseid
                .diseaseName = txtName.Text
                .Symptom = txtDetail.Text
                .howtoRelief = txtRelief.Text
                .herb = txtherb.Text
                .dateDisease = Now
            End With

            Using ctx As New SocialHerbDataContext
                ctx.Diseases.InsertOnSubmit(disease)
                ctx.SubmitChanges()
            End Using

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        lblErrorEdit.Text = "Record insert Complete"

    End Sub

    Private Function CheckValidateCalculate() As Boolean

        If txtName IsNot Nothing Then
            MsgBox("กรุณากรอกชื่ออาการ/โรค")
            Return True
        ElseIf txtDetail IsNot Nothing Then
            MsgBox("กรุณากรอกลักษณะอาการ")
            Return True
        ElseIf txtherb IsNot Nothing Then
            MsgBox("กรุณากรอกชื่อสมุนไพรที่เกี่ยวข้อง")
            Return True
        Else
            Return False
        End If
    End Function


    Private Sub btnUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUpdate.Click
        'CheckValidateCalculate()
        AddData()

    End Sub

    

End Class