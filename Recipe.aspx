﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" media="screen"/>
    <title>Recipe Details</title>
    <style type="text/css">
        .Rfromview {}
    </style>
</head>
<body style="text-align: left">
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <br />
        <br />
        <h1>Great Recipes</h1>

        <h2>Using 5 Ingedients or Less!</h2>

        <nav>
            <asp:HyperLink ID="HyperLink1" runat="server" style="text-decoration:none" BorderStyle="None" NavigateUrl="~/default.aspx">Home</asp:HyperLink>
    &nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" style="text-decoration:none" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
            &nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" style="text-decoration:none" NavigateUrl="~/Aboutus.aspx">About Us</asp:HyperLink>
    &nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" style="text-decoration:none" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
        </nav>

    
        <br />

        <asp:Label ID="lbl_deletedrecipe" runat="server"></asp:Label>

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
        <asp:FormView ID="FormViewRecipe" runat="server" DataKeyNames="Recipe_Name" CssClass="Rfromview" DataSourceID="SqlDataSource1" Height="200px" Width="287px">
            <EditItemTemplate>
                Recipe Name:</td><td style="background-color:none; text-align :left;">
                    <asp:Label ID="Recipe_NameLabel1" runat="server" Text='<%# Eval("Recipe_Name")%>' />
                </td>
                <tr>

                </tr>
                
                <tr>
                    <td style="background-color:#F08080; text-align :right;">
                        <br />
                        Submitted By:</td>
                    <td style="background-color:none; text-align :left;">
                        <asp:TextBox ID="RSubmitted_ByTextBox" runat="server" Text='<%# Bind("Submitted_By") %>' />
                    </td>
                </tr>

                <asp:RequiredFieldValidator ID="RsubmitbyValidator" runat="server" ControlToValidate="RSubmitted_ByTextBox" CssClass="validationerror" ErrorMessage="Please enter your name!"></asp:RequiredFieldValidator>
                
                <tr>

                   <td style="text-align :right; background-color: #F08080;"> 
                   </td>
                    <td style="background-color:none; text-align :left;">
                        <br />
                        Ingredient#1:</td>
                    <td>
                        <asp:TextBox ID="RIngredient1TextBox" runat="server" Text='<%# Bind("Ingredient1") %>' />
                    </td>
                </tr>
                
                <asp:RequiredFieldValidator ID="RIngredientValidator" runat="server" ControlToValidate="RIngredient1TextBox" CssClass="validationerror" ErrorMessage="Please enter at least one ingredient!"></asp:RequiredFieldValidator>

                <tr><td style="background-color:#F08080; text-align :right;"></td>
                    <td style="background-color:none; text-align :left;">Ingredient#2:</td>
                    <td>
                <asp:TextBox ID="Ingredient2TextBox" runat="server" Text='<%# Bind("Ingredient2") %>' />
              </td></tr>
  
                <tr><td style="background-color:#F08080; text-align :right;">
                    <br />
                    Ingredient#3:</td><td style="background-color:none; text-align :left;">
                <asp:TextBox ID="Ingredient3TextBox" runat="server" Text='<%# Bind("Ingredient3") %>' />
              </td></tr>

                <tr><td style="background-color:#F08080; text-align :right;">
                    <br />
                    Ingredient#4:</td><td style="background-color:none; text-align :left;">
                <asp:TextBox ID="Ingredient4TextBox" runat="server" Text='<%# Bind("Ingredient4") %>' />
              </td></tr>

                <tr><td style="background-color:#F08080; text-align :right;">
                    <br />
                    Ingredient#5:</td><td style="background-color:none; text-align :left;">
                <asp:TextBox ID="Ingredient5TextBox" runat="server" Text='<%# Bind("Ingredient5") %>' />
              </td></tr>

                <tr>
                    <td style="background-color:#F08080; text-align :right;">
                        <br />
                        Prepartion:</td><td style="background-color:none; text-align :left;">
                    <asp:TextBox ID="RPrepartionTextBox" runat="server" Text='<%# Bind("Prepartion") %>' />
                    </td>

                </tr>

                <asp:RequiredFieldValidator ID="RPrepValidator" runat="server" ControlToValidate="RPrepartionTextBox" CssClass="validationerror" ErrorMessage="Please descripe prepartion!"></asp:RequiredFieldValidator>
                <br />
  
                <tr><td style="background-color:#F08080; text-align :right;"></td>
                    <td style="background-color:none; text-align :left;">Notes:</td>
                    <td>
                <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
              </td></tr>

                <tr><td style="border :none;"><asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Save" />
                </td></tr>
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
          
                <tr><td style="background-color:#F08080; text-align :right;">Recipe Name:</td><td style="background-color:none; text-align :left;">
                <asp:Label ID="Recipe_NameLabel" runat="server" Text='<%# Eval("Recipe_Name") %>' />
                </td></tr>

                <tr><td style="background-color:#F08080; text-align :right;">Submitted By:</td><td style="background-color:none; text-align :left;">
                <asp:Label ID="Submitted_ByLabel" runat="server" Text='<%# Bind("Submitted_By") %>' />
                </td></tr>
                
                <tr><td style="background-color:#F08080; text-align :right;">Ingredient#1:</td><td style="background-color:none; text-align :left;">
                <asp:Label ID="Ingredient1Label" runat="server" Text='<%# Bind("Ingredient1") %>' />
                </td></tr>
                
                <tr><td style="background-color:#F08080; text-align :right;">Ingredient#2:</td><td style="background-color:none; text-align :left;">
                <asp:Label ID="Ingredient2Label" runat="server" Text='<%# Bind("Ingredient2") %>' />
                </td></tr>

                <tr><td style="background-color:#F08080; text-align :right;">Ingredient#3:</td><td style="background-color:none; text-align :left;">
                <asp:Label ID="Ingredient3Label" runat="server" Text='<%# Bind("Ingredient3") %>' />
                </td></tr>

                <tr><td style="background-color:#F08080; text-align :right;">Ingredient#4:</td><td style="background-color:none; text-align :left;">
                <asp:Label ID="Ingredient4Label" runat="server" Text='<%# Bind("Ingredient4") %>' />
                </td></tr>

                <tr><td style="background-color:#F08080; text-align :right;">Ingredient#5:</td><td style="background-color:none; text-align :left;">
                <asp:Label ID="Ingredient5Label" runat="server" Text='<%# Bind("Ingredient5") %>' />
               </td></tr>

                <tr><td style="background-color:#F08080; text-align :right;">Prepartion:</td><td style="background-color:none; text-align :left;">
                <asp:Label ID="PrepartionLabel" runat="server" Text='<%# Bind("Prepartion") %>' />
                </td></tr>

                <tr><td style="background-color:#F08080; text-align :right;">Notes:</td><td style="background-color:none; text-align :left;">
                <asp:Label ID="NotesLabel" runat="server" Text='<%# Bind("Notes") %>' />
                </td></tr>

                <div id="bottonRecipe">
                <tr><td  style="text-align :center; padding-left :10px;border:none ;"><asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp&nbsp&nbsp<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                </td>

                </tr>
                </div>
            </ItemTemplate>
        </asp:FormView>
        <br />
    
    </div>
    </form>
</body>
</html>
