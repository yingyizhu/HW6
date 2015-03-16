<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body id="sql_recipe">
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_yzhu16HW6_Recipe %>" SelectCommand="SELECT * FROM [yzhu16HW6_Recipe]"></asp:SqlDataSource>
        <br />
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Recipe_Name" DataSourceID="SqlDataSource1" Height="138px" Width="410px">
            <Columns>
                <asp:BoundField DataField="Recipe_Name" HeaderText="Recipe_Name" ReadOnly="True" SortExpression="Recipe_Name" />
                <asp:BoundField DataField="Submitted_By" HeaderText="Submitted_By" SortExpression="Submitted_By" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
