<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" media="screen"/>
    <title>Homepage</title>

</head>


<body id="sql_recipe">

    <form id="form1" runat="server">

    <div style="text-align: center">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW6_Recipe %>" SelectCommand="SELECT * FROM [yzhu16HW6_Recipe]"></asp:SqlDataSource>
       
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
            <br />
            <br />
        </nav>
    
    </div>

        <div class="homepage">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Recipe_Name" DataSourceID="SqlDataSource1" Height="138px" Width="581px" PageSize="100" style="text-align: center">
                <Columns>
                    <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe Name" ReadOnly="True" SortExpression="Recipe_Name" />
                    <asp:BoundField DataField="Submitted_By" HeaderText="Submitted By" SortExpression="Submitted_By" />
                    <asp:HyperLinkField DataNavigateUrlFields="Recipe_Name" DataNavigateUrlFormatString="Recipe.aspx?Recipe_Name={0}" Text="Select" />
                </Columns>
            </asp:GridView>

        </div>

    </form>

</body>

</html>
