<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <asp:HyperLink ID="HyperLink_Home" runat="server" NavigateUrl="~/default.aspx">Home</asp:HyperLink>
&nbsp;
        <asp:HyperLink ID="newrecipelink" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink_AU" runat="server" NavigateUrl="~/Aboutus.aspx">About Us</asp:HyperLink>
&nbsp;
        <asp:HyperLink ID="HyperLink_Contact" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
        <br />
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW6_Recipe %>" DeleteCommand="DELETE FROM [yzhu16HW6_Recipe] WHERE [Recipe_Name] = @Recipe_Name" InsertCommand="INSERT INTO [yzhu16HW6_Recipe] ([Recipe_Name], [Submitted_By], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Prepartion], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Prepartion, @Notes)" SelectCommand="SELECT * FROM [yzhu16HW6_Recipe] WHERE ([Recipe_Name] = @Recipe_Name)" UpdateCommand="UPDATE [yzhu16HW6_Recipe] SET [Submitted_By] = @Submitted_By, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Prepartion] = @Prepartion, [Notes] = @Notes WHERE [Recipe_Name] = @Recipe_Name">
            <DeleteParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Prepartion" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Recipe_Name" QueryStringField="Recipe_Name" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient1" Type="String" />
                <asp:Parameter Name="Ingredient2" Type="String" />
                <asp:Parameter Name="Ingredient3" Type="String" />
                <asp:Parameter Name="Ingredient4" Type="String" />
                <asp:Parameter Name="Ingredient5" Type="String" />
                <asp:Parameter Name="Prepartion" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Recipe_Name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lbl_deletedrecipe" runat="server"></asp:Label>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Recipe_Name" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe_Name" ReadOnly="True" SortExpression="Recipe_Name" />
                <asp:BoundField DataField="Submitted_By" HeaderText="Submitted_By" SortExpression="Submitted_By" />
                <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient1" SortExpression="Ingredient1" />
                <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient2" SortExpression="Ingredient2" />
                <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient3" SortExpression="Ingredient3" />
                <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient4" SortExpression="Ingredient4" />
                <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient5" SortExpression="Ingredient5" />
                <asp:BoundField DataField="Prepartion" HeaderText="Prepartion" SortExpression="Prepartion" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
