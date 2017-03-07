Imports System.Data
Imports System.Data.DataTable
Imports System.Data.SqlClient
Imports DevExpress.Web
Imports System.IO
Imports System.Web.Configuration
Imports System.Drawing
Public Class CreateFood
    Inherits System.Web.UI.Page

    Public Property FoodCode() As String
        Get
            Return ViewState("FoodCode")
        End Get
        Set(ByVal value As String)
            ViewState("FoodCode") = value
        End Set
    End Property

    Public ReadOnly Property UploadDirectory() As String
        Get
            Return WebConfigurationManager.AppSettings("FoodImageUploadFolder")
        End Get

    End Property


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim RequestFoodID = Request.QueryString("foodID")
    End Sub


    Private Sub btnUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUpdate.Click

        AddData()

    End Sub

    Public Function GetNextFoodid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From fid In ctx.HealthFoods Select CType(fid.foodID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function

    Public Function GetNextFooodidIMG() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From fIid In ctx.ImgFoods Select CType(fIid.ImgFoodID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function



    Private Sub AddData()
        Dim getFoodid As Integer = GetNextFoodid()
        Try

            Dim food As New HealthFood
            With food

                .foodID = getFoodid
                .foodName = txt_Foodname.Text
                .foodHowto = txt_Cooking.Text
                .foodRecipe = txt_Ingredient.Text
                .foodBenefit = txt_Benefit.Text
                .creditFood = txt_Ref.Text
                .dateFood = Now

            End With

            Using ctx As New SocialHerbDataContext
                ctx.HealthFoods.InsertOnSubmit(food)
                ctx.SubmitChanges()
            End Using


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        lblErrorEdit.Text = "Record insert Complete"
    End Sub


    Private Sub UploadControl_FilesUploadComplete(sender As Object, e As DevExpress.Web.FilesUploadCompleteEventArgs) Handles UploadControl.FilesUploadComplete
        Dim getArticleImgid As Integer = GetNextFooodidIMG()
        Dim getArticleid As Integer = GetNextFoodid()

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

                    Dim foodIMG As New ImgFood
                    With foodIMG
                        .ImgFoodID = getArticleImgid
                        .FoodpicdID = getArticleid
                        .ImgFoodDate = Now
                        .ImgFoodname = file.FileName
                        .ImgFood = file.FileBytes
                    End With

                    Using ctx As New SocialHerbDataContext
                        ctx.ImgFoods.InsertOnSubmit(foodIMG)
                        ctx.SubmitChanges()
                    End Using

                End If
            Next i
        End If


    End Sub



End Class