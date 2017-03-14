<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ProArticle.aspx.vb" Inherits="SocialHerb.ProArticle" %>

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
                    <asp:Label ID="lb_disease" runat="server" Text="บทความเพื่อสุขภาพ" CssClass="labeltext_head"
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
                    ชื่อบทความ :
                </td>
                <td>
                    <asp:TextBox ID="txtNameA" runat="server" CssClass="textbox" Width="199px"
                     Text="สารพัดวิธี เก็บอาหาร ช่วงน้ำท่วม"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    รูปที่เกี่ยวข้องกับบทความ :
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

            <asp:Label ID="imgName" runat="server" Text="น้ำท่วม.jpg"></asp:Label>
            
            </td>
            <td>
            <asp:Image ID="imgInfo" runat="server" ImageUrl="~/Images/น้ำท่วม.jpg" Width="500px" Height="353px"/> 
            </td>
            </tr>

            <tr>
                <td align="right" class="style3" valign="top">
                    เนื้อหา :
                  
                </td>
                
                <td>
                    <asp:TextBox ID="txtDetailA" runat="server" Height="150px" TextMode="MultiLine" Width="500px" Font-Size="Medium"
                        CssClass="textbox" Text="ในช่วงน้ำท่วม หากจะเดินไปซื้อของในซุปเปอร์มาร์เก็ต ไม่ใช่เรื่องง่าย และน้ำท่วมแบบนี้ ตู้เย็นก็ใช้การไม่ได้ ถ้าอย่างนั้นลองศึกษาวิธีการเหล่านี้ดูสักนิด ด้วยการสร้างตู้เย็นจากกระถางดินเผา หรือเก็บในที่แห้ง เก็บในโหลทราย เก็บผักผลไม้บางอย่างให้ห่างกัน ซึ่งการเก็บในตู้เย็นก็ทำได้แบบนี้
