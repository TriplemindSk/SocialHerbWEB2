﻿<%@ Page Title="Home Page" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.vb" Inherits="SocialHerb._Default" %>

<%@ Register Assembly="DevExpress.Web.Bootstrap.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.Bootstrap" TagPrefix="dx" %>


<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" 
namespace="DevExpress.Web" tagprefix="dx" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <link href="Styles/Site.css" rel="Stylesheet" type="text/css" />
   
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <dx:ASPxImageSlider ID="ASPxImageSlider1" runat="server" ClientInstanceName="ImageSlider" 
        EnableViewState="False" EnableTheming="False" NavigateUrlFormatString="javascript:void({0});">

        <SettingsImageArea ImageSizeMode="ActualSizeOrFit" NavigationButtonVisibility="None"
            ItemTextVisibility="Always" EnableLoopNavigation="true" />
        <SettingsNavigationBar Mode="Dots" />
        <SettingsSlideShow AutoPlay="true" StopPlayingWhenPaging="false" PausePlayingWhenMouseOver="false"
            PlayPauseButtonVisibility="Faded"></SettingsSlideShow>
        <Items>
            <dx:ImageSliderItem ImageUrl="Images/slide1.jpg" NavigateUrl="1">             
            </dx:ImageSliderItem>
            <dx:ImageSliderItem ImageUrl="Images/slide2.jpg" NavigateUrl="2">
            </dx:ImageSliderItem>
            <dx:ImageSliderItem ImageUrl="Images/slide3.jpg" NavigateUrl="3">
            </dx:ImageSliderItem>
            <dx:ImageSliderItem ImageUrl="Images/slide4.jpg" NavigateUrl="4">
            </dx:ImageSliderItem>
            <dx:ImageSliderItem ImageUrl="Images/slide5.jpg" NavigateUrl="5">
            </dx:ImageSliderItem>
        </Items>
        <Styles>
            <ImageArea Width="1300px" Height="700px" />
        </Styles>
        <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="Always"
            EnableLoopNavigation="true" />
        <SettingsNavigationBar Mode="Dots" ItemSpacing="0" />
    </dx:ASPxImageSlider>
    <dx:ASPxImageSlider ID="ASPxImageSlider2" runat="server" 
        BinaryImageCacheFolder="~\Thumb\">
    </dx:ASPxImageSlider>






    <h1>
        สมุนไพรที่แก้ไขล่าสุด</h1>
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
            <dx:GridViewDataColumn FieldName="herbOtherName" VisibleIndex="1" Caption="ชื่อสมุนไพร(อื่นๆ)"
                ReadOnly="True" HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <EditItemTemplate>
                    <asp:Label ID="lbl_HerbOtherName" runat="server" Text='<%# Eval("herbOtherName") %>'>
                    </asp:Label>
                </EditItemTemplate>
                <Settings AutoFilterCondition="Contains" />
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="properties" VisibleIndex="2" Caption="ลักษณะทั่วไป"
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
        <%--<Settings ShowFooter="True" />--%>
        <Styles>
            <AlternatingRow Enabled="true" />
        </Styles>
        <%--<SettingsPager>
                <PageSizeItemSettings Visible="true" Items="10, 20, 50" />
            </SettingsPager>--%>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="Herb_SH" runat="server" ConnectionString="<%$ ConnectionStrings:SocialHerb %>"
        SelectCommand=" SELECT Herb.herbName,Herb.herbOtherName,Herb.properties,Herb.dateHerb,HerbResearch.researchName 
                    FROM Herb LEFT OUTER JOIN HerbResearch ON herbID = HerbResearch.researchID
                     ORDER BY [dateHerb] DESC"></asp:SqlDataSource>







    <h1>
        อาการ/โรคที่แก้ไขล่าสุด</h1>
    <dx:ASPxGridView ID="gv_DiseaseShow" ClientInstanceName="gv_DiseaseShow" runat="server"
        KeyFieldName="diseaseID" AutoGenerateColumns="False" EnableRowsCache="false"
        DataSourceID="Disease_SH" Width="100%" Style="text-align: center" Enabled="True">
        <Columns>
            <dx:GridViewDataColumn FieldName="diseaseName" VisibleIndex="0" Caption="ชื่ออาการ/โรค"
                ReadOnly="True" SortOrder="Descending" HeaderStyle-HorizontalAlign="Center" Width="30px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <DataItemTemplate>
                    <asp:LinkButton ID="lnk_HerbN" runat="server" Text='<%# Eval("diseaseName") %>' CommandArgument='<%# Eval("diseaseName") %>'>
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
        <Styles>
            <AlternatingRow Enabled="true" />
        </Styles>
        <%--<Settings ShowFooter="True" />--%>
        <%--<SettingsPager>
                <PageSizeItemSettings Visible="true" Items="5" />
            </SettingsPager>--%>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="Disease_SH" runat="server" ConnectionString="<%$ ConnectionStrings:SocialHerb %>"
        SelectCommand=" SELECT TOP 5 diseaseID,diseaseName, Symptom, herb, howtoRelief,dateDisease 
                    FROM Disease  ORDER BY [dateDisease] DESC"></asp:SqlDataSource>
    <h1>
        บทความเพื่อสุขภาพที่แก้ไขล่าสุด</h1>
    <dx:ASPxGridView ID="gv_ArticleShow" ClientInstanceName="grid" runat="server" KeyFieldName="EmployeeID"
        PreviewFieldName="Notes" AutoGenerateColumns="False" EnableRowsCache="false"
        DataSourceID="Article_SH" Width="100%">
        <Columns>
            <dx:GridViewDataColumn FieldName="articleName" VisibleIndex="0" Caption="ชื่อบทความ"
                ReadOnly="True" SortOrder="Descending" HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <DataItemTemplate>
                    <asp:LinkButton ID="lnk_HerbN" runat="server" Text='<%# Eval("articleName") %>' CommandArgument='<%# Eval("articleName") %>'>
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
        <%--<Settings ShowGroupPanel="true" />
        <SettingsBehavior AllowFocusedRow="True" />--%>
        <%-- <ClientSideEvents FocusedRowChanged="function(s, e) { OnGridFocusedRowChanged(); }" />--%>
        <%--<SettingsSearchPanel Visible="true" />--%>
        <%--<Settings ShowFooter="True" />--%>
        <%--<SettingsPager>
                <PageSizeItemSettings Visible="true" Items="10, 20, 50" />
            </SettingsPager>--%>
        <Styles>
            <AlternatingRow Enabled="true" />
        </Styles>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="Article_SH" runat="server" ConnectionString="<%$ ConnectionStrings:SocialHerb %>"
        SelectCommand=" SELECT TOP 5 articleName,article,articleCredit,dateArt
                    FROM Article ORDER BY [dateArt] DESC"></asp:SqlDataSource>


    <h1>
        Infographic ที่แก้ไขล่าสุด</h1>
    <dx:ASPxGridView ID="gv_InfoShow" ClientInstanceName="grid" runat="server" KeyFieldName="EmployeeID"
        PreviewFieldName="Notes" AutoGenerateColumns="False" EnableRowsCache="false"
        DataSourceID="Info_SH" Width="100%">
        <Columns>
            <dx:GridViewDataColumn FieldName="infoName" VisibleIndex="0" Caption="ชื่อ Infographic"
                ReadOnly="True" SortOrder="Descending" HeaderStyle-HorizontalAlign="Center" Width="100px">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <DataItemTemplate>
                    <asp:LinkButton ID="lnk_HerbN" runat="server" Text='<%# Eval("infoName") %>' CommandArgument='<%# Eval("infoName") %>'>
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
        <%--<Settings ShowGroupPanel="true" />
        <SettingsBehavior AllowFocusedRow="True" />--%>
        <%-- <ClientSideEvents FocusedRowChanged="function(s, e) { OnGridFocusedRowChanged(); }" />--%>
        <%--<SettingsSearchPanel Visible="true" />--%>
        <%--<Settings ShowFooter="True" />
        <SettingsPager>
            <PageSizeItemSettings Visible="true" Items="10, 20, 50" />
        </SettingsPager>--%>
        <Styles>
            <AlternatingRow Enabled="true" />
        </Styles>
        <%--<Settings ShowFooter="True" />--%>
    </dx:ASPxGridView>
    <asp:SqlDataSource ID="Info_SH" runat="server" ConnectionString="<%$ ConnectionStrings:SocialHerb %>"
        SelectCommand=" SELECT TOP 5 infoName,creditInfo,dateInfo
                    FROM Infographic  ORDER BY [dateInfo] DESC"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
