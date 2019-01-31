<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User Reg.aspx.cs" Inherits="Passport_Appl.User_Reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="All.css" rel="stylesheet" />
    
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
            <asp:Label ID="Label2" runat="server" Text="User Registration" Font-Size="X-Large"></asp:Label><br />
            <br />
            <br />
            <div class="row">
                <div class="col-3">
                    <asp:Label ID="Label3" runat="server" Text="First Name"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Middle Name"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Last Name"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Register to apply at"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Passport Office"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Date of Birth"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Email-Id"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="Login Id"></asp:Label><br />
                    <br />
                    <br /><br />
                    <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="Confirm Password"></asp:Label>
                </div>

                <div class="col-6">
                    <asp:TextBox ID="TextBox1" CssClass="txtbox" runat="server" autocomplete="off" data-toggle="tooltip" title="First letter of the name must be capital. Eg. Abc"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="This field should not be empty!"  ControlToValidate="TextBox1"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox1" MaximumValue="Z" MinimumValue="A"
                        ErrorMessage="Please refer the tooltip!" ForeColor="Red"></asp:RangeValidator>
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbox" autocomplete="off" data-toggle="tooltip" title="First letter of the name must be capital. Eg. Abc"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field should not be empty!"
                        ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator
                            ID="RangeValidator2" runat="server" ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox2" MaximumValue="Z" MinimumValue="A" ForeColor="Red"></asp:RangeValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="txtbox" autocomplete="off" data-toggle="tooltip" title="First letter of the name must be capital. Eg. Abc"></asp:TextBox>
                    <asp:RequiredFieldValidator
                        ID="RequiredFieldValidator3" runat="server"
                        ErrorMessage="This field should not be empty!" ControlToValidate="TextBox3"
                        ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator
                            ID="RangeValidator3" runat="server" ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox3" MaximumValue="Z" MinimumValue="A" ForeColor="Red"></asp:RangeValidator><br />
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>CPV Delhi</asp:ListItem>
                        <asp:ListItem>Passport Office</asp:ListItem>
                    </asp:RadioButtonList><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Choose either of it!" ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <br />

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
                    </asp:DropDownList><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="txtbox" autocomplete="off" class="input padding-16" type="date" Width="210px"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ForeColor="Red" ErrorMessage="This field should not be empty!"></asp:RequiredFieldValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="txtbox" autocomplete="off" data-toggle="tooltip" title="Eg. abcd@xxx.com"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="This field should not be empty!" ControlToValidate="TextBox5"
                        ForeColor="Red"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                            ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid Email-Id!" ControlToValidate="TextBox5" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red"></asp:RegularExpressionValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="txtbox" autocomplete="off"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator6" runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="txtbox" autocomplete="off"
                        TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                            runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <br /><br />
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="txtbox" autocomplete="off"
                        TextMode="Password" ControlToValidate="TextBox8"></asp:TextBox><asp:RequiredFieldValidator
                            ID="RequiredFieldValidator8" runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server"
                        ErrorMessage="Password mismatch!" ControlToCompare="TextBox7"
                        ControlToValidate="TextBox8" ForeColor="Red"></asp:CompareValidator><br />
                    <br />
                    <br />
                </div>
            </div>
        </div>
        <div class="container-fluid">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" class="btn btn-outline-dark" Text="Register" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" class="btn btn-outline-dark" Text="Clear" OnClick="Button2_Click1" CausesValidation="false" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" class="btn btn-outline-dark" Text="Go to the Login Page"
        OnClick="Button3_Click" CausesValidation="false" /><br />
            <br />
        </div>
    </form>
</body>
</html>

