Imports Microsoft.VisualBasic
Imports System
Imports System.IO
Imports System.Web.UI
Imports DevExpress.Web
Imports DevExpress.Web.Demos

Public Class CreateArticle
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

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