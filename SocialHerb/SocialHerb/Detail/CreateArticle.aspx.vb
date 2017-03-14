Imports System.Data
Imports System.Data.DataTable
Imports System.Data.SqlClient
Imports DevExpress.Web
Imports System.IO
Imports System.Web.Configuration
Imports System.Drawing
Public Class CreateArticle
    Inherits System.Web.UI.Page


    Public ReadOnly Property UploadDirectory() As String
        Get
            Return WebConfigurationManager.AppSettings("ArticleImageUploadFolder")
        End Get

    End Property


    Public Property ArticleCod() As String
        Get
            Return ViewState("ArticleCode")
        End Get
        Set(ByVal value As String)
            ViewState("ArticleCode") = value
        End Set
    End Property


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim RequestArticleID = Request.QueryString("articleID")

    End Sub

    Public Function GetNextArticleid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From aid In ctx.Articles Select CType(aid.articleID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function

    Public Function GetNextArticleidIMG() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From aIid In ctx.ImgArticles Select CType(aIid.ImgArticleID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function

    Private Sub btnUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUpdate.Click
        AddData()
    End Sub


    Private Sub AddData()
        Dim getArticleid As Integer = GetNextArticleid()
        Try

            Dim article As New Article
            With article
                .articleID = getArticleid
                .articleName = txtNameA.Text
                .article = txtDetailA.Text
                .articleCredit = txtRefA.Text
                .dateArt = Now

            End With

            Using ctx As New SocialHerbDataContext
                ctx.Articles.InsertOnSubmit(article)
                ctx.SubmitChanges()
            End Using


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        lblErrorEdit.Text = "Record insert Complete"

    End Sub


    Private Sub UploadControl_FilesUploadComplete(sender As Object, e As DevExpress.Web.FilesUploadCompleteEventArgs) Handles UploadControl.FilesUploadComplete
        Dim getArticleImgid As Integer = GetNextArticleidIMG()
        Dim getArticleid As Integer = GetNextArticleid()

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

                    Dim articleIMG As New ImgArticle
                    With articleIMG
                        .ImgArticleID = getArticleImgid
                        .ArticlepicID = getArticleid
                        .ImgArticleDate = Now
                        .ImgArticlename = file.FileName
                        .ImgArticle = file.FileBytes
                    End With

                    Using ctx As New SocialHerbDataContext
                        ctx.ImgArticles.InsertOnSubmit(articleIMG)
                        ctx.SubmitChanges()
                    End Using

                End If
            Next i
        End If


    End Sub


    Private Sub ShowData()



    End Sub







    Public Sub GetFiles()
        '    Dim dt As New DataTable
        '    dt.Columns.Add("Q_FileID", GetType(String))
        '    dt.Columns.Add("filename", GetType(String))
        '    dt.Columns.Add("link", GetType(String))

        '    Dim quotationList As List(Of QuotationFile)
        '    quotationList = GetQuotationFile(QuotationCode)

        '    Try
        '        Dim Path = UploadDirectory & QuotationCode
        '        If IO.Directory.Exists(Path) Then
        '            Dim dirs As New IO.DirectoryInfo(Path)
        '            For Each f As IO.FileInfo In dirs.GetFiles
        '                Dim fname As String = f.Name
        '                Dim fpath As String = "DownloadFile.aspx?FilePath=" & Web.HttpUtility.UrlEncode(Path & "\" & f.Name)
        '                For Each i In quotationList
        '                    If i.Q_FileName = fname Then
        '                        dt.Rows.Add(i.Q_FileID, fname, fpath)
        '                    End If
        '                Next
        '            Next
        '        End If
        '    Catch ex As Exception
        '        dt.Clear()
        '    End Try
        '    gv_QFile.DataSource = dt

    End Sub



End Class

