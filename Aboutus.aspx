<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Aboutus.aspx.vb" Inherits="Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
        <br />
            <asp:HyperLink ID="HyperLink_Home" runat="server" NavigateUrl="~/default.aspx">Home</asp:HyperLink>
&nbsp;
        <asp:HyperLink ID="newrecipelink" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
        &nbsp;
            <asp:HyperLink ID="HyperLink_AU" runat="server" NavigateUrl="~/Aboutus.aspx">About Us</asp:HyperLink>
&nbsp;
            <asp:HyperLink ID="HyperLink_Contact" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
        </p>
    <div>
    
    </div>
    </form>
</body>
</html>
