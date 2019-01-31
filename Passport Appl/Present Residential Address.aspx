<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Present Residential Address.aspx.cs" Inherits="Passport_Appl.Present_Residential_Address" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
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
            <asp:Label ID="Label2" runat="server" Text="Present Residential Address" Font-Size="X-Large"></asp:Label><br />
                <br />
                <br />
            <div class="row">
                <div class="col-3">
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="City/Village/Town"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="State/UT"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="District"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Pin Code"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Mobile Number"></asp:Label><br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Telephone Number"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="E-mail Id"></asp:Label><br />
                    <br />
                    <br />
                </div>
                <div class="col-6">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="txtbox" autocomplete="off"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ErrorMessage="This field should not be empty!"  ControlToValidate="TextBox7"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="txtbox" autocomplete="off" data-toggle="tooltip" title="First letter of the City/Village/Town must be capital. Eg. Abc"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field should not be empty!"
                        ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator
                            ID="RangeValidator2" runat="server" ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox1" MaximumValue="Z" MinimumValue="A" ForeColor="Red"></asp:RangeValidator><br />
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txtbox">
                        <asp:ListItem>---- Select ----</asp:ListItem>
                        <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
                        <asp:ListItem>Andhra Pradesh</asp:ListItem>
                        <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                        <asp:ListItem>Assam</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Chandigarh</asp:ListItem>
                        <asp:ListItem>Chhattisgarh</asp:ListItem>
                        <asp:ListItem>Dadra and Nagar Haveli</asp:ListItem>
                        <asp:ListItem>Daman and Diu</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Goa</asp:ListItem>
                        <asp:ListItem>Gujarat</asp:ListItem>
                        <asp:ListItem>Haryana</asp:ListItem>
                        <asp:ListItem>Himachal Pradesh</asp:ListItem>
                        <asp:ListItem>Jammu and Kashmir</asp:ListItem>
                        <asp:ListItem>Jharkhand</asp:ListItem>
                        <asp:ListItem>Karnataka</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Lakshadweep</asp:ListItem>
                        <asp:ListItem>Madhya Pradesh</asp:ListItem>
                        <asp:ListItem>Maharashtra</asp:ListItem>
                        <asp:ListItem>Manipur</asp:ListItem>
                        <asp:ListItem>Meghalaya</asp:ListItem>
                        <asp:ListItem>Mizoram</asp:ListItem>
                        <asp:ListItem>Nagaland</asp:ListItem>
                        <asp:ListItem>Odisha</asp:ListItem>
                        <asp:ListItem>Puducherry</asp:ListItem>
                        <asp:ListItem>Punjab</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                        <asp:ListItem>Sikkim</asp:ListItem>
                        <asp:ListItem>Tamil Nadu</asp:ListItem>
                        <asp:ListItem>Telangana</asp:ListItem>
                        <asp:ListItem>Tripura</asp:ListItem>
                        <asp:ListItem>Uttar Pradesh</asp:ListItem>
                        <asp:ListItem>Uttarakhand</asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>
                    </asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Select your State or UT!" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" CssClass="txtbox" runat="server" autocomplete="off" data-toggle="tooltip" title="First letter of the district name must be capital. Eg. Abc"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ErrorMessage="This field should not be empty!" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator
                            ID="RangeValidator3" runat="server" ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox2" MaximumValue="Z" MinimumValue="A" ForeColor="Red"></asp:RangeValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox3" CssClass="txtbox" runat="server" autocomplete="off" data-toggle="tooltip" title="Eg. 123456"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="This field should not be empty!" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator
                            ID="RangeValidator4" runat="server" ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox3" MaximumValue="9" MinimumValue="0" ForeColor="Red"></asp:RangeValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox4" CssClass="txtbox" runat="server" autocomplete="off" data-toggle="tooltip" title="Eg. 1234567890"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="This field should not be empty!" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator
                            ID="RangeValidator1" runat="server" ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox4" MaximumValue="9999999999" MinimumValue="0" ForeColor="Red"></asp:RangeValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox5" CssClass="txtbox" runat="server" autocomplete="off"></asp:TextBox>&nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="(Not Mandatory)"></asp:Label><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox6" CssClass="txtbox" runat="server" autocomplete="off" data-toggle="tooltip" title="Eg. abcd@xxx.com"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator7" runat="server"
                        ErrorMessage="This field should not be empty!" ControlToValidate="TextBox6"
                        ForeColor="Red"></asp:RequiredFieldValidator><asp:RegularExpressionValidator
                            ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter a valid Email-Id!" ControlToValidate="TextBox6" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ForeColor="Red"></asp:RegularExpressionValidator><br />
                    <br />
                    <br />
                </div>
            </div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Button ID="Button1" runat="server" Text="Submit Details" class="btn btn-outline-dark" OnClick="Button1_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Clear" CausesValidation="false" class="btn btn-outline-dark" OnClick="Button3_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Logout" class="btn btn-outline-danger" OnClick="Button5_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Pay Later" class="btn btn-outline-dark" OnClick="Button4_Click" Visible="false"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Pay Now" class="btn btn-outline-dark" OnClick="Button2_Click" Visible="false"/>
        </div>
        <br />

    </form>
</body>
</html>
