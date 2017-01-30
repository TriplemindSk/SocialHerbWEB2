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

        Dim RequestDiseaseID = Request.QueryString("DiseaseID")


    End Sub

    Private Sub AddData()

        'If CheckValidateCalculate() Then Exit Sub
        Dim disease As New SocialHerb.Disease
        'Dim Disid As String
        Dim date_Disease As DateTime



        Dim strSQL, strConnString As String

        strConnString = WebConfigurationManager.ConnectionStrings("SocialHerb").ConnectionString
        strSQL = "insert into Disease (diseaseID,symptom,howtoRelief,herb,dateDisease" & _
        ") values ('" & txtID.Text & "','" & txtName.Text & "','" & txtDetail.Text & "','" & txtherb.Text & "','" & date_Disease & "')"

        Try
            Using objConn As New SqlConnection(strConnString)
                objConn.Open()
                Dim objCmd As New SqlCommand(strSQL, objConn)

                'Dim diseaseDate As Date
                'diseaseDate = date_Disease.Date
                txtID.Text = ""
                txtName.Text = ""
                txtDetail.Text = ""
                txtherb.Text = ""
                date_Disease = Now
                'Dim timeFormat As String = "yyyy-MM-dd HH:mm:ss"
                'Date.TryParse(timeFormat, diseaseDate)



                'objCmd.Parameters.Add("@diseaseID")
                'cmdInsert.Parameters.Add("@FirstName", Data.SqlDbType.NVarChar).Value = FirstName.Text()
                'cmdInsert.Parameters.Add("@LastName", Data.SqlDbType.NVarChar).Value = LastName.Text
                'cmdInsert.Parameters.Add("@Email", Data.SqlDbType.NVarChar).Value = Email.Text
                'cmdInsert.Parameters.Add("@Phone", Data.SqlDbType.NChar).Value = Phone.Text
                'cmdInsert.Parameters.Add("@Address", Data.SqlDbType.NVarChar).Value = Address.Text
                'cmdInsert.Parameters.Add("@City", Data.SqlDbType.NVarChar).Value = City.Text
                'cmdInsert.Parameters.Add("@State", Data.SqlDbType.NVarChar).Value = State.Text
                'cmdInsert.Parameters.Add("@Zip", Data.SqlDbType.NChar).Value = Zip.Text
                objCmd.ExecuteNonQuery()

                objConn.Close()
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
        'AddData()
    End Sub

    

End Class