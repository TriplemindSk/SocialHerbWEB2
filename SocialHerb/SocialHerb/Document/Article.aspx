<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Article.aspx.vb" Inherits="SocialHerb.WebForm1" %>

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
        บทความเพื่อสุขภาพ</h2>

         <div style="float: right; margin-left: 5px; margin-bottom: 10px;">
       <%-- <dx:ASPxButton ID="btn_AddDataArticle" runat="server" Text="Add New Article" AutoPostBack="false"
            RenderMode="Button">
        </dx:ASPxButton>--%>
        <asp:HyperLink  ID="hpArticle" runat="server" align="center" ForeColor="#827717"  Font-Bold="true"
         Width="100%" Height="25px"  Style="text-align: center">Add New Article</asp:HyperLink>

    </div>

    <dx:ASPxGridView ID="gv_ArticleShow" ClientInstanceName="grid" runat="server" KeyFieldName="EmployeeID"
        PreviewFieldName="Notes" AutoGenerateColumns="False" EnableRowsCache="false"
        Width="100%">
        <Columns>
            <dx:GridViewDataColumn FieldName="ArticleName" VisibleIndex="0" Caption="ชื่อบทความ"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" SortOrder="Descending" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <DataItemTemplate>
                    <asp:LinkButton ID="lnk_HerbN" runat="server" Text='<%# Eval("ArticleName") %>' CommandArgument='<%# Eval("ArticleName") %>'>
                            </asp:LinkButton>
                </DataItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="lbl_HerbN" runat="server" Text='<%# Eval("ArticleName") %>'></asp:Label>
                </EditItemTemplate>
                <CellStyle HorizontalAlign="Center">
                </CellStyle>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="Detail" VisibleIndex="1" Caption="เนื้อหาของบทความ"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="Ref_Article" VisibleIndex="2" Caption="ที่มาของบทความเพื่อสุขภาพ"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
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
        <%--<Settings ShowGroupPanel="true" />
        <SettingsBehavior AllowFocusedRow="True" />--%>
        <%-- <ClientSideEvents FocusedRowChanged="function(s, e) { OnGridFocusedRowChanged(); }" />--%>
        <SettingsSearchPanel Visible="true" />
    </dx:ASPxGridView>




</asp:Content>
