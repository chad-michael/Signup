<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PinRequired.aspx.vb" Inherits="PinRequired" %>

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

    <link href="Content/styles.css" rel="stylesheet" />
    <link href="Content/fonts.css" rel="stylesheet" />
    <link href="Content/app.css" rel="stylesheet" />

    <link rel="shortcut icon" type="img/x-icon" href="favicon.ico" />

    <%--HTML5 shiv script in order to allow styling of HTML5 elements in older IE browsers--%>
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
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

            <!-- 1 Column Style -->
            <!-- START MAIN Column Content Area -->

            <h1 style="margin-left: 5em;">Electronic Account Password Reset Application</h1>

            <asp:Panel ID="ErrorMessage" runat="server" Visible="false">
                <asp:Label ID="ErrorMessageText" runat="server" Visible="true"></asp:Label>
            </asp:Panel>

            <div id="PinTable" class="panel-group pin">
                <div class="panel panel-success" title="Delta College Password Guidelines">
                    <h2 style="padding: 0 0 .75em 1em; margin-left: 1.3em;">Enter Your PIN to change your Password</h2>
                    <div class="panel-body">
                        <table>
                            <tr>
                                <td class="floatRight">
                                    <asp:Label ID="lblPin" runat="server" Text="Pin"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="inputTxtPin" runat="server" TextMode="Password" ValidationGroup="idenity"></asp:TextBox>
                                </td>
                                <td class="floatRight">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputTxtPin"
                                        Display="Dynamic" ErrorMessage="You Must Enter A Pin" ValidationGroup="idenity"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="floatRight">
                                    <asp:Label ID="lblConfirm" runat="server" Text="Re-enter pin for verification"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="inputTxtPinConfirm" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="inputTxtPin"
                                        ControlToValidate="inputTxtPinConfirm" Display="Dynamic" ErrorMessage="Your Pins Do Not Match Each Other"
                                        ValidationGroup="idenity">Your Pins Do Not Match Each Other</asp:CompareValidator><asp:RequiredFieldValidator
                                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputTxtPinConfirm"
                                            ErrorMessage="RequiredFieldValidator" ValidationGroup="idenity" Display="Dynamic">Please confirm your pin</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="floatRight">
                                    <asp:Label ID="lblVerify" runat="server" Text="Click Go to submit your entries"></asp:Label>
                                </td>
                                <td>

                                    <asp:Button ID="btnSubmit" runat="server" Text="GO" ValidationGroup="idenity" />
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

            <asp:HiddenField ID="hidePassword" runat="server" />
            <asp:HiddenField ID="hideSSN" runat="server" />
        </form>
    </div>
    <!-- END MAIN Column Content Area -->

    <footer class="site-footer" style="margin-top: 2em;">
        <p>Delta College | 1961 Delta Road, University Center, MI 48710 | 989-686-9093</p>
    </footer>
</body>
</html>