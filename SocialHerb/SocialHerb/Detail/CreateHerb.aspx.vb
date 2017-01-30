Imports System.Data
Imports System.Data.DataTable
Imports System.Data.SqlClient
Imports DevExpress.Web
Imports System.IO
Imports System.Web.Configuration
Imports System.Drawing




Public Class CreateHerb
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Private Sub AddData()


        'researchID, researchName, creditRe, link, herbID
        'FROM([SocialHerb].[dbo].[HerbResearch])



        ',leafImg,branch,branchImg,trunk,trunkImg,root,rootImg,flower,flowerImg,fruit,fruitImg,seed,seedImg

        'If CheckValidateCalculate() Then Exit Sub
        Dim disease As New SocialHerb.Disease
        Dim date_Herb As DateTime
        Dim imgHerb, leafImg, branchImg, trunkImg, rootImg, flowerImg, fruitImg, seedImg As String
        Dim strSQL, strConnString, strSQLH, strSQLRE As String

        strConnString = WebConfigurationManager.ConnectionStrings("SocialHerb").ConnectionString
        strSQL = "insert into Herb (herbID,herbName,herbOtherName,img,howto,warning,properties,dateHerb" & _
        ") values ('" & txtID.Text & "','" & txtName.Text & "','" & txt_OtherName.Text & "','" & imgHerb & "','" & txt_Howto.Text & "','" & txt_warnnig.Text & "','" & txt_Properties.Text & "','" & date_Herb & "')"

        strSQLH = "insert into HerbImg (herbImgID,herbID,leaf,leafImg,branch,branchImg,trunk,trunkImg,root,rootImg,flower,flowerImg,fruit,fruitImg,seed,seedImg" & _
        ") values ('" & txt_HerbImgid.Text & "','" & txtID.Text & "','" & txt_leaf.Text & "','" & leafImg & "','" & txt_Branch.Text & "','" & branchImg & "','" & txt_trunk.Text & "','" & trunkImg & "'" & _
         "','" & txt_Root.Text & "','" & rootImg & "','" & txt_Flower.Text & "','" & flowerImg & "','" & txt_Fruit.Text & "','" & fruitImg & "','" & txt_Seed.Text & "','" & seedImg & "')"

        strSQL = "insert into HerbResearch (researchID, researchName, creditRe, link, herbREID" & _
        ") values ('" & txt_REid.Text & "','" & txt_RefName.Text & "','" & txt_RefRe.Text & "','" & txt_LinkRe.Text & "','" & txtID.Text & "')"


        Try
            Using objConn As New SqlConnection(strConnString)
                objConn.Open()
                Dim objCmd As New SqlCommand(strSQL, objConn)

                txtID.Text = ""
                txtName.Text = ""
                txt_OtherName.Text = ""
                imgHerb = ""
                txt_Howto.Text = ""
                txt_warnnig.Text = ""
                txt_Properties.Text = ""
                date_Herb = Date.Now()


                Dim objCmdH As New SqlCommand(strSQLH, objConn)

                txt_HerbImgid.Text = ""
                txtID.Text = ""
                txt_leaf.Text = ""
                leafImg = ""
                txt_Branch.Text = ""
                branchImg = ""
                txt_trunk.Text = ""
                trunkImg = ""
                txt_Root.Text = ""
                rootImg = ""
                txt_Flower.Text = ""
                flowerImg = ""
                txt_Fruit.Text = ""
                fruitImg = ""
                txt_Seed.Text = ""
                seedImg = ""




                Dim objCmdRE As New SqlCommand(strSQLRE, objConn)

                txt_REid.Text = ""
                txt_RefName.Text = ""
                txt_RefRe.Text = ""
                txt_LinkRe.Text = ""
                txtID.Text = ""


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
        'AddData()
    End Sub

End Class