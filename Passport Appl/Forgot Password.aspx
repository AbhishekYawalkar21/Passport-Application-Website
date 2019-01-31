<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot Password.aspx.cs" Inherits="Passport_Appl.Forgot_Password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="All.css" rel="stylesheet" />
    <style type="text/css">
        .txtbox
        {
            border-top-left-radius: 4px;
            border-top-right-radius: 4px;
            border-bottom-left-radius: 4px;
            border-bottom-right-radius: 4px;
            border-color:black;
        }
    </style>
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
            <asp:Label ID="Label2" runat="server" Text="Account Recovery" Font-Size="X-Large"></asp:Label><br />
            <br />
            <br />
            <div class="row">
                <div class="col-2">
                    <asp:Label ID="Label3" runat="server" Text="Login Id"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="New Password"></asp:Label><br /><br /><br />
                    <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                </div>
                <div class="col-4">
                    <asp:TextBox ID="log" CssClass="txtbox" runat="server" autocomplete="off"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                        runat="server" ErrorMessage="This field should not be empty!" ForeColor="Red" ControlToValidate="log"></asp:RequiredFieldValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="pass" CssClass="txtbox" runat="server" TextMode="Password" autocomplete="off"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                        runat="server" ErrorMessage="This field should not be empty!" ForeColor="Red" ControlToValidate="pass"></asp:RequiredFieldValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox1" CssClass="txtbox" runat="server" TextMode="Password" autocomplete="off"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password mismatch!" ControlToValidate="TextBox1" ControlToCompare="pass" ForeColor="Red"></asp:CompareValidator><br /><br /><br />
                </div>
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" class="btn btn-outline-dark" Text="Submit" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Go to Login Page" CausesValidation="false" class="btn btn-outline-dark" OnClick="Button2_Click" /><br />
            <br />
            <br />

        </div>
    </form>
</body>
</html>
