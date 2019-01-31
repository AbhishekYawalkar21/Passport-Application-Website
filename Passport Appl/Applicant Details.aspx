<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Applicant Details.aspx.cs" Inherits="Passport_Appl.Applicant_Details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
            <asp:Label ID="Label2" runat="server" Text="Applicant Details" Font-Size="X-Large"></asp:Label><br />
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
                    <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Have you ever been known by other names?"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Date of Birth"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Place of Birth (Village/Town/City)"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label10" runat="server" Text="State/UT"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label11" runat="server" Text="District"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label18" runat="server" Text="Marital Status"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="Citizenship of India by"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="PAN (if available)"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label14" runat="server" Text="Aadhaar Number"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label19" runat="server" Text="Employment Type"></asp:Label><br />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label15" runat="server" Text="Educational Qualification"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label16" runat="server" Text="Is applicant eligible for Non-ECR category?"></asp:Label><br />
                    <br />
                    <br />
                    <asp:Label ID="Label17" runat="server" Text="Visible distinguishing mark"></asp:Label><br />
                    <br />
                    <br />
                </div>


                <div class="col-6">
                    <asp:TextBox ID="TextBox1" CssClass="txtbox" runat="server" autocomplete="off" data-toggle="tooltip" title="First letter of the name must be capital. Eg. Abc"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator
                        ID="RangeValidator1" runat="server" ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox1" MaximumValue="Z" MinimumValue="A" ForeColor="Red"></asp:RangeValidator><br />
                    <br />
                    <br />

                    <asp:TextBox ID="TextBox2" CssClass="txtbox" runat="server" autocomplete="off" data-toggle="tooltip" title="First letter of the name must be capital. Eg. Abc"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator
                        ID="RangeValidator2" runat="server"
                        ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox2"
                        ForeColor="Red" MaximumValue="Z" MinimumValue="A"></asp:RangeValidator><br />
                    <br />
                    <br />

                    <asp:TextBox ID="TextBox3" CssClass="txtbox" runat="server" autocomplete="off" data-toggle="tooltip" title="First letter of the name must be capital. Eg. Abc"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator
                        ID="RangeValidator3" runat="server"
                        ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox3"
                        ForeColor="Red" MaximumValue="Z" MinimumValue="A"></asp:RangeValidator><br />
                    <br />

                    <asp:RadioButtonList ID="RadioButtonList1" runat="server"
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Transgender</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Choose one among these!" ControlToValidate="RadioButtonList1" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server"
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ErrorMessage="Choose either of it!" ForeColor="Red"
                        ControlToValidate="RadioButtonList2"></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="TextBox4" CssClass="txtbox" runat="server" autocomplete="off" class="input padding-16" type="date" Width="210px"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator6" runat="server"
                        ErrorMessage="This field should not be empty!" ControlToValidate="TextBox4"
                        ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox5" CssClass="txtbox" runat="server" autocomplete="off" data-toggle="tooltip" title="First letter of the birth place must be capital. Eg. Abc"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator7" runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator
                            ID="RangeValidator4" runat="server" ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox5" MaximumValue="Z" MinimumValue="A" ForeColor="Red"></asp:RangeValidator><br />
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
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Select your State or UT!" ControlToValidate="DropDownList1" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox9" CssClass="txtbox" runat="server" autocomplete="off" data-toggle="tooltip" title="First letter of the district name must be capital. Eg. Abc">
                    </asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ErrorMessage="This field should not be empty!" ControlToValidate="TextBox9" ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator
                            ID="RangeValidator5" runat="server" ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox9" MaximumValue="Z" MinimumValue="A" ForeColor="Red"></asp:RangeValidator><br />
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="txtbox">
                        <asp:ListItem>---- Select ----</asp:ListItem>
                        <asp:ListItem>Single</asp:ListItem>
                        <asp:ListItem>Married</asp:ListItem>
                        <asp:ListItem>Divorced</asp:ListItem>
                        <asp:ListItem>Widow/Widower</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Select one of these!" ControlToValidate="DropDownList3" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <br />
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Birth</asp:ListItem>
                        <asp:ListItem>Registration</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Choose either of it!" ControlToValidate="RadioButtonList3" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="TextBox6" CssClass="txtbox" runat="server" autocomplete="off" data-toggle="tooltip" title="Eg. 1234"></asp:TextBox><asp:RangeValidator
                        ID="RangeValidator6" runat="server"
                        ErrorMessage="Please refer the tooltip!" ControlToValidate="TextBox6"
                        MinimumValue="0" MaximumValue="9" ForeColor="Red"></asp:RangeValidator><br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox7" CssClass="txtbox" runat="server" autocomplete="off" data-toggle="tooltip" title="Eg. 1234"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator12" runat="server" ErrorMessage="This field should not be empty!" ControlToValidate="TextBox7" ForeColor="Red"></asp:RequiredFieldValidator><asp:RangeValidator
                            ID="RangeValidator7" runat="server"
                            ErrorMessage="Please refer the tooltip!" ForeColor="Red" MaximumValue="9"
                            MinimumValue="0" ControlToValidate="TextBox7"></asp:RangeValidator><br />
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="txtbox">
                        <asp:ListItem>---- Select ----</asp:ListItem>
                        <asp:ListItem>Government</asp:ListItem>
                        <asp:ListItem>Homemaker</asp:ListItem>
                        <asp:ListItem>Not Employed</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Self Employed</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Select your Employement Type!" ControlToValidate="DropDownList4" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <br />
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="txtbox">
                        <asp:ListItem>---- Select ----</asp:ListItem>
                        <asp:ListItem>Graduate And Above</asp:ListItem>
                        <asp:ListItem>5th Pass or Less</asp:ListItem>
                        <asp:ListItem>Between 6th And 9th Standard</asp:ListItem>
                        <asp:ListItem>10th Pass And Above</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Select your Educational Qualification!" ControlToValidate="DropDownList5" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <br />
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Choose either of it!" ControlToValidate="RadioButtonList4" ForeColor="Red"></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="TextBox8" runat="server" autocomplete="off" CssClass="txtbox"></asp:TextBox><asp:RequiredFieldValidator
                        ID="RequiredFieldValidator16" runat="server"
                        ErrorMessage="This field should not empty!" ForeColor="Red"
                        ControlToValidate="TextBox8"></asp:RequiredFieldValidator><br />
                </div>
            </div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        

        <asp:Button ID="Button1" runat="server" class="btn btn-outline-dark" Text="Clear" CausesValidation="false"
            OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" class="btn btn-outline-dark" Text="Next >" OnClick="Button3_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" class="btn btn-outline-danger" CausesValidation="false" Text="Logout" OnClick="Button4_Click"/>
        </div><br />
    </form>
    
</body>
</html>
