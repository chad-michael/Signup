<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Default" %>

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
        <div class="indent">
            <h1>Reset your Electronic Account Password</h1>
        </div>
        <form id="form1" runat="server">

            <div>
                <asp:Panel ID="PanelNoSuccess" runat="server" Visible="false">
                    <div class="panel-group" style="clear: both;">
                        <div id="NoSuccess" class="panel panel-danger">
                            <div id="NoSuccessInner">
                                <asp:Panel ID="ErrorMessage" runat="server" Visible="false">
                                    <div class="panel-heading">
                                        <h2>Password Change NOT Successful!</h2>
                                    </div>
                                </asp:Panel>
                                <div class="panel-body">
                                    <asp:Label class="myriadPro" ID="ErrorMessageText" runat="server" Visible="true"></asp:Label>
                                    <p />
                                    <asp:Panel ID="NoAuthentication" runat="server" Visible="false">
                                        <p style="font-style: normal">We were not able to locate your information in our database. Please check your verification information.</p>
                                        <p style="font-size: 12pt;">If your verification information is correct, please contact the Records & Registration Office for further troubleshooting.</p>
                                        <p style="font-style: normal">
                                            <em class="myriadPro">If you have tried a second time and you cannot get into your account, please complete a reactivation form.</em>
                                        </p>
                                    </asp:Panel>
                                    <asp:Panel ID="NoGoodPassword" runat="server" Visible="false">
                                        <div class="clearfix myriadProSemiBold" style="float: left;">
                                            <p>The following problem occurred while attempting to update your password.</p>
                                            <br />
                                            <p style="font-size: 16pt; font-weight: bolder; padding: .5em 0 .5em .25em">
                                                <asp:Label runat="server" ID="lblPasswordProblemMessage"></asp:Label>
                                            </p>
                                            <br />
                                            <p style="font-weight: bold; font-size: 14pt">&nbsp;<em>**</em> Please scroll down and choose a new password. <em>**</em>&nbsp;</p>
                                        </div>
                                    </asp:Panel>
                                </div>
                            </div>
                        </div>
                    </div>
                </asp:Panel>

                <div id="CenterInfo" class="panel-group">
                    <div style="clear: both; margin-top: -1em; border: none;">
                        <h2 style="padding-bottom: 10px; padding-top: 10px;">Delta College Password Guidelines</h2>
                        <div class="panel-body" style="margin-top: 5px !important;">
                            <p>
                                - Passwords (except Boot passwords) will expire every 122 days. However,
                                users can change their password by using the <a href="https://signup.delta.edu">Signup</a> website (https://signup.delta.edu) as often as they would like.<br />
                                &nbsp;Please wait up to 5 minutes for all passwords to get updated.
                            </p>
                            <p>
                                - If a password is not changed within the 14 day grace period, the user will then be required to use the Signup website to reset their password before access to the account will be granted.
                            </p>
                            <p>
                                - The length of a password must be between 8 and 32 characters.
                            </p>
                            <p>
                                - No more than three sequential characters from the old password can be used in the new password<br />
                                &nbsp;(i.e. if the old password was “PassWord1234”, the new password cannot contain “Pass”, “Word” or “1234”).
                            </p>
                            <p>
                                - The password must consist of characters from at least two different character types.
                            </p>
                            <div class="myriadPro" style="margin-left: 5em;">
                                There are four character types:<br />
                                Lower case letters(abcde…..)<br />
                                Upper case letters (ABCDE…)<br />
                                Numbers (12345….)<br />
                                Symbols (!@#$......)
                            </div>
                        </div>
                        <div class="panel-body" style="padding-top: .5em;">
                            <p>
                                - The password may not contain more than four sequential characters of the login ID.
                            </p>
                            <p>
                                - The password cannot contain any sequences or repetitions of more than two characters (abc, 123, aaa, 111).
                            </p>
                            <p>
                                - The password cannot contain any of the following symbols ('&-[]\",.<>?+).
                            </p>
                        </div>
                    </div>
                </div>

                <div id="NoHeaderTable" class="panel-group">
                    <p style="padding: 0 0 0 0; margin: 1em 0 0 0; clear: both">
                        <strong>Note:</strong>
                        <br />
                        If you did not provide a social security number on your application for admission, you have been assigned an alternate number.<br />
                        You may present photo ID on campus and be provided that number. If you would prefer to provide a social security number you may call Admissions at 989-686-9093
                    </p>
                </div>

                <div id="TopTable" class="panel-group">
                    <div>
                        <div>
                            <h2 style="margin-bottom: 20px;">Enter Your Information for Verification</h2>
                        </div>
                        <div class="panel-body" style="background: #fff; width: 60%; margin-left: 60px;">
                            <table>
                                <tr>
                                    <td style="text-align: right;">
                                        <asp:Label CssClass="myriadPro" ID="lblDeltaID" runat="server" Text="Delta ID # " /><asp:Label ID="lblDeltaIDExample"
                                            runat="server" Text="(i.e. 1234567)" />
                                    </td>
                                    <td style="width: 200px">
                                        <asp:TextBox ID="inputTxtDeltaID" runat="server" CausesValidation="True"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator CssClass="myriadPro" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Your Delta ID"
                                            ControlToValidate="inputTxtDeltaID" ValidationGroup="idenity"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 205px; text-align: right;">
                                        <asp:Label CssClass="myriadPro" ID="lblssn" runat="server" Text="Last 4 Digits of SSN or 4-digit Alternate ID"></asp:Label>
                                    </td>
                                    <td style="width: 100%;">
                                        <asp:TextBox ID="inputTxtSSN" runat="server" MaxLength="4" TextMode="Password" Width="28pt"
                                            ToolTip="Only the last 4 digits of your Social Security Number are required."></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator CssClass="myriadPro" ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputTxtSSN"
                                            ErrorMessage="Please Enter This Information" ValidationGroup="idenity"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 205px; text-align: right;">
                                        <asp:Label ID="lblBirthDate" runat="server" Text="Birth Date"></asp:Label>
                                    </td>
                                    <td style="padding-left: 55px;">
                                        <asp:DropDownList CssClass="myriadPro" ID="inputBDMonth" runat="server">
                                        </asp:DropDownList>
                                        <asp:DropDownList CssClass="myriadPro" ID="inputBDDay" runat="server">
                                            <asp:ListItem Value="1">1</asp:ListItem>
                                            <asp:ListItem Value="2">2</asp:ListItem>
                                            <asp:ListItem Value="3">3</asp:ListItem>
                                            <asp:ListItem Value="4">4</asp:ListItem>
                                            <asp:ListItem Value="5">5</asp:ListItem>
                                            <asp:ListItem Value="6">6</asp:ListItem>
                                            <asp:ListItem Value="7">7</asp:ListItem>
                                            <asp:ListItem Value="8">8</asp:ListItem>
                                            <asp:ListItem Value="9">9</asp:ListItem>
                                            <asp:ListItem Value="10">10</asp:ListItem>
                                            <asp:ListItem Value="11">11</asp:ListItem>
                                            <asp:ListItem Value="12">12</asp:ListItem>
                                            <asp:ListItem Value="13">13</asp:ListItem>
                                            <asp:ListItem Value="14">14</asp:ListItem>
                                            <asp:ListItem Value="15">15</asp:ListItem>
                                            <asp:ListItem Value="16">16</asp:ListItem>
                                            <asp:ListItem Value="17">17</asp:ListItem>
                                            <asp:ListItem Value="18">18</asp:ListItem>
                                            <asp:ListItem Value="19">19</asp:ListItem>
                                            <asp:ListItem Value="20">20</asp:ListItem>
                                            <asp:ListItem Value="21">21</asp:ListItem>
                                            <asp:ListItem Value="22">22</asp:ListItem>
                                            <asp:ListItem Value="23">23</asp:ListItem>
                                            <asp:ListItem Value="24">24</asp:ListItem>
                                            <asp:ListItem Value="25">25</asp:ListItem>
                                            <asp:ListItem Value="26">26</asp:ListItem>
                                            <asp:ListItem Value="27">27</asp:ListItem>
                                            <asp:ListItem Value="28">28</asp:ListItem>
                                            <asp:ListItem Value="29">29</asp:ListItem>
                                            <asp:ListItem Value="30">30</asp:ListItem>
                                            <asp:ListItem Value="31">31</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:DropDownList CssClass="myriadPro" ID="inputBDYear" runat="server" Style="visibility: hidden;">
                                            <asp:ListItem Value="1992" Selected="True">1992</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 205px; text-align: right; height: 28px;">
                                        <asp:Label CssClass="myriadPro" ID="lblPassword" runat="server" Text="Password"></asp:Label>
                                    </td>
                                    <td style="width: 100%;">
                                        <asp:TextBox ID="inputTxtPassword" runat="server" TextMode="Password" ValidationGroup="idenity"></asp:TextBox>
                                    </td>
                                    <td style="height: 28px">
                                        <asp:RegularExpressionValidator
                                            CssClass="myriadPro"
                                            ID="RegularExpressionValidator1" runat="server"
                                            ControlToValidate="inputTxtPassword"
                                            Display="Dynamic"
                                            ErrorMessage="Your Password Does Not Meet Requirements" ValidationExpression="^.*(?=.{8,32}).*$"
                                            ValidationGroup="idenity">Your Password Does Not Meet Requirements</asp:RegularExpressionValidator>
                                        <asp:RegularExpressionValidator CssClass="myriadPro" ID="RegularExpressionValidator2" runat="server" ControlToValidate="inputTxtPassword"
                                            Display="Dynamic" ErrorMessage="Your Password Does Not Meet Requirements" ValidationExpression="^[a-zA-Z0-9^!`~/@\#}$%:;)(_^{*=|]+$"
                                            ValidationGroup="idenity">Your Password contains some symbols which are not allowed</asp:RegularExpressionValidator>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputTxtPassword"
                                            Display="Dynamic" ErrorMessage="You Must Enter A Password" ValidationGroup="idenity"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 205px; text-align: right; height: 28px;">
                                        <asp:Label CssClass="myriadPro" ID="lblConfirm" runat="server" Text="Re-enter password for verification"></asp:Label>
                                    </td>
                                    <td style="width: 100%;">
                                        <asp:TextBox CssClass="myriadPro" ID="inputTxtPasswordConfirm" runat="server" TextMode="Password"></asp:TextBox>
                                    </td>
                                    <td style="height: 28px">
                                        <asp:CompareValidator CssClass="myriadPro" ID="CompareValidator1" runat="server" ControlToCompare="inputTxtPassword"
                                            ControlToValidate="inputTxtPasswordConfirm" Display="Dynamic" ErrorMessage="Your Passwords Do Not Match Each Other"
                                            ValidationGroup="idenity">Your Passwords Do Not Match Each Other</asp:CompareValidator><asp:RequiredFieldValidator
                                                CssClass="myriadPro" ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputTxtPasswordConfirm"
                                                ErrorMessage="RequiredFieldValidator" ValidationGroup="idenity" Display="Dynamic">Please confirm your password</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>

                                    <td style="width: 100%; padding-top: 15px;">

                                        <asp:Button CssClass="myriadPro" ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="idenity" />
                                    </td>
                                    <td style="height: 34px"></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>

                <%--    <div id="BottomTable" class="panel-group" style="margin-top: 1em;">
                <div class="panel panel-success">
                    <div class="panel-heading color-heading" style="height: 3.2em;">
                        <h2 class="panel-title">Enter Your Information for Verification</h2>
                    </div>
                    <div class="panel-body" style="background: lightgrey;">
                        <table>
                            <tr>
                                <td style="text-align: right">&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 205px; text-align: right; height: 15px;">&nbsp;</td>
                                <td style="width: 200px"></td>
                                <td style="height: 15px"></td>
                            </tr>
                            <tr>
                                <td style="width: 205px; text-align: right; height: 28px;">
                                    <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td style="width: 200px">
                                    <asp:TextBox ID="inputTxtPassword" runat="server" TextMode="Password" ValidationGroup="idenity"></asp:TextBox>
                                </td>
                                <td style="height: 28px">
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="inputTxtPassword"
                                        Display="Dynamic" ErrorMessage="Your Password Does Not Meet Requirements" ValidationExpression="^.*(?=.{8,32}).*$"
                                        ValidationGroup="idenity">Your Password Does Not Meet Requirements</asp:RegularExpressionValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="inputTxtPassword"
                                        Display="Dynamic" ErrorMessage="Your Password Does Not Meet Requirements" ValidationExpression="^[a-zA-Z0-9^!`~/@\#}$%:;)(_^{*=|]+$"
                                        ValidationGroup="idenity">Your Password contains some symbols which are not allowed</asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputTxtPassword"
                                        Display="Dynamic" ErrorMessage="You Must Enter A Password" ValidationGroup="idenity"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 205px; text-align: right; height: 28px;">
                                    <asp:Label ID="lblConfirm" runat="server" Text="Re-enter password for verification"></asp:Label>
                                </td>
                                <td style="width: 200px">
                                    <asp:TextBox ID="inputTxtPasswordConfirm" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                                <td style="height: 28px">
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="inputTxtPassword"
                                        ControlToValidate="inputTxtPasswordConfirm" Display="Dynamic" ErrorMessage="Your Passwords Do Not Match Each Other"
                                        ValidationGroup="idenity">Your Passwords Do Not Match Each Other</asp:CompareValidator><asp:RequiredFieldValidator
                                            ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputTxtPasswordConfirm"
                                            ErrorMessage="RequiredFieldValidator" ValidationGroup="idenity" Display="Dynamic">Please confirm your password</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>

                                <td style="width: 200px;">

                                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" ValidationGroup="idenity" />
                                </td>
                                <td style="height: 34px"></td>
                            </tr>
                            <tr>
                                <td style="width: 205px; height: 34px; text-align: right"></td>
                                <td style="width: 200px; height: 34px"></td>
                                <td style="height: 34px"></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>--%>

                <asp:HiddenField ID="hidePassword" runat="server" />
                <asp:HiddenField ID="hideSSN" runat="server" />
            </div>
        </form>
    </div>
    <!-- END MAIN Column Content Area -->

    <footer class="site-footer" style="margin-top: 2em;">
        <p>Delta College | 1961 Delta Road, University Center, MI 48710 | 989-686-9093</p>
    </footer>

    <script src="Scripts/bootstrap.js"></script>

    <script type="text/javascript">

        function daysinmonth(lnMonth, lnYear) {
            var cmn2, dtt, lflag, dycnt;
            var lmn = lnMonth - 1;
            var dt1 = new Date(lnYear, lmn, 1);
            var cmn1 = dt1.getMonth();
            dtt = dt1.getTime() + 2332800000;
            lflag = true;
            dycnt = 29;
            while (lflag) {
                dtt = dtt + 86400000;
                dt1.setTime(dtt);
                cmn2 = dt1.getMonth();
                if (cmn1 != cmn2) {
                    lflag = false;
                }
                else { dycnt = dycnt + 1 }
            }
            if (dycnt > 31) { dycnt = 31 }
            return dycnt;
        }

        function setdays() {

            var datemode = 1;
            var dobj = document.forms[0].elements['inputBDDay'];
            var mobj = document.forms[0].elements['inputBDMonth'];
            var yobj = document.forms[0].elements['inputBDYear'];
            //var hobj = eval(sobjname)

            var monthdays = daysinmonth(mobj.options[mobj.selectedIndex].value, yobj.options[yobj.selectedIndex].value);
            var selectdays = dobj.length;
            var curdy = dobj.options[dobj.selectedIndex].value;
            if (curdy.length === 1) { curdy = "0" + curdy }
            var curmn = mobj.options[mobj.selectedIndex].value;
            if (curmn.length === 1) { curmn = "0" + curmn }
            var curyr = yobj.options[yobj.selectedIndex].value;
            if (selectdays > monthdays) {
                for (var dlp = selectdays; dlp > monthdays; dlp--) {
                    dobj.options[dlp - 1] = null;
                }
            }
            else if (monthdays > selectdays) {
                for (var dlp = selectdays; dlp < monthdays; dlp++) {
                    dobj.options[dlp] = new Option(dlp + 1, dlp + 1);
                }
            }
            if (curdy > monthdays) {
                dobj.options[monthdays - 1].selected = true;
                curdy = monthdays;
            }
            var curdate;
            if (datemode === 1) {
                curdate = curmn + "-" + curdy + "-" + curyr;
            } else if (datemode == 2) {
                curdate = curdy + "/" + curmn + "/" + curyr;
            } else if (datemode === 3) {
                curdate = curyr + curmn + curdy;
            } else if (datemode === 4) {
                var cdate = new Date(curyr, curmn - 1, curdy);
                curdate = cdate.toGMTString();
            }
            //hobj.value = curdate
        }

        function validateLength(oSrc, args) {
            args.IsValid = (args.Value.length >= 7);
        }

        $(document).ready(function () {
            var clicked = false;
            $("#btnSubmit").replaceWith('<input type="submit" id="btnSubmit" value="Submit" name="btnSubmit">');
            $("#btnSubmit").click(function (evt) {
                evt.preventDefault();
                var validationResult = Page_ClientValidate('idenity');
                if (validationResult) {
                    $(this).val('Please wait...');
                    $(this).attr('disabled', 'disabled');
                    SunGard_DoPostBackWithOptions(new WebForm_PostBackOptions("btnSubmit", "", false, "", "", false, false));
                } else {

                }
            });

            function SunGard_DoPostBackWithOptions(options) {
                var validationResult = true;
                if (options.validation) {
                    if (typeof (Page_ClientValidate) == 'function') {
                        validationResult = Page_ClientValidate(options.validationGroup);
                    }
                }
                if (validationResult) {
                    if ((typeof (options.actionUrl) != "undefined") && (options.actionUrl != null) && (options.actionUrl.length > 0)) {
                        theForm.action = options.actionUrl;
                    }
                    if (options.trackFocus) {
                        var lastFocus = theForm.elements["__LASTFOCUS"];
                        if ((typeof (lastFocus) != "undefined") && (lastFocus != null)) {
                            if (typeof (document.activeElement) == "undefined") {
                                lastFocus.value = options.eventTarget;
                            }
                            else {
                                var active = document.activeElement;
                                if ((typeof (active) != "undefined") && (active != null)) {
                                    if ((typeof (active.id) != "undefined") && (active.id != null) && (active.id.length > 0)) {
                                        lastFocus.value = active.id;
                                    }
                                    else if (typeof (active.name) != "undefined") {
                                        lastFocus.value = active.name;
                                    }
                                }
                            }
                        }
                    }
                } else {

                }

                __doPostBack(options.eventTarget, options.eventArgument);

            }
        });

        //window.onload = changeText();

        //function changeText() {
        //    if (document.getElementById("lblPasswordProblemMessage").innerHTML != null) {
        //        if (document.getElementById("lblPasswordProblemMessage").innerHTML ===
        //            "Too many chars from your username in the password") {
        //            document.getElementById("lblPasswordProblemMessage")
        //                .innerHTML = "Too many characters from your username in the password";
        //        };
        //    };
        //};
    </script>
</body>
</html>