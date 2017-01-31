<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Food.aspx.vb" Inherits="SocialHerb.Food" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">

<link href="Styles/Site.css" rel="Stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<h2>อาหารเพื่อสุขภาพ</h2>

<div style="float: right; margin-left: 5px; margin-bottom: 10px;">
       <%-- <dx:ASPxButton ID="btn_AddDataArticle" runat="server" Text="Add New Article" AutoPostBack="false"
            RenderMode="Button">
        </dx:ASPxButton>--%>
        <asp:HyperLink  ID="hpFood" runat="server" align="center" ForeColor="#827717"  Font-Bold="true"
         Width="100%" Height="25px"  Style="text-align: center">Add New Food</asp:HyperLink>

    </div>

    <dx:ASPxGridView ID="gv_FoodShow" ClientInstanceName="gv_FoodShow" runat="server" KeyFieldName="FoodName"
        AutoGenerateColumns="False" EnableRowsCache="false" DataSourceID="Food_SH"
        Width="100%" Style="text-align: center" Enabled="True">
        <Columns>
            <dx:GridViewDataColumn FieldName="FoodName" VisibleIndex="0" Caption="ชื่ออาหาร" 
                ReadOnly="True"  SortOrder="Descending" HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <%--<DataItemTemplate>
                    <asp:LinkButton ID="lnk_FoodName" runat="server" Text='<%# Eval("FoodName") %>' CommandArgument='<%# Eval("FoodName") %>'>
                            </asp:LinkButton>
                </DataItemTemplate>--%>
                <EditItemTemplate>
                    <asp:Label ID="lbl_FoodName" runat="server" Text='<%# Eval("FoodName") %>'></asp:Label>
                </EditItemTemplate>
               
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="Ingredient" VisibleIndex="1" Caption="ส่วนผสม"
                ReadOnly="True"  HeaderStyle-HorizontalAlign="Center" Width="300px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_Ingredient" runat="server" Text='<%# Eval("Ingredient") %>'>
                            </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="Benefit" VisibleIndex="2" Caption="คุณประโยชน์"
                ReadOnly="True"  HeaderStyle-HorizontalAlign="Center" Width="300px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_Benefit" runat="server" Text='<%# Eval("Benefit") %>'>
                            </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>      
            <dx:GridViewDataColumn FieldName="Ref" VisibleIndex="3" Caption="ที่มา"
                ReadOnly="True"  HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_Ref" runat="server" Text='<%# Eval("Ref") %>'>
                            </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>         
            <dx:GridViewDataColumn FieldName="FoodDate" VisibleIndex="4" Caption="วันที่แก้ไข" ReadOnly="True"
                CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" Width="50px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_FoodDate" runat="server" Text='<%# Eval("FoodDate", "{0:d/MM/yyyy}") %>'>
                            </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="infoName" VisibleIndex="5" Caption="แก้ไขข้อมูล"
                ReadOnly="True"  HeaderStyle-HorizontalAlign="Center" Width="50px"  CellStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <DataItemTemplate>
                    <asp:LinkButton ID="lnk_HerbN" runat="server" Text="Edit"  PostBackUrl="~/Prototype/ProFood.aspx?FoodName=ตำข้าวโพดใส่ไข่เค็ม เพื่อสุขภาพ">
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

    <asp:SqlDataSource ID="Food_SH" runat="server" ConnectionString="<%$ ConnectionStrings:SocialHerb %>"
                    SelectCommand=" SELECT FoodName,Ingredient,Benefit,Ref,FoodDate
                    FROM Food ORDER BY [FoodDate] DESC">
                </asp:SqlDataSource>

                <br /><br />
<br />
<br />




</asp:Content>
