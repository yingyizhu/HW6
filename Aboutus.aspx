<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Aboutus.aspx.vb" Inherits="Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">

    <link rel="stylesheet" type="text/css" href="StyleSheet.css" media="screen"/>
    <title>About Us</title>

</head>


<body style="text-align: center">
    <form id="form1" runat="server">
      
        <h1>Great Recipes</h1>

        <h2>Using 5 Ingedients or Less!</h2>

        <nav>
            <asp:HyperLink ID="HyperLink_Home" runat="server" BorderStyle="None" NavigateUrl="~/default.aspx">Home</asp:HyperLink>
    &nbsp;
            <asp:HyperLink ID="newrecipelink" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
            &nbsp;
            <asp:HyperLink ID="HyperLink_AU" runat="server" NavigateUrl="~/Aboutus.aspx">About Us</asp:HyperLink>
    &nbsp;
            <asp:HyperLink ID="HyperLink_Contact" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
        </nav>

    
    </form>


</body>
</html>
