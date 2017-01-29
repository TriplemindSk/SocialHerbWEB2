<%@ Page Title="About Us" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="About.aspx.vb" Inherits="SocialHerb.About" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
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
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <center>
        <table border="0" width="600">
            <tr style="height: 20px">
                <td colspan="3" style="background-image: url(Images/head6.jpg)">
                    <asp:Label ID="lb_disease" runat="server" Text="สร้างผู้ใช้งาน" CssClass="labeltext_head"
                        Font-Bold="true" Font-Size="XX-Large" ForeColor="#827717"></asp:Label>
                        <br /><br /><br />
                </td>
            </tr>
        </table>
        <h2 align="right"></h2>
        <asp:Label ID="lblErrorEdit" runat="server" ForeColor="Red"></asp:Label>
        <asp:TextBox ID="txtID" runat="server" Visible="false"></asp:TextBox>
        <table border="0" width="600">
            <tr>
                <td align="right" class="style3">
                    Username :
                </td>
                <td>
                    <asp:TextBox ID="txtUser" runat="server" CssClass="textbox" Width="199px"></asp:TextBox>
                    
                </td>
            </tr>
            
            <tr>
                <td align="right" class="style3" valign="top">
                    Password :
                </td>
                <td>
                    <asp:TextBox ID="txtPass" runat="server" CssClass="textbox" Width="199px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" class="style3" valign="top">
                   Confirm Password :
                </td>
                <td>
                    <asp:TextBox ID="txtRe" runat="server" CssClass="textbox" Width="199px" TextMode="Password"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
            
                <td align="center" colspan="2"><br /><br /><br />
                    <asp:Button ID="btnUpdate" runat="server" Height="25px" Text="Create" Width="70px"
                        CssClass="button" />
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Height="25px" Text="Cancel" Width="70px" Visible="false"
                        CssClass="button" />
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
