<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master"
    CodeBehind="Report.aspx.vb" Inherits="SocialHerb.Report" %>

<%@ Register Assembly="DevExpress.XtraCharts.v16.2.Web, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraReports.v16.2.Web, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        รายงาน</h2>
    <dx:ASPxNavBar ID="ASPxNavBar1" runat="server" BackColor="#afd168" AllowSelectItem="True"
        EnableAnimation="True">
        <Groups>
            <dx:NavBarGroup Text="รายงาน">
                <Items>
                    <dx:NavBarItem Text="อัตราส่วนของข้อมูลระหว่างสมุนไพรกับอาการ/โรค">
                        <Image Url="../Images/Chart.png" />
                    </dx:NavBarItem>
                    <dx:NavBarItem Text="อัตราส่วนของสมุนไพรที่มีการแสดงความคิดเห็นกับสมุนไพรที่ไม่มีการแสดงความคิดเห็น">
                        <Image Url="../Images/Chart.png" />
                    </dx:NavBarItem>
                    <dx:NavBarItem Text="รายงานแสดงจำนวนการแสดงความคิดเห็นและให้คะแนนของเภสัชกรแต่ละคน">
                        <Image Url="../Images/Report.png" />
                    </dx:NavBarItem>
                    <dx:NavBarItem Text="รายงานแสดงรายละเอียดการแดสงความคิดเห็นและให้คะแนนของเภสัชกรแต่ละคน">
                        <Image Url="../Images/Report.png" />
                    </dx:NavBarItem>
                </Items>
            </dx:NavBarGroup>
        </Groups>
    </dx:ASPxNavBar>
    
    <dx:WebChartControl ID="WebChartControl1" runat="server" Height="400px" Width="700px"
        CssClass="AlignCenter TopLargeMargin" ClientInstanceName="chart"
        ToolTipEnabled="False">
       
        
    </dx:WebChartControl>
</asp:Content>
