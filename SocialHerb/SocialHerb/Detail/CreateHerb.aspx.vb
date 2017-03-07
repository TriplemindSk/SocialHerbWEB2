Imports System.Data
Imports System.Data.DataTable
Imports System.Data.SqlClient
Imports DevExpress.Web
Imports System.IO
Imports System.Web.Configuration
Imports System.Drawing

Public Class CreateHerb
    Inherits System.Web.UI.Page


    Public Property HerbCode() As String
        Get
            Return ViewState("HerbCode")
        End Get
        Set(ByVal value As String)
            ViewState("HerbCode") = value
        End Set
    End Property

    Public ReadOnly Property UploadDirectory() As String
        Get
            Return WebConfigurationManager.AppSettings("HerbImageUploadFolder")
        End Get

    End Property


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim RequestHerbID = Request.QueryString("herbID")

    End Sub

    Public Function GetNextHerbid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From hid In ctx.Herbs Select CType(hid.herbID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function


    Public Function GetNextHerbOrganizeid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From hoid In ctx.HerbImgs Select CType(hoid.herbImgID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function

    Public Function GetNextHerbResearchid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From hrid In ctx.HerbResearches Select CType(hrid.herbIdRe, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function

    Public Function GetNextHerbImgid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From hIid In ctx.HerbImgs Select CType(hIid.herbImgID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function

    Private Sub btnUpdate_Click(sender As Object, e As System.EventArgs) Handles btnUpdate.Click
        AddData()
    End Sub

    Private Sub AddData()
        Dim getHerbid As Integer = GetNextHerbid()
        Dim getHerbOrganizeid As Integer = GetNextHerbOrganizeid()
        Dim getHerbResearchid As Integer = GetNextHerbResearchid()
        Try

            Dim herb As New Herb
            With herb
                .herbID = getHerbid
                .herbName = txtName.Text
                .herbOtherName = txt_OtherName.Text
                .howto = txt_Howto.Text
                .properties = txt_Properties.Text
                .warning = txt_warnnig.Text
                .dateHerb = Now

            End With

            Using ctx As New SocialHerbDataContext
                ctx.Herbs.InsertOnSubmit(herb)
                ctx.SubmitChanges()
            End Using


            Dim herbResearch As New HerbResearch
            With herbResearch
                .researchID = getHerbResearchid
                .herbIdRe = getHerbid
                .creditRe = txt_RefRe.Text
                .link = txt_LinkRe.Text
                .researchName = txt_RefName.Text
            End With

            Using ctx As New SocialHerbDataContext
                ctx.HerbResearches.InsertOnSubmit(herbResearch)
                ctx.SubmitChanges()
            End Using




            Dim herbImg As New HerbImg
            With herbImg
                .herbImgID = getHerbOrganizeid
                .herbID = getHerbid
                .leaf = txt_leaf.Text
                .branch = txt_Branch.Text
                .flower = txt_Flower.Text
                .fruit = txt_Fruit.Text
                .root = txt_Root.Text
                .seed = txt_Seed.Text
                .trunk = txt_trunk.Text

            End With

            Using ctx As New SocialHerbDataContext
                ctx.HerbImgs.InsertOnSubmit(herbImg)
                ctx.SubmitChanges()
            End Using


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        lblErrorEdit.Text = "Record insert Complete"


    End Sub

    Private Sub UploadControl_FilesUploadComplete(sender As Object, e As DevExpress.Web.FilesUploadCompleteEventArgs) Handles UploadControl.FilesUploadComplete
        Dim getHerbImgid As Integer = GetNextHerbImgid()
        Dim getHerbid As Integer = GetNextHerbid()

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

                    Dim herbIMG As New ImgHerb
                    With herbIMG
                        .ImgherbId = getHerbImgid
                        .HerbpicID = getHerbid
                        .ImgHerbDate = Now
                        .ImgHerbname = file.FileName
                        .ImgHerb = file.FileBytes
                    End With

                    Using ctx As New SocialHerbDataContext
                        ctx.ImgHerbs.InsertOnSubmit(herbIMG)
                        ctx.SubmitChanges()
                    End Using

                End If
            Next i
        End If

    End Sub

    Public Function GetNextBranchImgid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From k In ctx.ImgHerbBranches Select CType(k.ImgBranchID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function
  

    Private Sub ASPxUploadControlBRANCH_FilesUploadComplete(sender As Object, e As DevExpress.Web.FilesUploadCompleteEventArgs) Handles ASPxUploadControlBRANCH.FilesUploadComplete

        Dim getBranchImgid As Integer = GetNextBranchImgid()
        Dim getHerbid As Integer = GetNextHerbid()


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

                    Dim branchIMG As New ImgHerbBranch
                    With branchIMG
                        .ImgBranchID = getBranchImgid
                        .HerbBranchID = getHerbid
                        .ImgBranchDate = Now
                        .ImgBranchname = file.FileName
                        .ImgBranch = file.FileBytes
                    End With

                    Using ctx As New SocialHerbDataContext
                        ctx.ImgHerbBranches.InsertOnSubmit(branchIMG)
                        ctx.SubmitChanges()
                    End Using

                End If
            Next i
        End If
    End Sub

    Public Function GetNextFlowerImgid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From k In ctx.ImgHerbFlowers Select CType(k.ImgFlowerID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function

    Private Sub ASPxUploadControlFLOWER_FilesUploadComplete(sender As Object, e As DevExpress.Web.FilesUploadCompleteEventArgs) Handles ASPxUploadControlFLOWER.FilesUploadComplete

        Dim getFlowerImgid As Integer = GetNextFlowerImgid()
        Dim getHerbid As Integer = GetNextHerbid()


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

                    Dim flowerIMG As New ImgHerbFlower
                    With flowerIMG
                        .ImgFlowerID = getFlowerImgid
                        .HerbFlowerID = getHerbid
                        .ImgFlowerDate = Now
                        .ImgFlowername = file.FileName
                        .ImgFlower = file.FileBytes
                    End With

                    Using ctx As New SocialHerbDataContext
                        ctx.ImgHerbFlowers.InsertOnSubmit(flowerIMG)
                        ctx.SubmitChanges()
                    End Using

                End If
            Next i
        End If
    End Sub

    Public Function GetNextFruitImgid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From k In ctx.ImgHerbFruits Select CType(k.ImgFruitID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function

    Private Sub ASPxUploadControlFRUIT_FilesUploadComplete(sender As Object, e As DevExpress.Web.FilesUploadCompleteEventArgs) Handles ASPxUploadControlFRUIT.FilesUploadComplete
        Dim getFruitImgid As Integer = GetNextFruitImgid()
        Dim getHerbid As Integer = GetNextHerbid()


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

                    Dim fruitIMG As New ImgHerbFruit
                    With fruitIMG
                        .ImgFruitID = getFruitImgid
                        .HerbFruitID = getHerbid
                        .ImgFruitDate = Now
                        .ImgFruitname = file.FileName
                        .ImgFruit = file.FileBytes
                    End With

                    Using ctx As New SocialHerbDataContext
                        ctx.ImgHerbFruits.InsertOnSubmit(fruitIMG)
                        ctx.SubmitChanges()
                    End Using

                End If
            Next i
        End If
    End Sub



    Public Function GetNextLeafImgid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From k In ctx.ImgHerbLeafs Select CType(k.ImgLeafID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function
    Private Sub ASPxUploadControlLEAF_FilesUploadComplete(sender As Object, e As DevExpress.Web.FilesUploadCompleteEventArgs) Handles ASPxUploadControlLEAF.FilesUploadComplete
        Dim getleafImgid As Integer = GetNextLeafImgid()
        Dim getHerbid As Integer = GetNextHerbid()


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

                    Dim leafIMG As New ImgHerbLeaf
                    With leafIMG
                        .ImgLeafID = getleafImgid
                        .HerbLeafID = getHerbid
                        .ImgLeafDate = Now
                        .ImgLeafname = file.FileName
                        .ImgLeaf = file.FileBytes
                    End With

                    Using ctx As New SocialHerbDataContext
                        ctx.ImgHerbLeafs.InsertOnSubmit(leafIMG)
                        ctx.SubmitChanges()
                    End Using

                End If
            Next i
        End If
    End Sub


    Public Function GetNextRootImgid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From k In ctx.ImgHerbRoots Select CType(k.ImgRootID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function
    Private Sub ASPxUploadControlROOT_FilesUploadComplete(sender As Object, e As DevExpress.Web.FilesUploadCompleteEventArgs) Handles ASPxUploadControlROOT.FilesUploadComplete
        Dim getRootImgid As Integer = GetNextRootImgid()
        Dim getHerbid As Integer = GetNextHerbid()


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

                    Dim rootIMG As New ImgHerbRoot
                    With rootIMG
                        .ImgRootID = getRootImgid
                        .HerbRootID = getHerbid
                        .ImgRootDate = Now
                        .ImgRootname = file.FileName
                        .ImgRoot = file.FileBytes
                    End With

                    Using ctx As New SocialHerbDataContext
                        ctx.ImgHerbRoots.InsertOnSubmit(rootIMG)
                        ctx.SubmitChanges()
                    End Using

                End If
            Next i
        End If
    End Sub


    Public Function GetNextSeedImgid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From k In ctx.ImgHerbSeeds Select CType(k.ImgSeedID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function

    Private Sub ASPxUploadControlSEED_FilesUploadComplete(sender As Object, e As DevExpress.Web.FilesUploadCompleteEventArgs) Handles ASPxUploadControlSEED.FilesUploadComplete
        Dim getSeedImgid As Integer = GetNextSeedImgid()
        Dim getHerbid As Integer = GetNextHerbid()


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

                    Dim seedIMG As New ImgHerbSeed
                    With seedIMG
                        .ImgSeedID = getSeedImgid
                        .HerbSeedID = getHerbid
                        .ImgSeedDate = Now
                        .ImgSeedname = file.FileName
                        .ImgSeed = file.FileBytes
                    End With

                    Using ctx As New SocialHerbDataContext
                        ctx.ImgHerbSeeds.InsertOnSubmit(seedIMG)
                        ctx.SubmitChanges()
                    End Using

                End If
            Next i
        End If
    End Sub



    Public Function GetNextTrunkImgid() As Integer
        Dim ctx As New SocialHerbDataContext
        Dim nextId As Integer = (From k In ctx.ImgHerbTrunks Select CType(k.ImgTrunkID, Integer?)).Max.GetValueOrDefault + 1
        Return nextId
    End Function
    Private Sub ASPxUploadControlTRUNK_FilesUploadComplete(sender As Object, e As DevExpress.Web.FilesUploadCompleteEventArgs) Handles ASPxUploadControlTRUNK.FilesUploadComplete
        Dim getTrunkImgid As Integer = GetNextTrunkImgid()
        Dim getHerbid As Integer = GetNextHerbid()


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

                    Dim trunkIMG As New ImgHerbTrunk
                    With trunkIMG
                        .ImgTrunkID = getTrunkImgid
                        .HerbTrunkID = getHerbid
                        .ImgTrunkDate = Now
                        .ImgTrunkname = file.FileName
                        .ImgTrunk = file.FileBytes
                    End With

                    Using ctx As New SocialHerbDataContext
                        ctx.ImgHerbTrunks.InsertOnSubmit(trunkIMG)
                        ctx.SubmitChanges()
                    End Using

                End If
            Next i
        End If
    End Sub
End Class