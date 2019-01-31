<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reissue of Passport.aspx.cs" Inherits="Passport_Appl.Reissue_of_Passport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" type="text/css" />
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
            <asp:Label ID="Label2" runat="server" Text="Re-issue of Passport" Font-Size="X-Large"></asp:Label><br />
            <br />
            <br />
            <div class="row">
                <div class="col-2">
                    <asp:Label ID="Label5" runat="server" Text="Specify Reason"></asp:Label>
                </div>
                <div class="col-5">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem>Change In Existing Personal Particulars</asp:ListItem>
                        <asp:ListItem>Validity Expired Within 3 Years/Due To Expire</asp:ListItem>
                        <asp:ListItem>Exhaustion Of Pages</asp:ListItem>
                        <asp:ListItem>Damaged Passport</asp:ListItem>
                        <asp:ListItem>Lost Passport</asp:ListItem>
                        <asp:ListItem>Validity Expired More Than 3 Years Ago</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:CheckBoxList><asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Please check at least one of these!" ForeColor="#FF3300" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator><br />
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
