<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW6_Recipe %>" DeleteCommand="DELETE FROM [yzhu16HW6_Recipe] WHERE [Recipe_Name] = @Recipe_Name" InsertCommand="INSERT INTO [yzhu16HW6_Recipe] ([Recipe_Name], [Submitted_By], [Ingredient#1], [Ingredient#2], [Ingredient#3], [Ingredient#4], [Ingredient#5], [Prepartion], [Notes]) VALUES (@Recipe_Name, @Submitted_By, @column1, @column2, @column3, @column4, @column5, @Prepartion, @Notes)" SelectCommand="SELECT * FROM [yzhu16HW6_Recipe] WHERE ([Recipe_Name] = @Recipe_Name)" UpdateCommand="UPDATE [yzhu16HW6_Recipe] SET [Submitted_By] = @Submitted_By, [Ingredient#1] = @column1, [Ingredient#2] = @column2, [Ingredient#3] = @column3, [Ingredient#4] = @column4, [Ingredient#5] = @column5, [Prepartion] = @Prepartion, [Notes] = @Notes WHERE [Recipe_Name] = @Recipe_Name">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="Recipe_Name" QueryStringField="Recipe_Name" Type="String" />
            </SelectParameters>
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
        <asp:Label ID="lbl_deletedrecipe" runat="server"></asp:Label>
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Recipe_Name" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
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
    
    </div>
    </form>
</body>
</html>
