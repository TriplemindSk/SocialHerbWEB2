﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master"
    CodeBehind="Report.aspx.vb" Inherits="SocialHerb.Report" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<%@ Register Assembly="DevExpress.XtraReports.v16.2.Web, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.Bootstrap.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraCharts.v16.2.Web, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraCharts.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraReports.v16.2.Web, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.XtraReports.v16.2.Web, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.XtraReports.Web.WebDocumentViewer" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        รายงาน</h2>
    <dx:ASPxPageControl ID="carTabPage" runat="server" ActiveTabIndex="0" EnableHierarchyRecreation="True"
        BackColor="#afd168" TabPosition="Left" Width="100%">
        <TabPages>
            <dx:TabPage Text="อัตราส่วนของข้อมูลระหว่างสมุนไพร,อาการ/โรคและจิตอาสา(เภสัชกร)"
                ActiveTabImage-Url="../Images/Chart.png">
                <ContentCollection>
                    <dx:ContentControl ID="ContentControl1" runat="server" BackColor="#afd168">
                        <dx:ASPxDocumentViewer ID="ASPxDocumentViewer2" runat="server" Height="1100px" ReportTypeName="SocialHerb.XtraReport1"
                            Width="100%">
                        </dx:ASPxDocumentViewer>
                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="อัตราส่วนระหว่างสมุนไพรที่มีการแสดงความคิดเห็นและสมุนไพรที่ไม่มีการแสดงความคิดเห็น"
                ActiveTabImage-Url="../Images/Chart.png">
                <ContentCollection>
                    <dx:ContentControl ID="ContentControl2" runat="server">


                    <dx:ASPxDocumentViewer ID="ASPxDocumentViewer1" runat="server" Height="1100px" ReportTypeName="SocialHerb.XtraReport3"
                            Width="100%">
                        </dx:ASPxDocumentViewer>



                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="รายงานแสดงจำนวนการแสดงความคิดเห็นและการให้คะแนนของจิตอาสา(เภสัชกร) แต่ละคน"
                ActiveTabImage-Url="../Images/Report.png">
                <ContentCollection>
                    <dx:ContentControl ID="ContentControl3" runat="server">


                    <dx:ASPxDocumentViewer ID="ASPxDocumentViewer3" runat="server" Height="1100px" ReportTypeName="SocialHerb.XtraReport2"
                            Width="100%">
                        </dx:ASPxDocumentViewer>


                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
            <dx:TabPage Text="รายงานแสดงความคิดเห็นและการให้คะแนนของจิตอาสา(เภสัชกร) แต่ละคน"
                ActiveTabImage-Url="../Images/Report.png">
                <ContentCollection>
                    <dx:ContentControl ID="ContentControl4" runat="server">


                    <dx:ASPxDocumentViewer ID="ASPxDocumentViewer4" runat="server" Height="1100px" ReportTypeName="SocialHerb.XtraReport4"
                            Width="100%">
                        </dx:ASPxDocumentViewer>


                    </dx:ContentControl>
                </ContentCollection>
            </dx:TabPage>
        </TabPages>
    </dx:ASPxPageControl>
    <br />
    <br />
    <br />
    <<br />
    <br />
    <br />
    <br />
    <%-- <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>--%>
    <%--<dx:ASPxDocumentViewer ID="ASPxDocumentViewer1" runat="server" Height="1100px" ReportTypeName="SocialHerb.XtraReport1"
        Width="100%">
    </dx:ASPxDocumentViewer>--%>
    <%-- <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="100%" 
        Width="100%" Font-Names="Verdana" Font-Size="8pt"  
        InteractiveDeviceInfos="(Collection)" WaitMessageFont-Names="Verdana" 
        WaitMessageFont-Size="14pt">
            <LocalReport ReportPath="Report\Report1.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>

 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:SocialHerb %>" 
        SelectCommand="SELECT * FROM [Admin]"></asp:SqlDataSource>--%>
    <br />
    <br />
    <br />
    <<br />
</asp:Content>
