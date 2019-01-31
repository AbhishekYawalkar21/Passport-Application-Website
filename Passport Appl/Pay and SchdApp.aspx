<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pay and SchdApp.aspx.cs" Inherits="Passport_Appl.Pay_and_SchdApp" %>

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
            <asp:Label ID="Label2" runat="server" Text="Payment Details" Font-Size="X-Large"></asp:Label><br />
            <br />
            <br />
            <div class="row">
                <div class="col-2">
                    <asp:Label ID="Label7" runat="server" Text="Name of Applicant"></asp:Label><br /><br /><br />
                    <asp:Label ID="Label8" runat="server" Text="Passport Type"></asp:Label><br /><br /><br />
                    <asp:Label ID="Label3" runat="server" Text="Passport Office"></asp:Label><br /><br /><br />
                    <asp:Label ID="Label4" runat="server" Text="Fee"></asp:Label><br /><br /><br />
                    <asp:Label ID="Label5" runat="server" Text="Amount in Words"></asp:Label><br /><br /><br />
                    <asp:Label ID="Label9" runat="server" Text="Mobile No."></asp:Label><br /><br /><br />
                    <asp:Label ID="Label6" runat="server" Text="Appointment Date"></asp:Label>
                </div>
                <div class="col-5">
                    <asp:TextBox ID="TextBox1" CssClass="txtbox" runat="server" Enabled="false"></asp:TextBox><br /><br /><br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Fresh</asp:ListItem>
                        <asp:ListItem>Re-issue</asp:ListItem>
                    </asp:RadioButtonList><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Choose either of it!" ForeColor="Red"
                        ControlToValidate="RadioButtonList1"></asp:RequiredFieldValidator><br /><br />
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txtbox" Width="210px">
                        <asp:ListItem>---- Select ----</asp:ListItem>
                        <asp:ListItem>Ahmedabad</asp:ListItem>
                        <asp:ListItem>Amritsar</asp:ListItem>
                        <asp:ListItem>Bangalore</asp:ListItem>
                        <asp:ListItem>Bareilly</asp:ListItem>
                        <asp:ListItem>Bhopal</asp:ListItem>
                        <asp:ListItem>Bhubaneswar</asp:ListItem>
                        <asp:ListItem>Chandigarh</asp:ListItem>
                        <asp:ListItem>Chennai</asp:ListItem>
                        <asp:ListItem>Coimbatore</asp:ListItem>
                        <asp:ListItem>Dehradun</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Ghaziabad</asp:ListItem>
                        <asp:ListItem>Guwahati</asp:ListItem>
                        <asp:ListItem>Hyderabad</asp:ListItem>
                        <asp:ListItem>Jaipur</asp:ListItem>
                        <asp:ListItem>Jalandhar</asp:ListItem>
                        <asp:ListItem>Jammu</asp:ListItem>
                        <asp:ListItem>Kochi</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                        <asp:ListItem>Kozhikode</asp:ListItem>
                        <asp:ListItem>Lucknow</asp:ListItem>
                        <asp:ListItem>Madurai</asp:ListItem>
                        <asp:ListItem>Malappuram</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Nagpur</asp:ListItem>
                        <asp:ListItem>Panaji</asp:ListItem>
                        <asp:ListItem>Patna</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                        <asp:ListItem>Raipur</asp:ListItem>
                        <asp:ListItem>Ranchi</asp:ListItem>
                        <asp:ListItem>Shimla</asp:ListItem>
                        <asp:ListItem>Srinagar</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                        <asp:ListItem>Thane</asp:ListItem>
                        <asp:ListItem>Tiruchirappalli</asp:ListItem>
                        <asp:ListItem>Thiruvananthapuram</asp:ListItem>
                        <asp:ListItem>Vishakhapatnam</asp:ListItem>
                    </asp:DropDownList><br /><br /><br />
                    <asp:TextBox ID="TextBox2" runat="server" Text="2000.00" Enabled="False" CssClass="txtbox"></asp:TextBox><br /><br />
                    <asp:TextBox ID="TextBox3" runat="server" Text="Two Thousand Rupees only" Enabled="False" CssClass="txtbox" ></asp:TextBox><br /><br /><br />
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="txtbox" autocomplete="off" data-toggle="tooltip" title="Eg. 1234567890"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="This field should not be empty!" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Only number is expected!" ControlToValidate="TextBox4" MaximumValue="9999999999" MinimumValue="0" ForeColor="#FF3300"></asp:RangeValidator><br /><br /><br />
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="txtbox" autocomplete="off" class="input padding-16" type="date" Width="210px" data-toggle="tooltip" title="Enter a date which is available."></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator><br /><br />
                    <asp:Button ID="Button3" runat="server" Text="Available Dates" class="btn btn-outline-dark" OnClick="Button3_Click" CausesValidation="false"/><br /><br />
                    <asp:Table ID="Table1" runat="server" GridLines="Vertical" Visible="false" BackColor="LightCyan" Width="210px">
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label><br />
                                <hr style="display:block;border-style:inset;border-width:1px"/>
                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label><br />
                                <hr style="display:block;border-style:inset;border-width:1px"/>
                                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label><br />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>
                </div>
            </div><br /><br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" class="btn btn-outline-dark" Text="Confirm" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Reset" class="btn btn-outline-dark" OnClick="Button2_Click" CausesValidation="false"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button4" runat="server" Text="Logout" class="btn btn-outline-danger" CausesValidation="false" OnClick="Button4_Click"/>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>

