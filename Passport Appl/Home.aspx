<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Passport_Appl.Home" %>

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
    <style>
        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            height:110px;
            background-color:deepskyblue;
            color:black;
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
        </div><br />
        <div class="container-fluid"><br /><br />
            <div class="row">
                <div class="col-sm-3">
                    <div class="card" style="border-color: black;background-color:lightcyan">
                        <div class="card-body">
                            <h4 class="card-title" style="font-family: 'Comic Sans MS'">Register Now</h4>
                            <p class="card-text">Hit the Click Here button if you are willing to apply for a fresh passport. All you have supposed to do is firstly just register here and move onto the other essentials.</p>
                            <br />
                            <asp:Button ID="Button1" runat="server" class="btn btn-outline-dark" Text="Click Here >"
                                OnClick="Button1_Click" />
                        </div>

                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card" style="border-color: black;background-color:lightcyan">
                        <div class="card-body">
                            <h4 class="card-title" style="font-family: 'Comic Sans MS'">Login</h4>
                            <p class="card-text">If you already have registered make sure you remember your Login Id and Password for getting you logged in.</p>
                            <br /><br />
                            <asp:Button ID="Button2" runat="server" class="btn btn-outline-dark" Text="Click Here >"
                                OnClick="Button2_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card" style="border-color: black;background-color:lightcyan">
                        <div class="card-body">
                            <h4 class="card-title" style="font-family: 'Comic Sans MS'">Re-issue of Passport</h4>
                            <p class="card-text">Passport could be re-issued just in case it is no more valid. Essentially, you ought to go through the same process as you had gone when applied for a fresh one.</p>
                            <br />
                            <asp:Button ID="Button3" runat="server" class="btn btn-outline-dark" Text="Click Here >" OnClick="Button3_Click" />
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card" style="border-color: black;background-color:lightcyan">
                        <div class="card-body">
                            <h4 class="card-title" style="font-family: 'Comic Sans MS'">Pay and Schedule Appointment</h4>
                            <p class="card-text">Pick a date which would be convenient to you to spend for the passport proceedings and pay to fix that particular date.</p>
                            <br />
                            <asp:Button ID="Button4" runat="server" class="btn btn-outline-dark" Text="Click Here >" OnClick="Button4_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="row">
                <div class="col-5" style="font-family: 'Comic Sans MS'">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Sitemap</b><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;<a href="Home.aspx" style="color: black; text-decoration: none">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="User Reg.aspx" style="color: black; text-decoration: none">Fresh Passport</a><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;<a href="Pay and SchdApp.aspx" style="color: black; text-decoration: none">Schedule Appointment</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Reissue of Passport.aspx" style="color: black; text-decoration: none">Re-issue of Passport</a><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;<a href="Profile.aspx" style="color: black; text-decoration: none">Profile</a>
                </div>
                <div class="col-5"><br /><br />
                    © 2018 Copyright: Online Passport Application
                </div>
                <div class="col-2" style="font-family: 'Comic Sans MS'">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Contact Us</b><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact No.: 9878976578<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email Id: info@gmail.com
                </div>


            </div>
        </div>
    </form>
</body>
</html>
