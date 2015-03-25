<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Contact.aspx.vb" Inherits="_default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <link rel="stylesheet" type="text/css" href="StyleSheet.css" media="screen"/>
    <title>Web Contact Form</title>

    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        #contact {
            text-align: left;
        }
        #content {
            text-align: left;
        }
    </style>

</head>


<body>

    <form id="form1" runat="server">

        <div class="auto-style1">

        <!-- Check to see if you are in postback.  If not, display the contact form. -->
        <% If Not IsPostBack Then%>

     
        <h1>Great Recipes</h1>

        <h2>Using 5 Ingedients or Less!</h2>

        <nav>
            <asp:HyperLink ID="HyperLink_Home" runat="server" style="text-decoration:none" BorderStyle="None" NavigateUrl="~/default.aspx">Home</asp:HyperLink>
    &nbsp;
            <asp:HyperLink ID="newrecipelink" runat="server" style="text-decoration:none" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>
            &nbsp;
            <asp:HyperLink ID="HyperLink_AU" runat="server" style="text-decoration:none" NavigateUrl="~/Aboutus.aspx">About Us</asp:HyperLink>
    &nbsp;
            <asp:HyperLink ID="HyperLink_Contact" runat="server" style="text-decoration:none" NavigateUrl="~/Contact.aspx">Contact</asp:HyperLink>
            <br />
            <br />
        </nav>
   
    
<div id="content">
        Your email address:<br />
        <asp:TextBox ID="senderAddress" runat="server" placeholder="Preferred email address" Height="29px" Width="387px" ></asp:TextBox>
        <br />
        <br />
       
       
         Your message:<br /> 
        <!-- to make your box bigger add rows, columns, and textmode -->
        <asp:TextBox ID="senderMessage" runat="server" Rows="20" Columns="30" TextMode="MultiLine" placeholder="Please enter your message." Height="211px" Width="390px" ></asp:TextBox>
       
      </div>
    
        <br />
        <br />
        <asp:Button ID="sendMail" runat="server" Text="Send" />

        <!-- If you are in postback, display the confirmation label. -->
        <%Else%>

            <br />

        <asp:Label ID="confirmSent" runat="server" Text=""></asp:Label>

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

        <!-- End your 'If' statement. -->
        <%End If%>

        </div>
      


    </form>
    <p>
        &nbsp;</p>
</body>
</html>
