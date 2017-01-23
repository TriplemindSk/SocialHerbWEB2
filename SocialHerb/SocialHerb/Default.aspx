<%@ Page Title="Home Page" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.vb" Inherits="SocialHerb._Default" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
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
                <%-- <TextTemplate>
                    <h3 class='isdemoH3'>Smile</h3>
                    <p>It takes 17 muscles to smile and 43 to frown. <a tabindex="-1" href='javascript:void(1);'>Details »</a></p>
                </TextTemplate>--%>
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
            <ImageArea Width="1300" Height="700" />
        </Styles>
        <SettingsImageArea ImageSizeMode="FillAndCrop" NavigationButtonVisibility="Always"
            EnableLoopNavigation="true" />
        <SettingsNavigationBar Mode="Dots" ItemSpacing="0" />
    </dx:ASPxImageSlider>
    <h1>
        สมุนไพรที่แก้ไขล่าสุด</h1>
    <dx:ASPxGridView ID="gv_Herb" ClientInstanceName="grid" runat="server" KeyFieldName="EmployeeID"
        PreviewFieldName="Notes" AutoGenerateColumns="False" EnableRowsCache="false"
        Width="100%">
        <Columns>
            <dx:GridViewDataColumn FieldName="HerbName" VisibleIndex="0" Caption="ชื่อสมุนไพร"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" SortOrder="Descending" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
                <DataItemTemplate>
                    <asp:LinkButton ID="lnk_HerbN" runat="server" Text='<%# Eval("HerbName") %>' CommandArgument='<%# Eval("HerbName") %>'>
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
            <dx:GridViewDataColumn FieldName="Img" VisibleIndex="3" Caption="รูปภาพ" ReadOnly="True"
                CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="Date" VisibleIndex="4" Caption="วันที่แก้ไข" ReadOnly="True"
                CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
            </dx:GridViewDataColumn>
        </Columns>
        <SettingsEditing Mode="Inline" />
    </dx:ASPxGridView>
    <h1>
        อาการ/โรคที่แก้ไขล่าสุด</h1>
    <dx:ASPxGridView ID="gv_Disease" ClientInstanceName="grid" runat="server" KeyFieldName="EmployeeID"
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
    </dx:ASPxGridView>
    <h1>
        บทความเพื่อสุขภาพที่แก้ไขล่าสุด</h1>
    <dx:ASPxGridView ID="gv_Article" ClientInstanceName="grid" runat="server" KeyFieldName="EmployeeID"
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
            <dx:GridViewDataColumn FieldName="ArticleImg" VisibleIndex="3" Caption="รูปภาพ" ReadOnly="True"
                CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="Date" VisibleIndex="4" Caption="วันที่แก้ไข" ReadOnly="True"
                CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
            </dx:GridViewDataColumn>
        </Columns>
        <SettingsEditing Mode="Inline" />
    </dx:ASPxGridView>
    <h1>
        Infographic ที่แก้ไขล่าสุด</h1>
    <dx:ASPxGridView ID="gv_Info" ClientInstanceName="grid" runat="server" KeyFieldName="EmployeeID"
        PreviewFieldName="Notes" AutoGenerateColumns="False" EnableRowsCache="false"
        Width="100%">
        <Columns>
            <dx:GridViewDataColumn FieldName="InfoName" VisibleIndex="0" Caption="ชื่อ Infographic"
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
            <dx:GridViewDataColumn FieldName="Ref_Info" VisibleIndex="1" Caption="ที่มาของ Infographic"
                ReadOnly="True" CellStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
                <EditCellStyle HorizontalAlign="Center">
                </EditCellStyle>
            </dx:GridViewDataColumn>
            <dx:GridViewDataColumn FieldName="InfoImg" VisibleIndex="2" Caption="รูปภาพ" ReadOnly="True"
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
    </dx:ASPxGridView>
</asp:Content>
