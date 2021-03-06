﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master"
    CodeBehind="CreateArticle.aspx.vb" Inherits="SocialHerb.CreateArticle" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 149px;
        }
        .style3
        {
            font-size: large;
            color: #3e2723;
        }
    </style>
    <%-- <script type="text/javascript">
        function onFileUploadComplete(s, e) {
            if (e.callbackData) {
                var fileData = e.callbackData.split('|');
                var fileName = fileData[0],
                    fileUrl = fileData[1],
                    fileSize = fileData[2];
                DXUploadedFilesContainer.AddFile(fileName, fileUrl, fileSize);
            }
        }
    </script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <table border="0" width="600">
            <tr style="height: 20px">
                <td colspan="3" style="background-image: url(Images/head6.jpg)">
                    <asp:Label ID="lb_disease" runat="server" Text="บทความเพื่อสุขภาพ" CssClass="labeltext_head"
                        Font-Bold="true" Font-Size="XX-Large" ForeColor="#827717"></asp:Label>
                </td>
            </tr>
        </table>
        <h2 align="right">
        </h2>
        <asp:Label ID="lblErrorEdit" runat="server" ForeColor="Red"></asp:Label>
        <asp:TextBox ID="txtID" runat="server" Visible="false"></asp:TextBox>
        <table border="0" width="600">
            <tr>
                <td align="right" class="style3">
                    ชื่อบทความ :
                </td>
                <td>
                    <asp:TextBox ID="txtNameA" runat="server" CssClass="textbox" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    รูปที่เกี่ยวข้องกับบทความ :
                </td>
                <td>
                    <dx:ASPxUploadControl ID="UploadControl" runat="server" ClientInstanceName="UploadControl"
                        Width="320" NullText="Select multiple files..." UploadMode="Advanced" ShowUploadButton="True"
                        ShowProgressPanel="True">
                        <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                        <ValidationSettings MaxFileSize="4194304" AllowedFileExtensions=".jpg,.jpeg,.gif,.png">
                        </ValidationSettings>
                        <%--<ClientSideEvents FilesUploadStart="function(s, e) { DXUploadedFilesContainer.Clear(); }"
                              FileUploadComplete="onFileUploadComplete" />--%>
                    </dx:ASPxUploadControl>
                    <br />
                    <br />
                    <p class="note">
                        <dx:ASPxLabel ID="AllowedFileExtensionsLabel" runat="server" Text="Allowed file extensions: .jpg, .jpeg, .gif, .png."
                            Font-Size="8pt">
                        </dx:ASPxLabel>
                        <br />
                        <dx:ASPxLabel ID="MaxFileSizeLabel" runat="server" Text="Maximum file size: 4 MB."
                            Font-Size="8pt">
                        </dx:ASPxLabel>
                    </p>
                    <%--
    <div>
        <dx:UploadedFilesContainer ID="FileContainer" runat="server" Width="380" Height="180" 
            NameColumnWidth="240" SizeColumnWidth="70" HeaderText="Uploaded files" />
    </div>
    <div class="contentFooter">
        <p class="Note">
            <b>Note</b>: All files uploaded to this demo will be automatically deleted in 5 minutes.
        </p>
    </div>--%>
                </td>
            </tr>
           <%-- <tr>
                <td align="center">
                    <dx:LayoutGroup Caption="Control" AlignItemCaptions="true" GroupBoxDecoration="None"
                        RowSpan="2">
                        <items>
                    <dx:LayoutItem ShowCaption="False">
                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>
                                <dx:ASPxBinaryImage ID="BinaryImage" ClientInstanceName="ClientBinaryImage" 
            Width="200" Height="200" ShowLoadingImage="true" LoadingImageUrl="~/Content/Loading.gif" runat="server">
                                        <EditingSettings Enabled="true"> 
                                            <UploadSettings>
                                                <UploadValidationSettings MaxFileSize="4194304"></UploadValidationSettings>
                                            </UploadSettings>
                                        </EditingSettings>
                                </dx:ASPxBinaryImage>
                            </dx:LayoutItemNestedControlContainer>
                        </LayoutItemNestedControlCollection>
                        <ParentContainerStyle>
                            <Paddings PaddingRight="60" />
                        </ParentContainerStyle>
                    </dx:LayoutItem>
                </items>
                    </dx:LayoutGroup>
                    <%-- <dx:ASPxGridView ID="GridView" runat="server" AutoGenerateColumns="False" 
                        KeyFieldName="ID" Width="500">
                        <Columns>
                            <dx:GridViewCommandColumn ShowEditButton="true" ShowNewButtonInHeader="true" CellStyle-VerticalAlign="Top" />
                            <dx:GridViewDataMemoColumn FieldName="Text" VisibleIndex="1" CellStyle-VerticalAlign="Top">
                                <PropertiesMemoEdit Height="148" Width="250">
                                    <ValidationSettings ErrorDisplayMode="ImageWithTooltip">
                                        <RequiredField IsRequired="True" ErrorText="Text cannot be empty" />
                                    </ValidationSettings>
                                </PropertiesMemoEdit>
                            </dx:GridViewDataMemoColumn>
                            <dx:GridViewDataBinaryImageColumn FieldName="Picture" VisibleIndex="2" Width="150">
                                <PropertiesBinaryImage ImageHeight="150" ImageWidth="225" EnableServerResize="True">
                                    <EditingSettings Enabled="true" UploadSettings-UploadValidationSettings-MaxFileSize="4194304" />
                                </PropertiesBinaryImage>
                            </dx:GridViewDataBinaryImageColumn>
                        </Columns>
                        <SettingsPager AlwaysShowPager="True" PageSize="4" />
                        <SettingsEditing UseFormLayout="True" Mode="EditForm" EditFormColumnCount="3" />
                        <EditFormLayoutProperties ColCount="2" SettingsItemCaptions-Location="Top">
                            <Items>
                                <dx:GridViewColumnLayoutItem ColumnName="Text" RequiredMarkDisplayMode="Hidden" VerticalAlign="Top" />
                                <dx:GridViewColumnLayoutItem ColumnName="Picture" HorizontalAlign="Right" HelpText="You can upload JPG, GIF or PNG file. Maximum fils size is 4MB." />
                                <dx:EditModeCommandLayoutItem ColSpan="2" ShowCancelButton="true" ShowUpdateButton="true"
                                    HorizontalAlign="Right" />
                            </Items>
                        </EditFormLayoutProperties>
                    </dx:ASPxGridView>
                    <demo:DemoDataSource runat="server" ID="DemoDataSource1" IdentityKey="ID" DataSourceID="ImagesDataSource"></demo:DemoDataSource>
    <ef:EntityDataSource runat="server" ID="ImagesDataSource" ContextTypeName="BinaryImagesContext" EntitySetName="BinaryImages" EnableInsert="true" EnableUpdate="true"/>

                    
                </td>
            </tr>--%>
            <tr>
                <td align="right" class="style3" valign="top">
                    เนื้อหา :
                </td>
                <td>
                    <asp:TextBox ID="txtDetailA" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    ที่มา :
                </td>
                <td>
                    <asp:TextBox ID="txtRefA" runat="server" CssClass="textbox" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="btnUpdate" runat="server" Height="25px" Text="Update" Width="70px"
                        CssClass="button" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnDelete" runat="server" Height="25px" Text="Delete" Width="70px"
                        CssClass="button" />
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
