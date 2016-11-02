<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Disagree.aspx.vb" Inherits="Disagree" %>

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
                            <table class="ContentBoundingBox">
                                <tr>
                                    <!-- 1 Column Style -->
                                    <!-- START MAIN Column Content Area -->
                                    <td class="MainContent">
                                        <div class="container" style="font-size: 8pt; font-family: Tahoma">
                                            <table>
                                                <tr>
                                                    <td class="homebranding">
                                                        <div class="homeBranding" style="width: 95%">
                                                            <div class="Eraug">
                                                                <h4>Electronic Resources Access and Use Guidelines</h4>
                                                                <h4>Disagree With Terms of Access</h4>
                                                                <p>You have stated that you will not agree to follow our terms of access. If you change your mind, you may re-apply by following the same procedure. If you are registered for a class that requires the use of this computer, and you still do not desire to agree to our terms, we suggest that you drop the class.</p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="containerBreaker">
                                            <div class="body-container">
                                                <table class="contentTitles">
                                                    <tr>
                                                        <td class="welcome">
                                                            <div class="welcomeContainer">
                                                                <h1 class="welcomeTitle"></h1>
                                                            </div>
                                                        </td>
                                                        <td class="interest">
                                                            <div class="interestContainer">
                                                                <h1 class="interestTitle"></h1>
                                                            </div>
                                                        </td>
                                                        <td class="news">
                                                            <div class="newsContainer">
                                                                <h1 class="newsTitle"></h1>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                    </td>
                                    <!-- END MAIN Column Content Area -->
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </div>
    <footer class="site-footer">
        <p>Delta College | 1961 Delta Road, University Center, MI 48710 | 989-686-9093</p>
    </footer>
</body>
<script src="Scripts/jquery-3.1.1.js"></script>
<script src="Scripts/bootstrap.js"></script>
</html>