<%@ Page  Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="SocialHerb.Login" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body bgcolor="#ccff90" background="../Images/NEW.jpg">
    <form id="form1" runat="server">
    <center>
        <div id="div_bg" runat="server" >

      <%--<h1 style="font-family: 'Angsana New'; font-size: 15px; text-align: center; color: #FFFFFF;">
                &nbsp;</h1>
        
        <div id="div_logo" runat="server" style=" background-image: url('http://localhost:52273/Images/logonew.png');
            height: 150px; width: 188px; margin-left:50px; margin-bottom:50;"></div>--%>

            <h1 style="font-family: 'Angsana New'; font-size: 70px; text-align: center; color: #FFFFFF;">
                &nbsp;</h1>
           

<%--bgcolor="#64dd17"--%>
   
    <%--<p>
        Please enter your username and password.
        <%--<asp:HyperLink ID="RegisterHyperLink" runat="server" EnableViewState="false">Register</asp:HyperLink> if you don't have an account.
    </p>--%>

    
    <div style=" border: 5px solid #757575; border-radius: 20px; background-color:White; 
                    padding :10px 10px 10px 10px; width:450px; box-shadow: 10px 10px 30px #888888; "> 


    <asp:Login ID="LoginUser" runat="server" EnableViewState="false" RenderOuterTable="false">
        <LayoutTemplate>
            <span class="failureNotification">
                <asp:Literal ID="FailureText" runat="server"></asp:Literal>
            </span>
            <asp:ValidationSummary ID="LoginUserValidationSummary" runat="server" CssClass="failureNotification" 
                 ValidationGroup="LoginUserValidationGroup" ForeColor="#ff0000"/>
            <div class="accountInfo">
                <fieldset class="login">
                    <legend style="color: #827717; font-style:inherit; font-size:xx-large;">Log In</legend>

                    <p style="color: #696969;">
                    Please enter your username and password.
                    </p>
                    <p>
                     
                        <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Username:</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                             CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                        <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password" ReadOnly="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                             CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                             ValidationGroup="LoginUserValidationGroup">*</asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:CheckBox ID="RememberMe" runat="server"/>
                        <asp:Label ID="RememberMeLabel" runat="server" AssociatedControlID="RememberMe" CssClass="inline">Keep me logged in</asp:Label>
                        <%--<asp:Label ID="FailureText" runat="server" Text="Incorrect Password Or Username!!" Visible="false"></asp:Label>--%>
                    </p>
                </fieldset>
                <p>
                    <asp:Button ID="LoginButtondd" runat="server" Text="Log In" ValidationGroup="LoginUserValidationGroup"  CssClass="button" Visible="false"/>
                </p>
            </div>
        </LayoutTemplate>
    </asp:Login>
    <p>
    <asp:Button ID="LoginButton" runat="server" Text="Log In" ValidationGroup="LoginUserValidationGroup"  CssClass="button" />
    </p>
     </div>
           
        </div>
    </center>
    </form>
</body>
</html>