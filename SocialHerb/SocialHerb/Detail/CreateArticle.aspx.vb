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


    Public Property ArticleCode() As String
        Get
            Return ViewState("ArticleCode")
        End Get
        Set(ByVal value As String)
            ViewState("ArticleCode") = value
        End Set
    End Property


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim RequestArticleID = Request.QueryString("articleID")

        If Not IsPostBack Then
           
            ViewState("articleID") = CInt(Request.QueryString("articleID"))

        End If

        ArticleCode = Request.QueryString("articleID")


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


    Public Function chkArticleByID(ByVal aID As String) As Article
        Dim article As New Article
        Using ctx = New SocialHerbDataContext
            article = (From q In ctx.Articles Where q.articleID = 5).SingleOrDefault
        End Using
        Return article
    End Function


    Private Sub ShowData(ByVal aID As String)

        Dim arti As New Article
        arti = chkArticleByID(aID)


        If arti IsNot Nothing Then

            With arti
                .articleID = 5
                .articleName = txtNameA.Text
                .article = txtDetailA.Text
                .articleCredit = txtRefA.Text
                .dateArt = Now
            End With
        End If

        'Dim quota As New Quotation
        'quota = chkQuotationByNO(qno)
        'txt_booking.Text = quotapro.BookingBy
        'txt_title.Text = quotapro.Title

        'If quota IsNot Nothing Then
        '    btn_AddQuotation.Visible = False
        '    btn_SaveQuotation.Visible = True
        '    btn_ApproveQuotation.Visible = True
        '    'btn_edit.Enabled = True
        '    'btn_editRemark.Enabled = True
        '    btnDeleteSelectedRows.Enabled = True
        '    txt_totalamount.ClientEnabled = True
        '    memo_remark.ClientEnabled = True

        '    'memo_remark.BackColor = Drawing.Color.LightGray
        '    With quota
        '        QuotationID = .Quota_ID
        '        cmb_company.Text = .company_name
        '        cmb_attn.Text = .attn
        '        txt_tel.Text = .tel
        '        txt_fax.Text = .fax
        '        txt_email.Text = .email
        '        txt_totalamount.Text = .total_amount
        '        memo_remark.Text = .remark
        '        'code เก่า
        '        'memo_remark.Text = .remark
        '        'memo_condition.Text = .condition

        '        'Using ctx = New DlmsDataContext
        '        '    Dim quota_item As New List(Of QuotationItem)
        '        '    Dim subDataList As New List(Of String)
        '        '    quota_item = (From qi In ctx.QuotationItems Where qi.Quota_ID = .Quota_ID).ToList
        '        '    For Each i In quota_item
        '        '        Dim q_DescriptionSub As New QuotationDescriptionSub
        '        '        With q_DescriptionSub
        '        '            .ID_Q_Detail_Main = i.QuotationDescriptionSub.ID_Q_Detail_Main
        '        '            .ID_Q_Detail_Sub = i.ID_Q_Detail_Sub
        '        '            .Q_Detail_Sub = i.QuotationDescriptionSub.Q_Detail_Sub
        '        '            .Price = i.price
        '        '        End With
        '        '        subDataList.Add(StrDetailData(q_DescriptionSub, i.unit))
        '        '    Next
        '        '    'code เก่า
        '        '    'txt_subData.Text = String.Join(";", subDataList)
        '        '    'gv_addmodule_DataBind()
        '        'End Using
        '    End With

        'Else
        '    btn_SaveQuotation.Visible = False
        '    btn_ApproveQuotation.Visible = False
        '    btn_AddQuotation.Visible = True
        '    'btn_edit.Enabled = False
        '    'btn_editRemark.Enabled = False
        '    btnDeleteSelectedRows.Enabled = False
        '    txt_totalamount.ClientEnabled = True
        '    memo_remark.ClientEnabled = True
        '    ulc_QuotationFile.Enabled = False
        '    memo_remark.BackColor = Drawing.Color.White
        '    txt_totalamount.BackColor = Drawing.Color.White
        'End If





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

