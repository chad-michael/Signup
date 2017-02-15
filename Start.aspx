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

    <link href="Content/normalize.css" rel="stylesheet" />
    <link href="Content/fonts.css" rel="stylesheet" />
    <link href="Content/app.css" rel="stylesheet" />

    <link rel="shortcut icon" type="img/x-icon" href="favicon.ico" />

    <%--HTML5 shiv script in order to allow styling of HTML5 elements in older IE browsers--%>
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <title>Delta College Sign Up</title>
</head>
<body>
    <div>

        <%--        <div class="logo">
            <a href="https://www.delta.edu">
                <img <%--src="images/DeltaLogo.png" --%>
        <%--alt="Delta College logo" />
            </a>
        </div>
        --%>

        <style>
            body > div > div {
                display: block;
                width: 100%;
                float: left;
                padding: 0px;
            }

                body > div > div a {
                    display: block;
                    background: url("images/DeltaLogo.png") no-repeat;
                    background-position: center;
                    background-color: #00704A;
                    color: #00704A;
                    width: 240px !important;
                    height: 155px !important;
                    margin-left: 200px;
                    -ms-border-bottom-right-radius: 15px !important;
                    -ms-border-bottom-left-radius: 15px !important;
                    -webkit-border-bottom-right-radius: 15px;
                    -webkit-border-bottom-left-radius: 15px;
                    -moz-border-radius-bottomright: 15px;
                    -moz-border-radius-bottomleft: 15px;
                    border-bottom-right-radius: 15px !important;
                    border-bottom-left-radius: 15px !important;
                }

                body > div > div > a > span {
                    min-height: 100px !important;
                    display: block;
                    position: relative;
                    width: 100%;
                    height: 0;
                    pointer-events: none;
                }

                    body > div > div > a > span > svg {
                        position: absolute;
                        top: 0;
                        left: 0;
                        width: 100%;
                        height: 100%;
                        vertical-align: middle;
                        padding: 5px;
                    }

            svg {
                fill: currentColor;
            }

            body > div > div > a > span > svg > use {
                color: white;
                height: auto;
                width: auto;
            }
        </style>

        <div class="header__logo">
            <a href="/" title="Delta College">
                <%-- <span class="svgstore svgstore--Delta-College-Logo">
	                <svg>
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/images/DeltaLogo.png"></use>
	                </svg>
                </span>--%>
            </a>
        </div>

        <form id="form1" runat="server">
            <div>
                <table class="indent">
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td>
                                        <div class="container">
                                            <table>
                                                <tr>
                                                    <td class="homebranding">
                                                        <div>

                                                            <%-- <h1 style="clear: both; width: 100%; margin-left: 4.2em; padding-top: 1.5em;">DELTA COLLEGE TRANSFER WIZARD</h1>--%>

                                                            <div>
<<<<<<< HEAD
                                                                <h1 style="clear: both; width: 110%; margin-left: -7px;">SIGNUP:&nbsp;Delta College Electronic Accounts</h1>
                                                            </div>
                                                            <div>
                                                                <h2 style="clear: both; margin-left: -7px;">Welcome to the Delta College Account Signup</h2>
=======
                                                                <h1 style="clear: both; width: 100%">SIGNUP:&nbsp;Delta College Electronic Accounts</h1>
                                                            </div>
                                                            <div>
                                                                <h2 style="clear: both">Welcome to the Delta College Account Signup</h2>
>>>>>>> 8667f84989f21af0b2435ec40bb0b89c0849293c
                                                            </div>
                                                        </div>

                                                        <%--                                                        <div class="clearfix"></div>--%>

                                                        <div>
                                                            <p style="clear: both;">By using the Delta College Account Signup, eligible users are able to gain access to Delta College's electronic resources.</p>
                                                        </div>

                                                        <div class="clearfix">
                                                            <hr />
                                                        </div>

                                                        <div id="InfoHeaderLinks" class="InfoHeaderLinks">
                                                            <p>
                                                                <a href="policy.aspx">Update/create Delta College electronic accounts or reset passwords</a><br />
                                                                <a href="whoami.aspx">Find your Delta College user name</a><br />
                                                                <a href="javascript:history.go(-1)">Return to previous page</a><br />
                                                            </p>
                                                        </div>

                                                        <div style="float: left;">
                                                            <p>
                                                                All information submitted on the above link is protected by 128-bit encryption.<br />
                                                                All users are bound to the <a href="policy.aspx">Delta College Electronic Resource Access and Use Guidelines</a><br />
                                                            </p>
                                                            <div>
                                                                <p>
                                                                    For questions regarding your account please contact the OIT Help Desk at
                                                                    <a href="tel:+19896869575">989-686-9575</a> or
                                                                    <asp:HyperLink runat="server" ID="mailTo" NavigateUrl="mailto:help@alpha.delta.edu" Text="help@delta.edu"></asp:HyperLink>
                                                                </p>
                                                            </div>
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