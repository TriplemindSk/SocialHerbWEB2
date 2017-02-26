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
        DataSourceID="Herb_SH" Width="100%">
        <Columns>
            <dx:GridViewDataColumn FieldName="HerbName" VisibleIndex="0" Caption="ชื่อสมุนไพร"
                ReadOnly="True" SortOrder="Descending" HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <DataItemTemplate>
                    <asp:LinkButton ID="lnk_HerbN" runat="server" Text='<%# Eval("herbName") %>' CommandArgument='<%# Eval("herbName") %>'>
                    </asp:LinkButton>
                </DataItemTemplate>
                <EditItemTemplate>
                    <asp:Label ID="lbl_HerbN" runat="server" Text='<%# Eval("herbName") %>'></asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="HerbOtherName" VisibleIndex="1" Caption="ชื่อสมุนไพร(อื่นๆ)"
                ReadOnly="True" HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_HerbOtherName" runat="server" Text='<%# Eval("herbOtherName") %>'>
                    </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="Properties" VisibleIndex="2" Caption="ลักษณะทั่วไป"
                ReadOnly="True" HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_Properties" runat="server" Text='<%# Eval("properties") %>'>
                    </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="researchName" VisibleIndex="3" Caption="งานวิจัยที่เกี่ยวข้อง"
                ReadOnly="True" HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_researchName" runat="server" Text='<%# Eval("researchName") %>'>
                    </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="dateHerb" VisibleIndex="4" Caption="วันที่แก้ไข"
                ReadOnly="True" HeaderStyle-HorizontalAlign="Center" Width="50px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_dateHerb" runat="server" Text='<%# Eval("dateHerb", "{0:d/MM/yyyy}") %>'>
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
    <asp:SqlDataSource ID="Herb_SH" runat="server" ConnectionString="<%$ ConnectionStrings:SocialHerb %>"
        SelectCommand=" SELECT Herb.herbName,Herb.herbOtherName,Herb.properties,Herb.dateHerb,HerbResearch.researchName 
                    FROM Herb LEFT OUTER JOIN HerbResearch ON herbID = HerbResearch.researchID
                     ORDER BY [dateHerb] DESC"></asp:SqlDataSource>


<br /><br />
<br />
<br />

</asp:Content>
