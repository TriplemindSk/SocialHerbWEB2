<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Disease.aspx.vb" Inherits="SocialHerb.Disease" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>
        อาการ/โรค</h2>

    <div style="float: right; margin-left: 5px; margin-bottom: 10px;">
        <%--<dx:ASPxButton ID="btn_AddDataDisease" runat="server" Text="Add New Disease" AutoPostBack="false"
            RenderMode="Button">
        </dx:ASPxButton>--%>

        <asp:HyperLink ID="hpDisease" runat="server" align="center" ForeColor="#827717"  Font-Bold="true"
         Width="100%" Height="25px"  Style="text-align: center">Add New Disease</asp:HyperLink>

    </div>


    <dx:ASPxGridView ID="gv_DiseaseShow" ClientInstanceName="grid" runat="server" KeyFieldName="EmployeeID"
        PreviewFieldName="Notes" AutoGenerateColumns="False" EnableRowsCache="false"
        Width="100%">
        <Columns>
            <dx:GridViewDataColumn FieldName="D1" VisibleIndex="0" Caption="ชื่ออาการ/โรค" ReadOnly="True"
                CellStyle-HorizontalAlign="Center" SortOrder="Descending" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <DataItemTemplate>
                    <asp:LinkButton ID="lnk_HerbN" runat="server" Text='<%# Eval("D1") %>' CommandArgument='<%# Eval("D1") %>'>
                            </asp:LinkButton>
                </DataItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="lbl_HerbN" runat="server" Text='<%# Eval("D1") %>'></asp:Label>
                </EditItemTemplate>
                <CellStyle HorizontalAlign="Center">
                </CellStyle>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="D2" VisibleIndex="1" Caption="สมุนไพรที่เกี่ยวข้อง"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="D3" VisibleIndex="2" Caption="ลักษณะ" ReadOnly="True"
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
        <SettingsSearchPanel Visible="true" />
    </dx:ASPxGridView>




</asp:Content>
