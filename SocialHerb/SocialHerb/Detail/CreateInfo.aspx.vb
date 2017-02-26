Imports System.Data
Imports System.Data.DataTable
Imports System.Data.SqlClient
Imports DevExpress.Web
Imports System.IO
Imports System.Web.Configuration
Imports System.Drawing


Public Class CreateInfo
    Inherits System.Web.UI.Page


    Public Property InfoCode() As String
        Get
            Return ViewState("InfoCode")
        End Get
        Set(ByVal value As String)
            ViewState("InfoCode") = value
        End Set
    End Property

    Public ReadOnly Property UploadDirectory() As String
        Get
            Return WebConfigurationManager.AppSettings("InfoImageUploadFolder")
        End Get

    End Property


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim RequestInfoID = Request.QueryString("infoID")

    End Sub

    Public Function GetNextInfoid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From iid In ctx.Infographics Select CType(iid.infoID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function

    Public Function GetNextInfoImgid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From iIid In ctx.ImgInfos Select CType(iIid.ImgInfoID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function

    Private Sub AddData()
        Dim getInfoid As Integer = GetNextInfoid()
        Try

            Dim info As New Infographic
            With info
                .infoID = getInfoid
                .infoName = txtName.Text
                .creditInfo = txt_Ref.Text
                .dateInfo = Now


            End With

            Using ctx As New SocialHerbDataContext
                ctx.Infographics.InsertOnSubmit(info)
                ctx.SubmitChanges()
            End Using


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        lblErrorEdit.Text = "Record insert Complete"

    End Sub
    Private Sub btnUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUpdate.Click
        AddData()
    End Sub

    Private Sub UploadControl_FilesUploadComplete(sender As Object, e As DevExpress.Web.FilesUploadCompleteEventArgs) Handles UploadControl.FilesUploadComplete
        Dim getInfoImgid As Integer = GetNextInfoImgid()
        Dim getInfoid As Integer = GetNextInfoid()

        ' If ArticleCode Is Nothing Then ArticleCode = Request.QueryString("articleID")

        Dim uploadControl As ASPxUploadControl = TryCast(sender, ASPxUploadControl)

        If uploadControl.UploadedFiles IsNot Nothing AndAlso uploadControl.UploadedFiles.Length > 0 Then
            For i As Integer = 0 To uploadControl.UploadedFiles.Length - 1
                Dim file As UploadedFile = uploadControl.UploadedFiles(i)

                If file.ContentLength > 0 Then
                    Dim path = UploadDirectory '& articleID
                    If Not IO.Directory.Exists(path) Then
                        IO.Directory.CreateDirectory(path)
                    End If
                    file.SaveAs(path & "\" & file.FileName)

                    Dim infoIMG As New ImgInfo
                    With infoIMG
                        .ImgInfoID = getInfoImgid
                        .InfopicID = getInfoid
                        .ImgInfoDate = Now
                        .ImgInfoname = file.FileName
                        .ImgInfo = file.FileBytes
                    End With

                    Using ctx As New SocialHerbDataContext
                        ctx.ImgInfos.InsertOnSubmit(infoIMG)
                        ctx.SubmitChanges()
                    End Using

                End If
            Next i
        End If

    End Sub
End Class