วิธีทำตู้เย็นดินเผา เพื่อใช้แช่ผักให้เย็น โดยใช้กระถางดินเผาสองใบซ้อนกัน ใส่ทรายระหว่างกระถางจนเต็ม เทน้ำลงไปในทรายจนชุ่ม และนำผ้าชุบน้ำปิดด้านบน ทรายเปียกจะรักษาความชื้นภายในกระถางให้คงที่ เมื่อน้ำระเหยออกจะทำให้อากาศหมุนเวียนภายใน อุณหภูมิในกระถางจะลดลง ผักจึงเก็บได้นานขึ้น สามารถเก็บมะเขือม่วงได้ประมาณ 27 วัน หรือมะเขือเทศ 21 วัน
โมฮัมหมัด เบา แอบบา ครูไนจีเรีย สร้างตู้เย็นทะเลทรายให้นักเรียนเก็บผัก เพื่อให้เด็กๆ ไม่ต้องขาดเรียน เพราะต้องรีบนำผักไปขายที่ตลาดก่อนจะเน่าเสีย เนื่องจากอากาศที่นั่นร้อนและไม่มีไฟฟ้า
นอกจากนี้ยังมีวิธีเก็บ มันฝรั่ง โดยให้เก็บในที่แห้งและมืด จะยืดอายุมันฝรั่งได้นานถึง 1 เดือน รวมทั้งป้องกันการสังเคราะห์แสง ที่ทำให้มันฝรั่งเน่าเร็วขึ้น เพราะมันฝรั่งเป็นอาหารที่คุ้นลิ้นคนไทย นำไปทำมัสมั่น และซุปไก่ สามารถให้พลังงานใกล้เคียงกับข้าวสวย ในช่วงน้ำท่วมจึงเป็นอาหารทางเลือกอีกชนิด
ส่วนมะนาวก็เป็นอีกสิ่ง ที่ควรติดครัวเรือนเอาไว้ ในช่วงเกิดภัยพิบัติ มีคำแนะนำว่า ควรเก็บในโหลทรายที่พรมน้ำให้โหลชื้น แต่ไม่แฉะ จะคงความสดของมะนาวไว้ได้ 14 วัน เนื่องจากความชื้นของทรายจะช่วยให้มะนาวคายน้ำน้อยลง ปริมาณน้ำในมะนาวจึงไม่เสียไป ยังเขียวสดและความเปรี้ยวชูรสชาติให้ปลากระป๋องที่ต้องกินซ้ำซากได้ทุกมื้อในยามน้ำท่วม
หากในช่วงน้ำท่วม อยากกิน แอปเปิ้ล ผลไม้ที่มีปริมาณการสังเคราะห์สารเอทิลีนสูง ซึ่งเป็นฮอร์โมนพืชที่เร่งให้เกิดการสุก การเก็บผลไม้ชนิดนี้รวมกับผลไม้อื่นๆ จะทำให้ผลไม้นั้นๆ สุกเร็วขึ้น เพราะสารเอทิลีนที่แอปเปิ้ลปล่อยออกมา หากวางแอปเปิ้ลไว้ใกล้กล้วยหอมกล้วยหอมจะสุกงอมทั้งหวีก่อนเวลา ทั้งๆ ที่อาจเก็บได้นานถึง 7 วัน
สิ่งของติดบ้านยามฉุกเฉิน
เมื่อต้องใช้ชีวิตเปียกๆ ช่วงน้ำท่วม ต้องเจอปัญหาน้ำประปาปนเปื้อน จำต้องใช้ส้วมฉุกเฉิน ต้องมีผู้ช่วยทำความสะอาดเพื่อใช้ได้ทันที
สารส้ม เอาไว้แกว่งน้ำให้เปลี่ยนจากขุ่นเป็นใส โดยไม่ต้องทิ้งให้ตกตะกอนจนหมด อย่างน้อยใช้เวลา 30 นาที แต่น้ำใสที่ได้ยังไม่ผ่านการฆ่าเชื้อโรค จึงต้องเติมคลอรีน หรือต้มก่อนนำน้ำไปใช้
หยดทิพย์ คือ คลอรีนชนิดน้ำที่ผลิตขึ้นโดยศูนย์ห้องปฏิบัติการกรมอนามัย ช่วยทำความสะอาดน้ำให้ไร้เชื้อโรค โดยหยดทิพย์เพียง 1 หยดสามารถนำไปผสมน้ำทำความสะอาดได้ 1 ลิตร กลิ่นคลอรีนจะหายไป เมื่อพักน้ำทิ้งไว้ ขณะใช้ต้องระวังอย่าให้สัมผัสกับผิวหนังและควรเก็บขวดให้พ้นแสงแดด
ส่วนในเรื่องการฆ่าเชื้อ ส้วมฉุกเฉิน แนะนำว่า การโรยปูนขาวในถุงปฏิกูลจะช่วยฆ่าเชื้อโรคและลดกลิ่น เนื่องจากปูนขาวช่วยปรับสภาพภายในถุงให้เป็นด่าง ทำให้ไม่เหมาะต่อการเจริญเติบโตของเชื้อโรค ปริมาณที่ควรเติมคือ 2 ช้อนโต๊ะสำหรับการขับถ่ายหนึ่งครั้งทั้งหนักหรือเบา อีกอย่างต้องระวังอย่าให้ปูนขาวสัมผัสตาและผิวหนัง ปูนขาวเป็นตัวช่วยลดความกังวลที่ต้องเก็บถุงปฏิกูลไว้ในบ้าน เพราะไม่มีพื้นที่แห้งนอกบ้านให้ทิ้ง">
                    </asp:TextBox>
                </td>
            </tr>

            <tr>
                <td align="right" class="style3" valign="top">
                    ที่มา :
                </td>
                <td>
                    <asp:TextBox ID="txtRefA" runat="server" CssClass="textbox" Width="199px" Font-Size="Medium"
                    Text="หนังสือพิมพ์กรุงเทพธุรกิจ"></asp:TextBox>
                    
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
<br />
<br />

</asp:Content>
