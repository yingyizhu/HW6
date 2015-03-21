<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="detailview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" media="screen"/>
    <title>New Recipe</title>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div dir="auto">

        <h1>Great Recipes</h1>

        <h2>Using 5 Ingedients or Less!</h2>

        <nav>

        <asp:HyperLink ID="HyperLink_Home" runat="server" NavigateUrl="~/default.aspx">Home</asp:HyperLink>
&nbsp;
        <asp:HyperLink ID="newrecipelink" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
        &nbsp;
        <asp:HyperLink ID="HyperLink_AU" runat="server" NavigateUrl="~/Aboutus.aspx">About Us</asp:HyperLink>
&nbsp;
        <asp:HyperLink ID="HyperLink_Contact" runat="server" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
        <br />
     </nav>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW6_Recipe %>" SelectCommand="SELECT * FROM [yzhu16HW6_Recipe]" DeleteCommand="DELETE FROM [yzhu16HW6_Recipe] WHERE [Recipe_Name] = @Recipe_Name" InsertCommand="INSERT INTO [yzhu16HW6_Recipe] ([Recipe_Name], [Submitted_By], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Prepartion], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @Ingredient1, @Ingredient2, @Ingredient3, @Ingredient4, @Ingredient5, @Prepartion, @Notes)" UpdateCommand="UPDATE [yzhu16HW6_Recipe] SET [Submitted_By] = @Submitted_By, [Ingredient1] = @Ingredient1, [Ingredient2] = @Ingredient2, [Ingredient3] = @Ingredient3, [Ingredient4] = @Ingredient4, [Ingredient5] = @Ingredient5, [Prepartion] = @Prepartion, [Notes] = @Notes WHERE [Recipe_Name] = @Recipe_Name">
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
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Recipe_Name" DataSourceID="SqlDataSource1" DefaultMode="Insert" style="text-align: left">
            
            <InsertItemTemplate>
               
                 <table>

                    <tr>
                        <td>
                            Recipe Name
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Recipe_Name") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Submitted By
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Submitted_By") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingredient1
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("[Ingredient1]")%>' />
                        </td>
                    </tr>

                    
                    <tr>
                        <td>
                            Ingredient2
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("[Ingredient2]")%>' />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingredient3
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("[Ingredient3]")%>' />
                        </td>
                    </tr>

                   <tr>
                        <td>
                            Ingredient4
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("[Ingredient4]")%>' />
                        </td>
                    </tr>

                   <tr>
                        <td>
                            Ingredient5
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("[Ingredient5]")%>' />
                        </td>
                    </tr>
                       
                  <tr>
                        <td>
                           Preparation
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Prepartion") %>' />
                        </td>
                    </tr>


                  <tr>
                        <td>
                           Notes
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Notes") %>' />
                        </td>
                  </tr>

                 <tr>
                        <td>
                             <asp:Button ID="btn_Insert" runat="server" CausesValidation="True" CommandName="Insert" Text="Save" />
                        </td>

                </table> 

            </InsertItemTemplate>
           
        </asp:FormView>
        <br />
       


    </div>
    </form>
</body>
</html>
