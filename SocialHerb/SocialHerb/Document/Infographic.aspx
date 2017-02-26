<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master"
    CodeBehind="Infographic.aspx.vb" Inherits="SocialHerb.Infographic" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    <%--<script type="text/javascript">
        function OnGridFocusedRowChanged() {
            // Query the server for the "EmployeeID" and "Notes" fields from the focused row 
            // The values will be returned to the OnGetRowValues() function
            DetailNotes.SetText("Loading...");
            grid.GetRowValues(grid.GetFocusedRowIndex(), 'EmployeeID;Notes', OnGetRowValues);
        }
        // Value array contains "EmployeeID" and "Notes" field values returned from the server 
        function OnGetRowValues(values) {
            DetailImage.SetImageUrl("FocusedRow.aspx?Photo=" + values[0]);
            DetailImage.SetVisible(true);
            DetailNotes.SetText(values[1]);
        }
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Infographic</h2>
    <div style="float: right; margin-left: 5px; margin-bottom: 10px;">
        <%--<dx:ASPxButton ID="btn_AddDataInfo" runat="server" Text="Add New Infographic" AutoPostBack="false"
            RenderMode="Button">
        </dx:ASPxButton>--%>
        <asp:HyperLink ID="hpInfo" runat="server" align="center" ForeColor="#827717" Font-Bold="true"
            Width="100%" Height="25px" Style="text-align: center">Add New Infographic</asp:HyperLink>
    </div>
    <dx:ASPxGridView ID="gv_InfoShow" ClientInstanceName="grid" runat="server" KeyFieldName="infoID"
        PreviewFieldName="Notes" AutoGenerateColumns="False" EnableRowsCache="false"
        DataSourceID="Info_SH" Width="100%">
        <Columns>
            <dx:GridViewDataColumn FieldName="infoName" VisibleIndex="0" Caption="ชื่อ Infographic"
                ReadOnly="True" SortOrder="Descending" HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <DataItemTemplate>
                    <asp:LinkButton ID="lnk_HerbN" runat="server" Text='<%# Eval("infoName") %>' CommandArgument='<%# Eval("infoID") %>' 
                    OnCommand="ListItem_Command" Enabled="True" CommandName="OpenCreateInfo">
                    </asp:LinkButton>
                </DataItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="lbl_HerbN" runat="server" Text='<%# Eval("infoName") %>'></asp:Label>
                </EditItemTemplate>
                <%-- <CellStyle HorizontalAlign="Center">
                </CellStyle>--%>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="infoImg" VisibleIndex="2" Caption="รูป Infographic"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                Visible="false">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <image url="../Images/BG.jpg">
                
                </image>
                </EditItemTemplate>
            </dx:GridViewDataColumn>
            <%-- <dx:GridViewDataImageColumn FieldName="infoImg" VisibleIndex="2" Caption="รูป Infographic"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <PropertiesImage ImageHeight="150" ImageWidth="225">
                
                <EmptyImage Url="../Images/BG.jpg" ></EmptyImage>
                </PropertiesImage>
                

            </dx:GridViewDataImageColumn>--%>
            <dx:GridViewDataColumn FieldName="creditInfo" VisibleIndex="1" Caption="ที่มาของ Infographic"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                Width="200px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_DherbName" runat="server" Text='<%# Eval("creditInfo") %>'>
                    </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="dateInfo" VisibleIndex="3" Caption="วันที่แก้ไข"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                Width="50px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_DherbName" runat="server" Text='<%# Eval("dateInfo") %>'>
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
    <asp:SqlDataSource ID="Info_SH" runat="server" ConnectionString="<%$ ConnectionStrings:SocialHerb %>"
        SelectCommand=" SELECT infoID,infoName,creditInfo,dateInfo
                    FROM Infographic  ORDER BY [dateInfo] DESC"></asp:SqlDataSource>

<br /><br />
<br />
<br />

</asp:Content>
