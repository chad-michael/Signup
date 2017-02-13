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

    <title>Delta College Sign Up</title>
    <link href="Content/fonts.css" rel="stylesheet" />
    <link href="Content/app.css" rel="stylesheet" />

    <link rel="shortcut icon" type="img/x-icon" href="favicon.ico" />
</head>
<body>
    <div class="body-container">

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
                    width: 240px;
                    height: 155px;
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
                }

                body > div > div > a > span {
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

        <div class="header__logo" style="margin-bottom: 1.5em;">
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
                            <div style="width: 95%">

                                <div class="Eraug">
                                    <h1 style="clear: right;">Electronic Resources Access and Use Guidelines</h1>
                                    <h2 style="clear: both;">Disagree With Terms of Access</h2>
                                </div>
                                <br />

                                <span style="clear: right">Last Revision 9/7/2006</span>
                                <hr />
                                <p style="padding-top: .75em; line-height: 1.3rem !important;">
                                    You have stated that you will not agree to follow our terms of access.<br />
                                    If you change your mind, you may re-apply by following the same procedure. If you are registered for a class that requires the use of this computer, and you still do not desire to agree to our terms, we suggest that you drop the class.
                                </p>
                            </div>
                        </td>
                    </tr>
                </table>

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