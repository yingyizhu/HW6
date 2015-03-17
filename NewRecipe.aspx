<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="detailview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW6_Recipe %>" DeleteCommand="DELETE FROM [yzhu16HW6_Recipe] WHERE [Recipe_Name] = @Recipe_Name" InsertCommand="INSERT INTO [yzhu16HW6_Recipe] ([Recipe_Name], [Submitted_By], [Ingredient#1], [Ingredient#2], [Ingredient#3], [Ingredient#4], [Ingredient#5], [Prepartion], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @column1, @column2, @column3, @column4, @column5, @Prepartion, @Notes)" SelectCommand="SELECT * FROM [yzhu16HW6_Recipe]" UpdateCommand="UPDATE [yzhu16HW6_Recipe] SET [Submitted_By] = @Submitted_By, [Ingredient#1] = @column1, [Ingredient#2] = @column2, [Ingredient#3] = @column3, [Ingredient#4] = @column4, [Ingredient#5] = @column5, [Prepartion] = @Prepartion, [Notes] = @Notes WHERE [Recipe_Name] = @Recipe_Name">
            <DeleteParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Recipe_Name" Type="String" />
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Prepartion" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Submitted_By" Type="String" />
                <asp:Parameter Name="column1" Type="String" />
                <asp:Parameter Name="column2" Type="String" />
                <asp:Parameter Name="column3" Type="String" />
                <asp:Parameter Name="column4" Type="String" />
                <asp:Parameter Name="column5" Type="String" />
                <asp:Parameter Name="Prepartion" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="Recipe_Name" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Recipe_Name" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe_Name" ReadOnly="True" SortExpression="Recipe_Name" />
                <asp:BoundField DataField="Submitted_By" HeaderText="Submitted_By" SortExpression="Submitted_By" />
                <asp:BoundField DataField="Ingredient#1" HeaderText="Ingredient#1" SortExpression="Ingredient#1" />
                <asp:BoundField DataField="Ingredient#2" HeaderText="Ingredient#2" SortExpression="Ingredient#2" />
                <asp:BoundField DataField="Ingredient#3" HeaderText="Ingredient#3" SortExpression="Ingredient#3" />
                <asp:BoundField DataField="Ingredient#4" HeaderText="Ingredient#4" SortExpression="Ingredient#4" />
                <asp:BoundField DataField="Ingredient#5" HeaderText="Ingredient#5" SortExpression="Ingredient#5" />
                <asp:BoundField DataField="Prepartion" HeaderText="Prepartion" SortExpression="Prepartion" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <br />



        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Recipe_Name" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
            
            </EditItemTemplate>
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
                            Ingredient#1
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("[Ingredient#1]") %>' />
                        </td>
                    </tr>

                    
                    <tr>
                        <td>
                            Ingredient#2
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("[Ingredient#2]") %>' />
                        </td>
                    </tr>

                    <tr>
                        <td>
                            Ingredient#3
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("[Ingredient#3]")%>' />
                        </td>
                    </tr>

                   <tr>
                        <td>
                            Ingredient#4
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("[Ingredient#4]")%>' />
                        </td>
                    </tr>

                   <tr>
                        <td>
                            Ingredient#5
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("[Ingredient#5]")%>' />
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
       
    
    </div>
    </form>
</body>
</html>
