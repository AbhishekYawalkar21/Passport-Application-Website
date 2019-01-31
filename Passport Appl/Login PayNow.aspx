<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login PayNow.aspx.cs" Inherits="Passport_Appl.Login_PayNow" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="All.css" rel="stylesheet" />
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
            <asp:Label ID="Label2" runat="server" Text="Login" Font-Size="X-Large"></asp:Label><br />
            <br />
            <br />
            <div class="row">
                <div class="col-2">
                    <asp:Label ID="Label5" runat="server" Text="Applicant's Name"></asp:Label><br /><br /><br />
                    <asp:Label ID="Label3" runat="server" Text="Login Id"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                </div>
                <div class="col-5">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" data-toggle="tooltip" title="First Name + Last Name"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                        runat="server" ErrorMessage="This field should not be empty!" ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><asp:RangeValidator
                            ID="RangeValidator3" runat="server" ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox1" MaximumValue="Z" MinimumValue="A" ForeColor="Red"></asp:RangeValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="log" CssClass="txtbox" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                        runat="server" ErrorMessage="This field should not be empty!" ForeColor="Red" ControlToValidate="log"></asp:RequiredFieldValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="pass" CssClass="txtbox" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                        runat="server" ErrorMessage="This field should not be empty!" ForeColor="Red" ControlToValidate="pass"></asp:RequiredFieldValidator><br />
                    <br />
                    <br />
                </div>
            </div><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" class="btn btn-outline-dark" Text="Next >" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
