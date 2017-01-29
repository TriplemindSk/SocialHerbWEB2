<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master"
    CodeBehind="Herb.aspx.vb" Inherits="SocialHerb.Herb" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
    <%--<script language="javascript" type="text/javascript">
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
        สมุนไพร</h2>

    <div style="float: right; margin-left: 5px; margin-bottom: 10px;">
        <%--<dx:ASPxButton ID="btn_AddDataHerb" runat="server" Text="Add New Herb" AutoPostBack="false" RenderMode="Link">
        </dx:ASPxButton>--%>
         <asp:HyperLink ID="hpHerb" runat="server" align="center" ForeColor="#827717"  Font-Bold="true"
         Width="100%" Height="25px"  Style="text-align: center">Add New Herb</asp:HyperLink>

    </div>

    <dx:ASPxGridView ID="gv_HerbShow" ClientInstanceName="grid" runat="server" KeyFieldName="EmployeeID"
        PreviewFieldName="Notes" AutoGenerateColumns="False" EnableRowsCache="false"
        Width="100%">
        <Columns>
            <dx:GridViewDataColumn FieldName="HerbName" VisibleIndex="0" Caption="ชื่อสมุนไพร"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" SortOrder="Descending" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                 <DataItemTemplate>
                            <asp:LinkButton ID="lnk_HerbN" runat="server" Text='<%# Eval("HerbName") %>'
                                CommandArgument='<%# Eval("HerbName") %>' >
                            </asp:LinkButton>
                        </DataItemTemplate>
                        <EditItemTemplate>
                            <asp:Label ID="lbl_HerbN" runat="server" Text='<%# Eval("HerbName") %>'></asp:Label>
                        </EditItemTemplate>
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                        <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="HerbOtherName" VisibleIndex="1" Caption="ชื่อสมุนไพร(อื่นๆ)"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="Properties" VisibleIndex="2" Caption="ลักษณะ" ReadOnly="True"
                CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="Date" VisibleIndex="3" Caption="วันที่แก้ไข" ReadOnly="True"
                CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
            </dx:GridViewDataColumn>
        </Columns>
        <SettingsEditing Mode="Inline" />
       <%-- <Settings ShowGroupPanel="true" />
        <SettingsBehavior AllowFocusedRow="True" />--%>
        <%--<ClientSideEvents FocusedRowChanged="function(s, e) { OnGridFocusedRowChanged(); }" />--%>
        <SettingsSearchPanel Visible="true" />
         <Settings ShowFooter="True" />
            <SettingsPager>
                <PageSizeItemSettings Visible="true" Items="10, 20, 50" />
            </SettingsPager>
    </dx:ASPxGridView>

   <%-- <table style="width: 100%; height: 200px" class="OptionsTable TopMargin">
        <tr>
            <td style="width: 160px">
                <dx:ASPxImage runat="server" ID="DetailImage" ClientInstanceName="DetailImage" ClientVisible="false" Width="160px" />
            </td>
            <td class="LeftPadding">
                <dx:ASPxMemo runat="server" ID="DetailNotes" ClientInstanceName="DetailNotes" Width="100%"
                    Height="170" ReadOnly="true"  BackColor="#afd168"/>
            </td>
        </tr>
    </table>
    <asp:EntityDataSource runat="server" ID="EmployeesDataSource" ContextTypeName="NorthwindContext" EntitySetName="Employees" />--%>




</asp:Content>
