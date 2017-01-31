<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ProDepartment.aspx.vb" Inherits="SocialHerb.ProDepartment" %>

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
            color: #3e2723;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<center>
        <table border="0" width="600">
            <tr style="height: 20px">
                <td colspan="3" style="background-image: url(Images/head6.jpg)">
                    <asp:Label ID="lb_disease" runat="server" Text="หน่วยงานที่เกี่ยวข้องกับสมุนไพร" CssClass="labeltext_head"
                        Font-Bold="true" Font-Size="XX-Large" ForeColor="#827717"></asp:Label>
                </td>
            </tr>
        </table>
        <h2 align="right">
        </h2>
        <asp:Label ID="lblErrorEdit" runat="server" ForeColor="Red"></asp:Label>
        <asp:TextBox ID="txtID" runat="server" Visible="false"></asp:TextBox>
        <table border="0" width="600">
            <tr>
                <td align="right" class="style3">
                    ชื่อหน่วยงาน :
                </td>
                <td>
                    <asp:TextBox ID="txt_DEName" runat="server" CssClass="textbox" Width="199px" 
                    Text="สถาบันวิจัยสมุนไพร"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    ที่อยู่ :
                </td>
                <td>
                    <asp:TextBox ID="txt_Address" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox" Font-Size="Large" Text="กรมวิทยาศาสตร์การแพทย์ กระทรวงสาธาณสุข
88/7 ซ.ติวานนท์ 14 ต.ตลาดขวัญ อ.เมือง จ.นนทบุรี 11000 ">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    เบอร์โทรศัพท์ :
                </td>
                <td>
                     <asp:TextBox ID="txt_Tel" runat="server" CssClass="textbox" Width="199px"
                     Text="0-2951-0491 "></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    โทรสาร :
                </td>
                <td>
                     <asp:TextBox ID="txt_Fax" runat="server" CssClass="textbox" Width="199px"
                     Text="0-2589-9866"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    E-mail :
                </td>
                <td>
                     <asp:TextBox ID="txt_Email" runat="server" CssClass="textbox" Width="199px"
                     Text="-"></asp:TextBox>
                </td>
            </tr>
             <tr>
                <td align="right" class="style3" valign="top">
                    Website :
                </td>
                <td>
                     <asp:TextBox ID="txt_Website" runat="server" CssClass="textbox" Width="199px"
                     Text="http://dmsc2.dmsc.moph.go.th/webroot/Plant/Mpri2013/index.shtm"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    บทบาทหน้าที่ :
                </td>
                <td>
                    <asp:TextBox ID="txt_Role" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox" Font-Size="Large" Text="1. ศึกษา วิเคราะห์ วิจัยและพัฒนาองค์ความรู้ และเทคโนโลยีทางห้องปฏิบัติการด้านสมุนไพร
2. พัฒนาระบบการตรวจวิเคราะห์คุณภาพวัตถุดิบ และผลิตภัณฑ์จากสมุนไพร
3. กำหนดมาตรฐานสมุนไพรและเภสัชตำรับ
4. เป็นห้องปฏิบัติการอ้างอิงด้านสมุนไพร
5. พัฒนาระบบฐานข้อมูลและให้บริการข้อมูลวิธีตรวจวิเคราะห์ทางห้องปฏิบัติการ
6. พัฒนาคุณภาพห้องปฏิบัติการ สนับสนุนด้านวิชาการและถ่ายทอดเทคโนโลยีด้านสมุนไพรแก่ ห้องปฏิบัติการเครือข่ายห้องปฏิบัติการภาครัฐและภาคเอกชน
7. ปฏิบัติงานร่วมกับหรือสนับสนุนการปฏิบัติงานของหน่วยงานอื่นที่เกี่ยวข้องหรือ หรือที่ได้รับมอบหมาย">
                    </asp:TextBox>
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
