<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master"
    CodeBehind="Disease.aspx.vb" Inherits="SocialHerb.Disease" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h2>
            อาการ/โรค</h2>
        <div style="float: right; margin-left: 5px; margin-bottom: 10px;">
            <%--<dx:ASPxButton ID="btn_AddDataDisease" runat="server" Text="Add New Disease" AutoPostBack="false"
            RenderMode="Button">
        </dx:ASPxButton>--%>
            <asp:HyperLink ID="hpDisease" runat="server" align="center" ForeColor="#827717" Font-Bold="true"
                Width="100%" Height="25px" Style="text-align: center">Add New Disease</asp:HyperLink>
        </div>
        <dx:ASPxGridView ID="gv_DiseaseShow" ClientInstanceName="gv_DiseaseShow" runat="server"
            KeyFieldName="diseaseID" AutoGenerateColumns="False" EnableRowsCache="false"
            DataSourceID="Disease_SH" Width="100%" Style="text-align: center" Enabled="True">
            <Columns>
                <dx:GridViewDataColumn FieldName="diseaseName" VisibleIndex="0" Caption="ชื่ออาการ/โรค"
                    ReadOnly="True" SortOrder="Descending" HeaderStyle-HorizontalAlign="Center" Width="30px">
                    <EditCellStyle HorizontalAlign="Center">
                    </EditCellStyle>
                    <DataItemTemplate>
                        <asp:LinkButton ID="lnk_HerbN" runat="server" Text='<%# Eval("diseaseName") %>' CommandArgument='<%# Eval("diseaseID") %>'
                            OnCommand="ListItem_Command" Enabled="True" CommandName="OpenCreateDisease">
                        </asp:LinkButton>
                    </DataItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="lbl_HerbN" runat="server" Text='<%# Eval("diseaseName") %>'></asp:Label>
                    </EditItemTemplate>
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="herb" VisibleIndex="1" Caption="สมุนไพรที่เกี่ยวข้อง"
                    ReadOnly="True" HeaderStyle-HorizontalAlign="Center" Width="100px">
                    <EditCellStyle HorizontalAlign="Center">
                    </EditCellStyle>
                    <EditItemTemplate>
                        <asp:Label ID="lbl_DherbName" runat="server" Text='<%# Eval("herb") %>'>
                        </asp:Label>
                    </EditItemTemplate>
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataColumn>
                <%--<dx:GridViewDataColumn FieldName="howtoRelief" VisibleIndex="2" Caption="ลักษณะอาการ"
                ReadOnly="True" HeaderStyle-HorizontalAlign="Center" Width="300px" visible=""true>
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_DhowtoRelief" runat="server" Text='<%# Eval("howtoRelief") %>'>
                    </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>--%>
                <dx:GridViewDataColumn FieldName="dateDisease" VisibleIndex="3" Caption="วันที่แก้ไข"
                    ReadOnly="True" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                    Width="30px">
                    <EditCellStyle HorizontalAlign="Center">
                    </EditCellStyle>
                    <EditItemTemplate>
                        <asp:Label ID="lbl_Ddate" runat="server" Text='<%# Eval("dateDisease", "{0:d/MM/yyyy}") %>'>
                        </asp:Label>
                    </EditItemTemplate>
                    <Settings AutoFilterCondition="Contains" />
                </dx:GridViewDataColumn>
            </Columns>
            <SettingsEditing Mode="Inline" />
            <SettingsSearchPanel Visible="true" />
            <%--<Settings ShowFooter="True" />--%>
            <SettingsPager>
                <PageSizeItemSettings Visible="true" Items="5, 10, 15, 20, 25" />
            </SettingsPager>
            <SettingsBehavior AllowFocusedRow="True" />
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="Disease_SH" runat="server" ConnectionString="<%$ ConnectionStrings:SocialHerb %>"
            SelectCommand=" SELECT diseaseID,diseaseName, Symptom, herb, howtoRelief,dateDisease 
                    FROM Disease  ORDER BY [dateDisease] DESC"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
</asp:Content>
