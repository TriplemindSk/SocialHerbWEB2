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

   <dx:ASPxGridView ID="gv_ArticleShow" ClientInstanceName="grid" runat="server" KeyFieldName="articleID"
        PreviewFieldName="Notes" AutoGenerateColumns="False" EnableRowsCache="false"
        DataSourceID="Article_SH" Width="100%">
        <Columns>
            <dx:GridViewDataColumn FieldName="articleName" VisibleIndex="0" Caption="ชื่อบทความ"
                ReadOnly="True" SortOrder="Descending" HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <DataItemTemplate>
                    <asp:LinkButton ID="lnk_HerbN" runat="server" Text='<%# Eval("articleName") %>' CommandArgument='<%# Eval("articleID") %>' 
                    OnCommand="ListItem_Command" Enabled="True" CommandName="OpenCreateArticle">
                    </asp:LinkButton>
                </DataItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="lbl_HerbN" runat="server" Text='<%# Eval("articleName") %>'></asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <%--<dx:GridViewDataColumn FieldName="article" VisibleIndex="1" Caption="เนื้อหาของบทความ"
                ReadOnly="True" HeaderStyle-HorizontalAlign="Center" Width="300px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_DherbName" runat="server" Text='<%# Eval("article") %>'>
                    </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>--%>
            <dx:GridViewDataColumn FieldName="articleCredit" VisibleIndex="2" Caption="ที่มาของบทความเพื่อสุขภาพ"
                ReadOnly="True" HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_DherbName" runat="server" Text='<%# Eval("articleCredit") %>'>
                    </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="dateArt" VisibleIndex="3" Caption="วันที่แก้ไข"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"
                Width="50px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_DherbName" runat="server" Text='<%# Eval("dateArt", "{0:d/MM/yyyy}") %>'>
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
    <asp:SqlDataSource ID="Article_SH" runat="server" ConnectionString="<%$ ConnectionStrings:SocialHerb %>"
        SelectCommand=" SELECT articleID,articleName,article,articleCredit, dateArt
                    FROM Article ORDER BY [dateArt] DESC"></asp:SqlDataSource>

                <br /><br />
<br />
<br />


</asp:Content>
