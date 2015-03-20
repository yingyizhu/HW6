<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="detailview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div dir="auto">
    
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
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW6_Recipe %>" SelectCommand="SELECT * FROM [yzhu16HW6_Recipe]">
        </asp:SqlDataSource>
        <br />
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Recipe_Name" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>

            </EditItemTemplate>
            <InsertItemTemplate>
                Recipe_Name:
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
                             <asp:Button ID="btn_Insert" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        </td>
                        <td>
                             <asp:Button ID="btn_CancelInsert" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </td>
                  </tr>

                </table> 

            </InsertItemTemplate>
            <ItemTemplate>
                
            </ItemTemplate>
        </asp:FormView>
        <br />
        <br />



    </div>
    </form>
</body>
</html>
