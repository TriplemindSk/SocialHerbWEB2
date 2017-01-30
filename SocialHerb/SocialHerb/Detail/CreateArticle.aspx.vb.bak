Imports System.Data
Imports System.Data.DataTable
Imports System.Data.SqlClient
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxUploadControl
Imports System.IO
Imports System.Web.Configuration
Imports DevExpress.Web.ASPxPopupControl
Imports System.Drawing
Public Class CreateArticle
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Private Sub btnUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUpdate.Click
        ' AddData()
    End Sub





    Private Sub AddData()

        'If CheckValidateCalculate() Then Exit Sub
        Dim disease As New SocialHerb.Disease
        Dim date_Article As DateTime
        Dim imgArticle As String
        Dim strSQL, strConnString As String

        strConnString = WebConfigurationManager.ConnectionStrings("SocialHerb").ConnectionString
        strSQL = "insert into Article (articleID,articleName,articleImg,article,creditArt,dateArticle" & _
        ") values ('" & txtID.Text & "','" & txtNameA.Text & "','" & imgArticle & "','" & txtDetailA.Text & "','" & txtRefA.Text & "','" & date_Article & "')"

        Try
            Using objConn As New SqlConnection(strConnString)
                objConn.Open()
                Dim objCmd As New SqlCommand(strSQL, objConn)

                txtID.Text = ""
                txtNameA.Text = ""
                imgArticle = ""
                txtDetailA.Text = ""
                txtRefA.Text = ""
                date_Article = Now

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


End Class

'Partial Public Class UploadControl_MultiFileSelection
'    Inherits Page
'    Private Const UploadDirectory As String = "~\Upload\UploadArticle"
'    Protected Sub UploadControl_FileUploadComplete(ByVal sender As Object, ByVal e As FileUploadCompleteEventArgs)
'        Dim resultExtension As String = Path.GetExtension(e.UploadedFile.FileName)
'        Dim resultFileName As String = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension)
'        Dim resultFileUrl As String = UploadDirectory & resultFileName
'        Dim resultFilePath As String = MapPath(resultFileUrl)
'        e.UploadedFile.SaveAs(resultFilePath)

'        'UploadingUtils.RemoveFileWithDelay(resultFileName, resultFilePath, 5)


'        Dim name As String = e.UploadedFile.FileName
'        Dim url As String = ResolveClientUrl(resultFileUrl)
'        Dim sizeInKilobytes As Long = e.UploadedFile.ContentLength / 1024
'        Dim sizeText As String = sizeInKilobytes.ToString() & " KB"
'        e.CallbackData = name & "|" & url & "|" & sizeText
'    End Sub
'End Class