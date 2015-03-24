<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" media="screen"/>
    <title>Recipe Details</title>
</head>
<body style="text-align: left">
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <br />
        <br />
        <h1>Great Recipes</h1>

        <h2>Using 5 Ingedients or Less!</h2>

        <nav>
            <asp:HyperLink ID="HyperLink1" runat="server" BorderStyle="None" NavigateUrl="~/default.aspx">Home</asp:HyperLink>
    &nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
            &nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Aboutus.aspx">About Us</asp:HyperLink>
    &nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
        </nav>

    
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
        <asp:FormView ID="FormViewRecipe" runat="server" DataKeyNames="Recipe_Name" DataSourceID="SqlDataSource1">
            <EditItemTemplate>
                Recipe_Name:
                <asp:Label ID="Recipe_NameLabel1" runat="server" Text='<%# Eval("Recipe_Name") %>' />
                <br />
                Submitted_By:
                <asp:TextBox ID="Submitted_ByTextBox" runat="server" Text='<%# Bind("Submitted_By") %>' />
                <br />
                Ingredient1:
                <asp:TextBox ID="Ingredient1TextBox" runat="server" Text='<%# Bind("Ingredient1") %>' />
                <br />
                Ingredient2:
                <asp:TextBox ID="Ingredient2TextBox" runat="server" Text='<%# Bind("Ingredient2") %>' />
                <br />
                Ingredient3:
                <asp:TextBox ID="Ingredient3TextBox" runat="server" Text='<%# Bind("Ingredient3") %>' />
                <br />
                Ingredient4:
                <asp:TextBox ID="Ingredient4TextBox" runat="server" Text='<%# Bind("Ingredient4") %>' />
                <br />
                Ingredient5:
                <asp:TextBox ID="Ingredient5TextBox" runat="server" Text='<%# Bind("Ingredient5") %>' />
                <br />
                Prepartion:
                <asp:TextBox ID="PrepartionTextBox" runat="server" Text='<%# Bind("Prepartion") %>' />
                <br />
                Notes:
                <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>

            <InsertItemTemplate>
                Recipe_Name:
                <asp:TextBox ID="Recipe_NameTextBox" runat="server" Text='<%# Bind("Recipe_Name") %>' />
                <br />
                Submitted_By:
                <asp:TextBox ID="Submitted_ByTextBox" runat="server" Text='<%# Bind("Submitted_By") %>' />
                <br />
                Ingredient1:
                <asp:TextBox ID="Ingredient1TextBox" runat="server" Text='<%# Bind("Ingredient1") %>' />
                <br />
                Ingredient2:
                <asp:TextBox ID="Ingredient2TextBox" runat="server" Text='<%# Bind("Ingredient2") %>' />
                <br />
                Ingredient3:
                <asp:TextBox ID="Ingredient3TextBox" runat="server" Text='<%# Bind("Ingredient3") %>' />
                <br />
                Ingredient4:
                <asp:TextBox ID="Ingredient4TextBox" runat="server" Text='<%# Bind("Ingredient4") %>' />
                <br />
                Ingredient5:
                <asp:TextBox ID="Ingredient5TextBox" runat="server" Text='<%# Bind("Ingredient5") %>' />
                <br />
                Prepartion:
                <asp:TextBox ID="PrepartionTextBox" runat="server" Text='<%# Bind("Prepartion") %>' />
                <br />
                Notes:
                <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Recipe_Name:
                <asp:Label ID="Recipe_NameLabel" runat="server" Text='<%# Eval("Recipe_Name") %>' />
                <br />
                Submitted_By:
                <asp:Label ID="Submitted_ByLabel" runat="server" Text='<%# Bind("Submitted_By") %>' />
                <br />
                Ingredient1:
                <asp:Label ID="Ingredient1Label" runat="server" Text='<%# Bind("Ingredient1") %>' />
                <br />
                Ingredient2:
                <asp:Label ID="Ingredient2Label" runat="server" Text='<%# Bind("Ingredient2") %>' />
                <br />
                Ingredient3:
                <asp:Label ID="Ingredient3Label" runat="server" Text='<%# Bind("Ingredient3") %>' />
                <br />
                Ingredient4:
                <asp:Label ID="Ingredient4Label" runat="server" Text='<%# Bind("Ingredient4") %>' />
                <br />
                Ingredient5:
                <asp:Label ID="Ingredient5Label" runat="server" Text='<%# Bind("Ingredient5") %>' />
                <br />
                Prepartion:
                <asp:Label ID="PrepartionLabel" runat="server" Text='<%# Bind("Prepartion") %>' />
                <br />
                Notes:
                <asp:Label ID="NotesLabel" runat="server" Text='<%# Bind("Notes") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <br />
    
    </div>
    </form>
</body>
</html>
