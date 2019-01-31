<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Card Details.aspx.cs" Inherits="Passport_Appl.Card_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="All.css" rel="stylesheet" />
    <script type="text/Javascript">
        function confirmoc() {
            if (confirm("Are you sure about paying respective amount?") == true) {
                window.alert("Your payment for scheduling appointment is succeeded.");
            }
            else {
                window.alert("It seems you are not sure.");
            }
        }
    </script>
    <script type="text/javascript">
        window.history.forward();
          function noBack() {
              window.history.forward();
          }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="main">
            <nav>
                &nbsp;
                <asp:Image ID="Image1" class="img-thumbnail" runat="server" Height="150px" ImageUrl="~/logo8.jpg" Width="150px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Names="Comic sans MS" Font-Size="XX-Large" Text="Online Passport Application" ForeColor="White"></asp:Label>
                <ul>
                    <li><a href="Home.aspx">Home</a></li>
                    <li><a href="Profile.aspx">Profile</a></li>
                </ul>
            </nav>
        </div>
        <div class="container-fluid">
            <asp:Label ID="Label2" runat="server" Text="Card Details" Font-Size="X-Large"></asp:Label><br />
            <br />
            <br />
            <div class="row">
                <div class="col-2">
                    <asp:Label ID="Label3" runat="server" Text="Select the type of card"></asp:Label><br /><br /><br />
                    <asp:Label ID="Label4" runat="server" Text="Card Number"></asp:Label><br /><br /><br />
                    <asp:Label ID="Label5" runat="server" Text="Expiry Date"></asp:Label><br /><br /><br />
                    <asp:Label ID="Label6" runat="server" Text="CVV2/CVC2/CVD2 Number"></asp:Label><br /><br /><br />
                    <asp:Label ID="Label7" runat="server" Text="Name on card"></asp:Label><br /><br /><br />
                    <asp:Label ID="Label8" runat="server" Text="Amount"></asp:Label><br /><br /><br />
                </div>
                <div class="col-5">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txtbox" Width="210px">
                        <asp:ListItem>----  Select ----</asp:ListItem>
                        <asp:ListItem>Credit Card</asp:ListItem>
                        <asp:ListItem>Debit Card</asp:ListItem>
                    </asp:DropDownList><br /><br /><br />
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" data-toggle="tooltip" title="Eg. XXXX-XXXX-XXXX-XXXX"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="This field should not be empty!" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox1" 
            ValidationExpression="[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}" ForeColor="#FF3300"></asp:RegularExpressionValidator><br /><br /><br />
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbox" class="input padding-16" type="date" Width="210px"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox2"
                        ForeColor="Red"></asp:RequiredFieldValidator><br /><br /><br />
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="txtbox" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox3"
                        ForeColor="Red"></asp:RequiredFieldValidator><br /><br /><br />
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="txtbox"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox4"
                        ForeColor="Red"></asp:RequiredFieldValidator><br /><br /><br />
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="txtbox" Text="2000.00" Enabled="false"></asp:TextBox><br /><br />
                    </div>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Pay" class="btn btn-outline-dark" OnClick="Button1_Click1"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Clear" class="btn btn-outline-dark" CausesValidation="false" OnClick="Button2_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" class="btn btn-outline-danger" CausesValidation="false" Text="Logout" OnClick="Button4_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Text="Print Receipt" class="btn btn-outline-dark" OnClick="Button3_Click" CausesValidation="false" Visible="false"/>
            <br />
            <br />
            <br />

        </div>
    </form>
</body>
</html>

