Imports System.Data
Imports System.Data.DataTable
Imports System.Data.SqlClient
Imports DevExpress.Web.ASPxGridView
Imports DevExpress.Web.ASPxUploadControl
Imports System.IO
Imports System.Web.Configuration
Imports DevExpress.Web.ASPxPopupControl
Imports System.Drawing


Public Class CreateInfo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub





    Private Sub AddData()

        'If CheckValidateCalculate() Then Exit Sub
        Dim disease As New SocialHerb.Disease
        Dim date_Info As DateTime
        Dim imgInfo As String
        Dim strSQL, strConnString As String

        strConnString = WebConfigurationManager.ConnectionStrings("SocialHerb").ConnectionString
        strSQL = "insert into Infographic (infoID,infoName,infoImg,creditInfo,dateInfo" & _
        ") values ('" & txtID.Text & "','" & txtName.Text & "','" & imgInfo & "','" & txt_Ref.Text & "','" & date_Info & "')"

        Try
            Using objConn As New SqlConnection(strConnString)
                objConn.Open()
                Dim objCmd As New SqlCommand(strSQL, objConn)

                txtID.Text = ""
                txtName.Text = ""
                imgInfo = ""
                txt_Ref.Text = ""
                date_Info = Now

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


    'Private Const UploadDirectory As String = "~/Upload/UploadInfo/"
    'Protected Sub UploadControl_FileUploadComplete(ByVal sender As Object, ByVal e As FileUploadCompleteEventArgs)
    '    Dim resultExtension As String = Path.GetExtension(e.UploadedFile.FileName)
    '    Dim resultFileName As String = Path.ChangeExtension(Path.GetRandomFileName(), resultExtension)
    '    Dim resultFileUrl As String = UploadDirectory & resultFileName
    '    Dim resultFilePath As String = MapPath(resultFileUrl)
    '    e.UploadedFile.SaveAs(resultFilePath)


    '    'UploadingUtils.RemoveFileWithDelay(resultFileName, resultFilePath, 5)



    '    'Dim name As String = e.UploadedFile.FileName
    '    'Dim url As String = ResolveClientUrl(resultFileUrl)
    '    'Dim sizeInKilobytes As Long = e.UploadedFile.ContentLength / 1024
    '    'Dim sizeText As String = sizeInKilobytes.ToString() & " KB"
    '    'e.CallbackData = name & "|" & url & "|" & sizeText
    'End Sub

    Private Sub btnUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUpdate.Click
        AddData()
    End Sub
End Class





