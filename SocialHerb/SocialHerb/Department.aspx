<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Department.aspx.vb" Inherits="SocialHerb.Department" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>




<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<link href="Styles/Site.css" rel="Stylesheet" type="text/css" />


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>หน่วยงานที่เกี่ยวข้องกับสมุนไพร</h2>

         <div style="float: right; margin-left: 5px; margin-bottom: 10px;">
       <%-- <dx:ASPxButton ID="btn_AddDataArticle" runat="server" Text="Add New Article" AutoPostBack="false"
            RenderMode="Button">
        </dx:ASPxButton>--%>
        <asp:HyperLink  ID="hpDepartment" runat="server" align="center" ForeColor="#827717"  Font-Bold="true"
         Width="100%" Height="25px"  Style="text-align: center">Add New Department</asp:HyperLink>

    </div>

    <dx:ASPxGridView ID="gv_DepartmentShow" ClientInstanceName="gv_DepartmentShow" runat="server" 
         AutoGenerateColumns="False" EnableRowsCache="false" DataSourceID="Department_SH" KeyFieldName="DepartmentName"
        Width="100%" Style="text-align: center" Enabled="True">
        <Columns>
            <dx:GridViewDataColumn FieldName="DepartmentName" VisibleIndex="0" Caption="ชื่อหน่วยงาน"
                ReadOnly="True"  SortOrder="Descending" HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <%--<DataItemTemplate>
                    <asp:LinkButton ID="lnk_DEname" runat="server" Text='<%# Eval("DepartmentName") %>' CommandArgument='<%# Eval("DepartmentName") %>'
                    >
                            </asp:LinkButton>
                </DataItemTemplate>--%>
                <EditItemTemplate>
                    <asp:Label ID="lbl_DEname" runat="server" Text='<%# Eval("DepartmentName") %>' ></asp:Label>
                </EditItemTemplate>
               
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="Address" VisibleIndex="1" Caption="ที่อยู่"
                ReadOnly="True"  HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_Address" runat="server" Text='<%# Eval("Address") %>'>
                            </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="Role" VisibleIndex="2" Caption="บทบาทหน้าที่"
                ReadOnly="True"  HeaderStyle-HorizontalAlign="Center" Width="300px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_Role" runat="server" Text='<%# Eval("Role") %>'>
                            </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>      
            <dx:GridViewDataColumn FieldName="Website" VisibleIndex="3" Caption="Website"
                ReadOnly="True"  HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_Website" runat="server" Text='<%# Eval("Website") %>'>
                            </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>         
            <dx:GridViewDataColumn FieldName="DepartDate" VisibleIndex="4" Caption="วันที่แก้ไข" ReadOnly="True"
                CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Width="50px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_DepartDate" runat="server" Text='<%# Eval("DepartDate", "{0:d/MM/yyyy}") %>'>
                            </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="infoName" VisibleIndex="5" Caption="แก้ไขข้อมูล"
                ReadOnly="True"  HeaderStyle-HorizontalAlign="Center" Width="50px"  CellStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <DataItemTemplate>
                    <asp:LinkButton ID="lnk_HerbN" runat="server" Text="Edit"  PostBackUrl="~/Prototype/ProDepartment.aspx?DepartmentName=สถาบันวิจัยสมุนไพร">
                            </asp:LinkButton>
                </DataItemTemplate>
                
               <%-- <CellStyle HorizontalAlign="Center">
                </CellStyle>--%>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
        </Columns>
        <SettingsEditing Mode="Inline" />
        <%--<Settings ShowGroupPanel="true" />
        <SettingsBehavior AllowFocusedRow="True" />--%>
        <%-- <ClientSideEvents FocusedRowChanged="function(s, e) { OnGridFocusedRowChanged(); }" />--%>
        <SettingsSearchPanel Visible="true" />
         <Settings ShowFooter="True" />
            <SettingsPager>
                <PageSizeItemSettings Visible="true" Items="10, 20, 50" />
            </SettingsPager>
            <SettingsBehavior AllowFocusedRow="True" />
    </dx:ASPxGridView>

    <asp:SqlDataSource ID="Department_SH" runat="server" ConnectionString="<%$ ConnectionStrings:SocialHerb %>"
                    SelectCommand=" SELECT DepartmentName,Address,Role,Website,DepartDate
                    FROM Department ORDER BY [DepartDate] DESC">
                </asp:SqlDataSource>

                <br /><br />
<br />
<br />


</asp:Content>
