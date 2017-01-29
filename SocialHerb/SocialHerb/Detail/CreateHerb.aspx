﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master"
    CodeBehind="CreateHerb.aspx.vb" Inherits="SocialHerb.CreateHerb" %>

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
                    <asp:Label ID="Label1" runat="server" Text="สมุนไพร" CssClass="labeltext_head" Font-Bold="true"
                        Font-Size="XX-Large" ForeColor="#827717"></asp:Label>
                </td>
            </tr>
        </table>
        <h2 align="right">
        </h2>
        <asp:Label ID="lblErrorEdit" runat="server" ForeColor="Red"></asp:Label>
        <asp:TextBox ID="txtID" runat="server" Visible="false"></asp:TextBox>
        <asp:TextBox ID="txt_REid" runat="server" Visible="false"></asp:TextBox>
        <asp:TextBox ID="txt_HerbImgid" runat="server" Visible="false"></asp:TextBox>
        <table border="0" width="600">
            <tr>
                <td align="right" class="style3">
                    ชื่อสมุนไพร :
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" CssClass="textbox" Width="199px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    ชื่อสมุนไพร (อื่นๆ) :
                </td>
                <td>
                    <asp:TextBox ID="txt_OtherName" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    รูปสมุนไพร :
                </td>
                <td>
                    <dx:ASPxUploadControl ID="UploadControl" runat="server" ClientInstanceName="UploadControl"
                        Width="320" NullText="Select multiple files..." UploadMode="Advanced" ShowUploadButton="True"
                        ShowProgressPanel="True">
                        <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                        <ValidationSettings MaxFileSize="4194304" AllowedFileExtensions=".jpg,.jpeg,.gif,.png">
                        </ValidationSettings>
                    </dx:ASPxUploadControl>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    วิธีการนำไปใช้ :
                </td>
                <td>
                    <asp:TextBox ID="txt_Howto" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    ข้อควรระวัง :
                </td>
                <td>
                    <asp:TextBox ID="txt_warnnig" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                    ลักษณะทั่วไป :
                </td>
                <td>
                    <asp:TextBox ID="txt_Properties" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
            </tr>        
            <tr>
            
                <td align="right" class="style3">
                    ชื่องานวิจัยที่เกี่ยวข้อง :
                </td>
                <td>
                    <asp:TextBox ID="txt_RefName" runat="server" CssClass="textbox" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    ที่มาของงานวิจัย :
                </td>
                <td>
                    <asp:TextBox ID="txt_RefRe" runat="server" CssClass="textbox" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3">
                    Link งานวิจัย :
                </td>
                <td>
                    <asp:TextBox ID="txt_LinkRe" runat="server" CssClass="textbox" Width="400px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <table border="0" width="1000px">
            <tr>
                <td align="right" class="style3" valign="top">
                    ลักษณะใบ :
                </td>
                <td>
                    <asp:TextBox ID="txt_leaf" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
                <%-- <td align="right" class="style3">
                    รูปใบ :
                </td>--%>
                <td>
                    <dx:ASPxUploadControl ID="ASPxUploadControl1" runat="server" ClientInstanceName="UploadControl"
                        Width="320" NullText="เลือกรูปใบ..." UploadMode="Advanced" ShowUploadButton="True"
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
                    ลักษณะราก :
                </td>
                <td>
                    <asp:TextBox ID="txt_Root" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
                <%--<td align="right" class="style3">
                    รูปราก :
                </td>--%>
                <td>
                    <dx:ASPxUploadControl ID="ASPxUploadControl2" runat="server" ClientInstanceName="UploadControl"
                        Width="320" NullText="เลือกรูปราก..." UploadMode="Advanced" ShowUploadButton="True"
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
                    ลักษณะลำต้น :
                </td>
                <td>
                    <asp:TextBox ID="txt_trunk" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
                <%--<td align="right" class="style3">
                    รูปลำต้น :
                </td>--%>
                <td>
                    <dx:ASPxUploadControl ID="ASPxUploadControl3" runat="server" ClientInstanceName="UploadControl"
                        Width="320" NullText="เลือกรูปลำต้น..." UploadMode="Advanced" ShowUploadButton="True"
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
                    ลักษณะเมล็ด :
                </td>
                <td>
                    <asp:TextBox ID="txt_Seed" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
                <%--<td align="right" class="style3">
                    รูปเมล็ด :
                </td>--%>
                <td>
                    <dx:ASPxUploadControl ID="ASPxUploadControl4" runat="server" ClientInstanceName="UploadControl"
                        Width="320" NullText="เลือกรูปเมล็ด..." UploadMode="Advanced" ShowUploadButton="True"
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
                    ลักษณะผล :
                </td>
                <td>
                    <asp:TextBox ID="txt_Fruit" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
                <%-- <td align="right" class="style3">
                    รูปผล :
                </td>--%>
                <td>
                    <dx:ASPxUploadControl ID="ASPxUploadControl5" runat="server" ClientInstanceName="UploadControl"
                        Width="320" NullText="เลือกรูปผล..." UploadMode="Advanced" ShowUploadButton="True"
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
                    ลักษณะกิ่ง :
                </td>
                <td>
                    <asp:TextBox ID="txt_Branch" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
                <%-- <td align="right" class="style3">
                    รูปกิ่ง :
                </td>--%>
                <td>
                    <dx:ASPxUploadControl ID="ASPxUploadControl6" runat="server" ClientInstanceName="UploadControl"
                        Width="320" NullText="เลือกรูปกิ่ง..." UploadMode="Advanced" ShowUploadButton="True"
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
                    ลักษณะดอก :
                </td>
                <td>
                    <asp:TextBox ID="txt_Flower" runat="server" Height="100px" TextMode="MultiLine" Width="400px"
                        CssClass="textbox">
                    </asp:TextBox>
                </td>
                <%-- <td align="right" class="style3" style=" vertical-align:inherit;">
                    รูปดอก :
                </td>--%>
                <td>
                    <dx:ASPxUploadControl ID="ASPxUploadControl7" runat="server" ClientInstanceName="UploadControl"
                        Width="320" NullText="เลือกรูปดอก..." UploadMode="Advanced" ShowUploadButton="True"
                        ShowProgressPanel="True">
                        <AdvancedModeSettings EnableMultiSelect="True" EnableFileList="True" EnableDragAndDrop="True" />
                        <ValidationSettings MaxFileSize="4194304" AllowedFileExtensions=".jpg,.jpeg,.gif,.png">
                        </ValidationSettings>
                        <%--<ClientSideEvents FilesUploadStart="function(s, e) { DXUploadedFilesContainer.Clear(); }"
                              FileUploadComplete="onFileUploadComplete" />--%>
                    </dx:ASPxUploadControl>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="btnUpdate" runat="server" Height="25px" Text="Update" Width="70px"
            CssClass="button" />
        &nbsp;&nbsp;
        <asp:Button ID="btnCancel" runat="server" Height="25px" Text="Cancel" Width="70px"
            Visible="false" CssClass="button" />
    </center>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
