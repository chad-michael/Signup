<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Start.aspx.vb" Inherits="Start" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=EDGE" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="Delta College Signup">
    <meta name="keywords" content="Delta College, Signup">
    <meta name="author" content="Delta College - OIT">

    <script src="Scripts/jquery-3.1.1.js"></script>
    <script src="Scripts/modernizr-2.8.3.js"></script>

    <%--HTML5 shiv script in order to allow styling of HTML5 elements in older IE browsers--%>
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <title>Delta College Sign Up</title>

    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/delta-branding.css" rel="stylesheet" />

    <link rel="shortcut icon" type="img/x-icon" href="favicon.ico" />
</head>
<body>
    <div class="body-container">
        <header class="logo">
            <a href="https://www.delta.edu">
                <img src="images/DeltaLogo.png" class="header-logo" alt="Delta College logo" />
            </a>
        </header>

        <form id="form1" runat="server">
            <div>
                <table class="PageBoundingBox">
                    <tr>
                        <td>
                            <table class="ContentBoundingBox responsive">
                                <tr>
                                    <td class="MainContent">
                                        <div class="container">
                                            <table>
                                                <tr>
                                                    <td class="homebranding">
                                                        <div>
                                                            <b>SIGNUP:&nbsp; Delta College Electronic Accounts<br />
                                                                <br />
                                                                Welcome to the Delta College Signup web page. By using the Delta College Signup program eligible users are able to gain access to Delta College's Electronic Resources.</b>
                                                            <br />
                                                            <hr />
                                                        </div>
                                                        <div id="InfoHeaderLinks" class="InfoHeaderLinks">
                                                            <asp:HyperLink ID="link1" runat="server" NavigateUrl="~/policy.aspx" Text="Click Here to Update/Create Delta College Electronic Accounts or Reset Passwords"></asp:HyperLink>
                                                            <br />
                                                            <br />
                                                            <asp:HyperLink ID="link2" runat="server" NavigateUrl="~/whoami.aspx" Text="Click Here to Find Your Delta College User Name"></asp:HyperLink>
                                                            <br />
                                                            <br />
                                                            <asp:HyperLink ID="link3" runat="server" NavigateUrl="javascript:history.go(-1)" Text="Return to Previous Page"></asp:HyperLink>
                                                            <br />
                                                            <br />
                                                            All information submitted on the above link is protected by 128-bit encryption.
                                                                    All users are bound to the Delta College Electronic Resource Access and Use Guidelines.
                                                                    <br />
                                                            <br />
                                                            For questions regarding your account please contact the OIT Help Desk at 989-686-9575 or
                                                                    <asp:HyperLink runat="server" ID="mailTo" NavigateUrl="mailto:help@alpha.delta.edu" Text="help@delta.edu"></asp:HyperLink>
                                                            <br />
                                                            <br />
                                                            <p></p>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <!-- END MAIN Column Content Area -->
                                </tr>
                            </table>
                            <td>
                    </tr>
                </table>
            </div>
        </form>
    </div>

    <footer class="site-footer">
        <p>Delta College | 1961 Delta Road, University Center, MI 48710 | 989-686-9093</p>
    </footer>

    <script src="Scripts/bootstrap.js"></script>
</body>
</html>