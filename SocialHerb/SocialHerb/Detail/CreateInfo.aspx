<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master"
    CodeBehind="CreateInfo.aspx.vb" Inherits="SocialHerb.CreateInfo" %>

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
    <%--<script type="text/javascript">
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
                    <asp:Label ID="lb_disease" runat="server" Text="Infographic" CssClass="labeltext_head"
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
                    ชื่อ Infographic :
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    รูป Infographic :
                </td>
                <td>
                    <dx:ASPxUploadControl ID="UploadControl" runat="server" ClientInstanceName="UploadControl"
                        Width="320" NullText="Select multiple files..." UploadMode="Auto" ShowUploadButton="True"
                        ShowProgressPanel="True">
                        <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                        <ValidationSettings MaxFileSize="4194304" AllowedFileExtensions=".jpg,.jpeg,.gif,.png">
                        </ValidationSettings>
                        <%--<ClientSideEvents FilesUploadStart="function(s, e) { DXUploadedFilesContainer.Clear(); }"
                              FileUploadComplete="onFileUploadComplete" />--%>
                    </dx:ASPxUploadControl>
                    <br />
                    <br />
                    <%--<p class="note">
                        <dx:ASPxLabel ID="AllowedFileExtensionsLabel" runat="server" Text="Allowed file extensions: .jpg, .jpeg, .gif, .png."
                            Font-Size="8pt">
                        </dx:ASPxLabel>
                        <br />
                        <dx:ASPxLabel ID="MaxFileSizeLabel" runat="server" Text="Maximum file size: 4 MB."
                            Font-Size="8pt">
                        </dx:ASPxLabel>
                    </p>--%>
                    <%-- <div>    
        <dx:UploadedFilesContainer ID="FileContainer" runat="server" Width="380" Height="180" 
            NameColumnWidth="240" SizeColumnWidth="70" HeaderText="Uploaded files" />
    </div>--%>
                    <%--<div class="contentFooter">
                        <p class="Note">
                            <b>Note</b>: All files uploaded to this demo will be automatically deleted in 5
                            minutes.
                        </p>
                    </div>--%>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    ที่มา :
                </td>
                <td>
                    <asp:TextBox ID="txt_Ref" runat="server" CssClass="textbox" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <%--<tr>
                <td align="right" class="style3" valign="top">
                    วันที่บันทึก :
                </td>
                <td>
                    <dx:ASPxDateEdit ID="DateEdit" ClientInstanceName="dateEdit" runat="server" NullText="mm/dd/yyyy"
                        EditFormat="Custom" EditFormatString="MM/dd/yyyy" Width="170px">
                        <ClearButton DisplayMode="OnHover">
                        </ClearButton>
                    </dx:ASPxDateEdit>
                </td>
            </tr>--%>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="btnUpdate" runat="server" Height="25px" Text="Update" Width="70px"
                        CssClass="button" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Height="25px" Text="Cancel" Width="70px"
                        CssClass="button" />
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
