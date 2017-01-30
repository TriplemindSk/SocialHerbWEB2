Imports System.Data
Imports System.Data.DataTable
Imports System.Data.SqlClient
Imports DevExpress.Web
Imports System.IO
Imports System.Web.Configuration
Imports System.Drawing
Public Class CreateFood
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    'Private Sub btnUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUpdate.Click
    '    AddData()
    'End Sub



    'Private Sub AddData()

    '    'If CheckValidateCalculate() Then Exit Sub
    '    Dim disease As New SocialHerb.Disease
    '    Dim date_Food As String = Date.Now()
    '    Dim FoodPic As String
    '    Dim strSQL, strConnString As String

    '    strConnString = WebConfigurationManager.ConnectionStrings("SocialHerb").ConnectionString
    '    strSQL = "insert into Food (FoodName ,FoodPic ,Cooking ,Ingredient ,Benefit ,Ref ,FoodDate" & _
    '    ") values ('" & txt_Foodname.Text & "','" & FoodPic & "','" & txt & "','" & txtDetailA.Text & "','" & txtRefA.Text & "','" & date_Food & "')"

    '    Try
    '        Using objConn As New SqlConnection(strConnString)
    '            objConn.Open()
    '            Dim objCmd As New SqlCommand(strSQL, objConn)

    '            txtID.Text = ""
    '            txtNameA.Text = ""
    '            imgArticle = ""
    '            txtDetailA.Text = ""
    '            txtRefA.Text = ""
    '            date_Article = Now

    '            'objCmd.Parameters.Add("@diseaseID")
    '            'cmdInsert.Parameters.Add("@FirstName", Data.SqlDbType.NVarChar).Value = FirstName.Text()
    '            'cmdInsert.Parameters.Add("@LastName", Data.SqlDbType.NVarChar).Value = LastName.Text
    '            'cmdInsert.Parameters.Add("@Email", Data.SqlDbType.NVarChar).Value = Email.Text
    '            'cmdInsert.Parameters.Add("@Phone", Data.SqlDbType.NChar).Value = Phone.Text
    '            'cmdInsert.Parameters.Add("@Address", Data.SqlDbType.NVarChar).Value = Address.Text
    '            'cmdInsert.Parameters.Add("@City", Data.SqlDbType.NVarChar).Value = City.Text
    '            'cmdInsert.Parameters.Add("@State", Data.SqlDbType.NVarChar).Value = State.Text
    '            'cmdInsert.Parameters.Add("@Zip", Data.SqlDbType.NChar).Value = Zip.Text
    '            objCmd.ExecuteNonQuery()

    '            objConn.Close()
    '        End Using
    '    Catch ex As Exception
    '        MsgBox(ex.Message)
    '    End Try

    '    lblErrorEdit.Text = "Record insert Complete"

    'End Sub

End Class