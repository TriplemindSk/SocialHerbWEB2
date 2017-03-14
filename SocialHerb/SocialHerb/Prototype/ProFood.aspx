<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ProFood.aspx.vb" Inherits="SocialHerb.ProFood" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<style type="text/css">
        .style1
        {
            width: 149px;
        }
        .style3
        {
            font-size: large;
            color: #3e2723 ;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<center>
        <table border="0" width="600">
            <tr style="height: 20px">
                <td colspan="3" style="background-image: url(Images/head6.jpg)">
                    <asp:Label ID="lb_disease" runat="server" Text="อาหารเพื่อสุขภาพ" CssClass="labeltext_head"
                        Font-Bold="true" Font-Size="XX-Large" ForeColor="#827717"></asp:Label>
                </td>
            </tr>
        </table>
        <h2 align="right"></h2>
        <asp:Label ID="lblErrorEdit" runat="server" ForeColor="Red"></asp:Label>
        <asp:TextBox ID="txtID" runat="server" Visible="false"></asp:TextBox>
        <table border="0" width="800px">
            <tr>
                <td align="right" class="style3">
                    ชื่ออาหาร :
                </td>
                <td>
                    <asp:TextBox ID="txt_Foodname" runat="server" CssClass="textbox" Width="199px" 
                    Text="ตำข้าวโพดใส่ไข่เค็ม เพื่อสุขภาพ"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    รูปอาหาร :
                </td>
                <td>
                    <dx:ASPxUploadControl ID="UploadControl" runat="server" ClientInstanceName="UploadControl"
                        Width="320" NullText="Select multiple files..." UploadMode="Advanced" ShowUploadButton="True"
                        ShowProgressPanel="True">

                        <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                        <ValidationSettings MaxFileSize="4194304" AllowedFileExtensions=".jpg,.jpeg,.gif,.png">
                        </ValidationSettings>
                        <%--<ClientSideEvents FilesUploadStart="function(s, e) { DXUploadedFilesContainer.Clear(); }"
                              FileUploadComplete="onFileUploadComplete" />--%>
                    </dx:ASPxUploadControl>
                </td>
            </tr>

             <tr>
            <td align="right" class="style3" valign="top">
              <asp:Label ID="imgName" runat="server" Text=" ข้าวโพด.jpg"></asp:Label>
          
            </td>
            <td>
            <asp:Image ID="imgInfo" runat="server" ImageUrl="~/Images/ข้าวโพด.jpg" Width="500px" Height="353px"/> 
            </td>
            </tr>


            <tr>
                <td align="right" class="style3" valign="top">
                    วิธีการปรุง :
                </td>
                <td>
                    <asp:TextBox ID="txt_Cooking" runat="server" Height="100px" TextMode="MultiLine" Width="500px" Font-Size="Medium"
                        CssClass="textbox" Text="ฝานข้าวโพดต้มพักใส่จานเตรียมไว้ นำพริกและกระเทียมใส่ลงไปในครก โขลกเบาๆ พอแตก หากใครชอบรสเผ็ดจะเปลี่ยนมาใช้พริกขี้หนูสวนเม็ดเล็กๆ แทนก็ได้ ปริมาณก็เลือกเอาตามชอบได้เลย และสามารถโขลกพริกให้ละเอียดเพื่อรสชาติเผ็ดแซ่บได้ตามต้องการเช่นกัน ใส่น้ำตาลปี๊บลงไป ตามด้วยน้ำปลา และน้ำมะนาว ใช้สากหรือช้อนยีๆ เพื่อให้น้ำตาลปี๊บละลายตัวเข้ากับส่วนผสมอื่นๆ เมื่อน้ำตาลเริ่มละลายตัวดีแล้ว จากนั้นใส่ถั่วฝักยาว โขลกเบาๆ ใส่มะเขือเทศสีดา และข้าวโพดที่เราฝานไว้ คลุกเคล้าส่วนผสมและเครื่องปรุงให้เข้ากัน แกะไข่เค็มแบ่งเป็นชิ้นๆ พอคำมาใส่ลงไป จากนั้นคลุกเคล้าส่วนผสมต่างๆ ให้เข้ากันอีกครั้ง ตักใส่จาน เสิร์ฟ เป็นอันเสร็จ สำหรับวิธีทำตำข้าวโพดใส่ไข่เค็ม">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    ส่วนผสม :
                </td>
                <td>
                    <asp:TextBox ID="txt_Ingredient" runat="server" Height="100px" TextMode="MultiLine" Width="500px" Font-Size="Medium"
                        CssClass="textbox" Text="ข้าวโพดต้ม 1-2 ฝัก ถั่วฝักยาวหั่นแฉลบ 1 ฝัก มะเขือเทศสีดาผ่าซีก 2-3 ลูก แครอทหั่นเป็นเส้นฝอย 1/2 ถ้วย พริกขี้หนูเม็ดใหญ่ 2-3 เม็ด กระเทียมประมาณ 4-5 กลีบ น้ำตาลปี๊บ 1/2 ช้อนโต๊ะ น้ำมะนาว 1-2 ช้อนโต๊ะ น้ำปลา [ส่วนผสมเพื่อสุขภาพ] อาจไม่ใส่น้ำปลาก็ได้ เพราะว่ามีความเข็มจากไข่อยู่แล้ว 1/2 ช้อนโต๊ะ ไข่เค็ม [ส่วนผสมเพื่อสุขภาพ] ไข่เค็มมีโซเดียมค่อนข้างสูง ดังนั้นแนะนำให้ทานไม่เกิน 1/2 ฟอง/คน/วัน">
                    </asp:TextBox>
                </td>
            </tr>
             <tr>
                <td align="right" class="style3" valign="top">
                    คุณประโยชน์ :
                </td>
                <td>
                    <asp:TextBox ID="txt_Benefit" runat="server" Height="100px" TextMode="MultiLine" Width="500px" Font-Size="Medium"
                        CssClass="textbox" Text="ปัจจุบัน กระแสการรับประทานอาหารเพื่อสุขภาพล้วนมาแรงอย่างต่อเนื่อง โดยเฉพาะการทานอาหารคลีน แต่สำหรับใครที่ไม่มีเวลาในการทำอาหารคลีนทานด้วยตัวเอง ด้วยภารกิจอันวุ่นวายในชีวิตประจำวัน ย่อมทำให้เวลาในการจัดสรรหรือตระเตรียมอาหารมีกำจัดน้อยลงไป แต่อย่างไรก็ตาม หากคุณยังพอมีเวลาในการทำอาหารทานเองบ้าง แม้จะเป็นเมนูอาหารง่ายๆ ทั่วไป ดั่งเช่นเมนูตำข้าวโพดใส่ไข่เค็มนี้ แม้จะไม่ใช่เมนูสูตรอาหารคลีนก็ตาม แต่สำหรับคนรักสุขภาพ บอกเลยว่าคุณค่าทางโภชนาการนั้นมีครบครัน ด้วยเพราะวัตถุดิบของผักหลากหลายสีสัน อุดมไปด้วยวิตามิน แร่ธาตุและสารอาหารต่างๆ นานาชนิด ซึ่งพระเอกหลักของเมนูนี้เห็นชัดๆ แล้วว่ามีข้าวโพด โดยในส่วนของข้าวโพดและแครอทก็เป็นอาหารที่อุดมไปด้วยวิตามินเอและเบต้าแรโรทีนสูง ช่วยบำรุงสายตา เป็นแหล่งของสารต้านอนุมูลอิสระที่จะช่วยชะลอการเกิดริ้วรอย ชะลอความเสื่อมสภาพของเซลล์ รวมถึงยังเป็นผักต้านมะเร็งในตัวอีกด้วย พร้อมกันนี้ เมื่อพ่วงมาพร้อมถั่วฝักยาวที่อุดมไปด้วยโปรตีน และไลโคปีนจากมะเขือเทศ อีกทั้งยังเปี่ยมไปด้วยปริมาณไฟเบอร์สูงจากวัตถุดิบหลักทั้งจาน เมนูตำข้าวโพดนี้จึงทำให้คุณสาวๆ และผู้ที่ต้องการควบคุมน้ำหนักสามารถรับประทานได้อย่างอิ่มท้อง ทำให้อยู่ท้องนาน ลดอาการหิวจุบจิบ และดีต่อระบบขับถ่ายอย่างมาก ฉะนั้น จะรับประทานคู่กับผักสดต่างๆ เป็นเครื่องเคียงก็จะยิ่งช่วยให้ร่างกายได้รับประโยชน์จากไฟเบอร์และวิตามิน แร่ธาตุมากยิ่งขึ้น ที่สำคัญนอกจากดีต่อสุขภาพแล้ว ทำให้หุ่นสวยตามมาอีกด้วย จะตำทานเป็นของว่างทานเล่นหรือทานแทนเมนูอาหารหลักก็เวิร์กสุดๆ">
                    </asp:TextBox>
                </td>
            </tr>
             <tr>
                <td align="right" class="style3">
                    ที่มา :
                </td>
                <td>
                    <asp:TextBox ID="txt_Ref" runat="server" CssClass="textbox" Width="250px"
                    Text="Thai Love Health ( อาหารเพื่อสุขภาพ )"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="btnUpdate" runat="server" Height="25px" Text="Update" Width="70px"
                        CssClass="button" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnDelete" runat="server" Height="25px" Text="Delete" Width="70px"
                        CssClass="button" />
                </td>
            </tr>
        </table>
    </center>

<br /><br />
<br /><br />
</asp:Content>
