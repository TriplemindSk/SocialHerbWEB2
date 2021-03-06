﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="ProDisease.aspx.vb" Inherits="SocialHerb.ProDisease" %>

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
                    <asp:Label ID="lb_disease" runat="server" Text="อาการ/โรค" CssClass="labeltext_head"
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
                    อาการ/โรค :
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Width="199px"
                    Text="อาการปวดฟัน"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    ลักษณะอาการ :
                </td>
                <td>
                    <asp:TextBox ID="txtDetail" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox" Font-Size="Large" Text="อาการปวดฟันมีอยู่ด้วยกัน 2 ประเภทหลัก ๆ โดยประเภทแรกเป็นการปวดฟันแบบเสียวจี๊ด ๆ เวลากินของเย็น ของหวาน หรือเมื่อตอนเคี้ยวอาหาร และอาการเหล่านี้จะหายไปเมื่อหยุดกินอาหารดังกล่าวภายในไม่กี่นาที ซึ่งลักษณะของอาการปวดเช่นนี้มักเกิดจากฟันผุหรือฟันบิ่นจนถึงเนื้อฟันชั้นใน จึงทำให้ความเย็นหรือแรงจากการเคี้ยวอาหารมีโอกาสกระตุ้นเส้นประสาทที่อยู่ในโพรงประสาทใต้เนื้อฟันได้มากกว่าปกติ จึงทำให้เกิดความรู้สึกเสียวฟันทุกครั้งเมื่อกินอาหาร
ส่วนอาการปวดฟันอีกประเภทหนึ่ง ซึ่งจะมีความรุนแรงกว่า คือ การปวดเป็นจังหวะ ตุ้บ ๆ ซึ่งอาจปวดโดยอยู่เฉย ๆ ก็ปวด หรืออาจปวดมากขึ้นเวลากินของเย็นหรือของร้อน หรือเวลาเคี้ยวอาหาร และอาการปวดนี้จะไม่หายไปแม้จะเลิกกินอาหารเหล่านี้แล้วก็ตาม ซึ่งอาการปวดแบบนี้สามารถบรรเทาได้ด้วยการหลีกเลี่ยงอาหารประเภทดังกล่าวพร้อมกับการรับประทานยาแก้ปวด">
                    </asp:TextBox>
                </td>
            </tr>
             <tr>
                <td align="right" class="style3" valign="top">
                    การบรรเทาอาการ :
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox" Font-Size="Large" Text="การทำความสะอาดเศษอาหารที่ติดฟัน เป็นวิธีแรก ๆ ที่ควรทำก่อนจะใช้วิธีบรรเทาอาการปวดอื่น ๆ โดยควรใช้ไหมขัดฟันทำความสะอาดเศษอาหารที่ติดตามซอกฟันทั้งสองด้านในบริเวณที่มีอาการปวดอย่างระมัดระวัง จากนั้นให้บ้วนปากและกลั้วปากด้วยน้ำอุ่นเพื่อให้เศษอาหารหลุดออก เสร็จแล้วจึงบ้วนน้ำทิ้ง
งดสิ่งกระตุ้นที่มีผลทำให้ปวดฟันหรือทำให้ประสาทฟันบาดเจ็บมากขึ้น เช่น การรับประทานของเย็นจัด (น้ำแข็ง ไอศกรีม), การรับประทานของร้อนจัด (น้ำร้อน ชาร้อน กาแฟร้อน อาหารร้อน ๆ), การรับประทานอาหารที่มีรสหวานจัดหรือเปรี้ยวจัด เป็นต้น
หลีกเลี่ยงการกระทบกระแทกบริเวณที่มีอาการปวดฟัน จนกว่าอาการปวดฟันอีกด้านจะหายไป เพราะอาการปวดฟันจะเป็นมากขึ้น ถ้าฟันซี่นั้น ๆ ถูกกระแทกบ่อย ๆ วิธีการง่าย ๆ ก็คือ การรับประทานอาหารที่ไม่ต้องใช้แรงเคี้ยว เช่น อาหารนิ่ม ๆ ไม่ควรเคี้ยวอาหารแข็ง ๆ หรือเหนียว ๆ ที่ต้องใช้แรงบดเคี้ยวมาก หรือให้เลี่ยงไปเคี้ยวอาหารอีกด้านหนึ่งของช่องปากแทน
บ้วนปากด้วยน้ำเกลือ เป็นวิธีที่ช่วยกำจัดแบคทีเรียและบรรเทาอาการปวดได้ (เกลือไม่ได้มีฤทธิ์ในการรักษาแต่จะช่วยกำจัดแบคทีเรียและทำให้เหงือกที่บวมรอบ ๆ ฟันซี่ที่ปวดชุ่มชื้นขึ้น ซึ่งจะช่วยบรรเทาอาการปวดลงได้) โดยให้ผสมเกลือ 1 ช้อนชา (5 มิลลิลิตร) กับน้ำอุ่น 250 มิลลิลิตร ใช้อมกลั้วปากประมาณ 30 วินาทีแล้วบ้วนออก (สามารถทำซ้ำได้ตามความต้องการ)
บ้วนปากด้วยไฮโดรเจนเปอร์ออกไซด์ (Hydrogen peroxide) ที่มีความเข้มข้น 3% สักพัก ซึ่งจะช่วยกำจัดเชื้อแบคทีเรียที่เป็นสาเหตุของอาการฟันผุได้">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    สมุนไพรที่เกี่ยวข้อง :
                </td>
                <td>
                    <asp:TextBox ID="txtherb" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox" Font-Size="Large" Text="กานพลู ดาวเรือง เมล็ดผักชี ผักบุ้งนา มะระ ว่านหางจระเข้ น้ำมันกระเทียม ใบชา เมล็ดกุยช่าย">
                    </asp:TextBox>
                </td>
            </tr>
            <%--<tr>
                <td align="right" class="style3" valign="top">
                    วันที่บันทึก :
                </td>
                <td>
                    <dx:ASPxDateEdit ID="date_Disease" ClientInstanceName="dateEdit" runat="server" NullText="dd/MM/yyyy"
                        EditFormat="Custom" EditFormatString="dd/MM/yyyy" Width="170px">
                        <ClearButton DisplayMode="OnHover">
                        </ClearButton>
                    </dx:ASPxDateEdit>
                </td>
            </tr>--%>
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
</asp:Content>
