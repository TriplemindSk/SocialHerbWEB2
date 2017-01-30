<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master"
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
            color: #3e2723 ;
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
                    <asp:Label ID="lb_disease" runat="server" Text="บทความเพื่อสุขภาพ" CssClass="labeltext_head"
                        Font-Bold="true" Font-Size="XX-Large" ForeColor="#827717"></asp:Label>
                </td>
            </tr>
        </table>
        <h2 align="right"></h2>
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
                </td>
            </tr>
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
