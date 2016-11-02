<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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

            <h4>Electronic Account Password Reset Application</h4>

            <asp:Panel ID="PanelNoSuccess" runat="server" Visible="false">
                <div class="panel-group">
                    <div id="NoSuccess" class="panel panel-danger">
                        <div id="NoSuccessInner" class="CenterInfoContent">
                            <asp:Panel ID="ErrorMessage" runat="server" Visible="false">
                                <div class="panel-heading error-heading">
                                    <h3 class="panel-title">
                                        <asp:Label ID="ErrorMessageText" runat="server" Visible="true"></asp:Label>
                                    </h3>
                                </div>
                            </asp:Panel>
                            <div class="panel-body">
                                <asp:Panel ID="NoAuthentication" runat="server" Visible="false">
                                    <p>We were not able to locate your information in our database. Please check your verification information.</p>
                                    <p>If your verification information is correct, please contact the Records & Registration Office for further troubleshooting.</p>
                                    <p>If you have tried a second time and you cannot get into your account, please complete a reactivation form.</p>
                                </asp:Panel>

                                <asp:Panel ID="NoGoodPassword" runat="server" Visible="false">
                                    <p>The following problem occured while attempting to update your password.</p>
                                    <p>
                                        <asp:Label Font-Bold="true" Font-Size="12pt" runat="server" ID="lblPasswordProblemMessage"></asp:Label>
                                    </p>
                                    <p>Please scroll down and choose a new password.</p>
                                </asp:Panel>
                            </div>
                        </div>
                    </div>
                </div>
            </asp:Panel>
            <div id="CenterInfo" class="panel-group">
                <div class="panel panel-success">
                    <div class="panel-heading color-heading">
                        <h3 class="panel-title">Delta College Password Guidelines
                        </h3>
                    </div>
                    <div class="panel-body">
                        <p>
                            - Passwords (except Boot passwords) will expire every 122 days. However,
                            users can change their password by using the Signup website (https://signup.delta.edu)
                            as often as they would like. Please wait up to 5 minutes for all passwords to get updated.
                        </p>
                        <p>
                            - If a password is not changed within the 14 day grace period, the user will then
                            be required to use the Signup web site to reset their password before access to the account will be granted.
                        </p>
                        <p>
                            - The length of a password must be between 8 and 32 characters.
                        </p>
                        <p>
                            - No more than three sequential characters from the old password can be used in the
                                new password (i.e. if the old password was “PassWord1234”, the new password cannot contain “Pass”, “Word” or “1234”).
                        </p>
                        <p>- The password must consist of characters from at least two different character types.</p>
                        <div style="padding: .75em 0 0 1.5em;">
                            <strong>There are four character types:</strong><br />
                            Lower case letters <strong>(abcde…..)</strong><br />
                            Upper case letters <strong>(ABCDE…)</strong><br />
                            Numbers <strong>(12345….)</strong><br />
                            Symbols <strong>(!@#$......)</strong>
                        </div>
                    </div>
                    <div class="panel-body">
                        - The password may not contain more than four sequential characters of the login ID.
                    </div>
                    <div class="panel-body">
                        - The password cannot contain any sequences or repetitions of more than two characters (abc, 123, aaa, 111).
                    </div>
                    <div class="panel-body">
                        - The password cannot contain any of the following symbols <strong>('&-[]\",.<>?+).</strong>
                    </div>
                </div>
            </div>

            <div id="NoHeaderTable" class="panel-group">
                <div class="panel panel-success">
                    <div class="panel-heading color-heading">
                        <h3 class="panel-title">Delta College Password Guidelines</h3>
                    </div>
                    <div class="panel-body">
                        <p><strong>Note:</strong></p>
                        <p>
                            If you did not provide a social security number on your application for admission,
                                you have been assigned an alternate number. You may present photo ID on campus
                                and be provided that number. If you would prefer to provide a social security number you may
                                call Admissions at 989-686-9093
                        </p>
                    </div>
                </div>
            </div>

            <div id="TopTable" class="panel-group">
                <div class="panel panel-success">
                    <div class="panel-heading color-heading">
                        <h3 class="panel-title">Enter Your Information for Verification</h3>
                    </div>
                    <div class="panel-body">
                        <table>
                            <tr>
                                <td style="text-align: right; width: 205px;">&nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 205px; text-align: right">&nbsp;</td>
                                <td style="width: 200px"></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td style="width: 205px; text-align: right">
                                    <asp:Label ID="lblDeltaID" runat="server" Text="Delta ID # " /><asp:Label ID="lblDeltaIDExample"
                                        runat="server" Text="(i.e. 1234567)" />
                                </td>
                                <td style="width: 200px">
                                    <asp:TextBox ID="inputTxtDeltaID" runat="server" CausesValidation="True"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Your Delta ID"
                                        ControlToValidate="inputTxtDeltaID" ValidationGroup="idenity"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 205px; text-align: right">
                                    <asp:Label ID="lblssn" runat="server" Text="Last 4 Digits of SSN or 4-digit Alternate ID"></asp:Label>
                                </td>
                                <td style="width: 200px">
                                    <asp:TextBox ID="inputTxtSSN" runat="server" MaxLength="4" TextMode="Password" Width="28pt"
                                        ToolTip="Only the last 4 digits of your Social Security Number are required."></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputTxtSSN"
                                        ErrorMessage="Please Enter This Information" ValidationGroup="idenity"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 205px; text-align: right">
                                    <asp:Label ID="lblBirthDate" runat="server" Text="Birth Date"></asp:Label>
                                </td>
                                <td style="width: 200px">
                                    <asp:DropDownList ID="inputBDMonth" runat="server">
                                    </asp:DropDownList>
                                    <asp:DropDownList ID="inputBDDay" runat="server">
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
                                    <asp:DropDownList ID="inputBDYear" runat="server" Style="visibility: hidden;">
                                        <asp:ListItem Value="1992" Selected="True">1992</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
                                <td style="height: 30px"></td>
                            </tr>
                            <tr>
                                <td style="width: 205px; text-align: right"></td>
                                <td style="width: 200px"></td>
                                <td style="height: 30px"></td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

            <div id="BottomTable" class="panel-group">
                <div class="panel panel-success">
                    <div class="panel-heading color-heading">
                        <h3 class="panel-title">Enter Your Information for Verification</h3>
                    </div>
                    <div class="panel-body">
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
                                <td style="height: 34px; width: 205px; text-align: right;">
                                    <asp:Label ID="lblVerify" runat="server" Text="Click Go to submit your entries"></asp:Label>
                                </td>
                                <td style="width: 200px;">

                                    <asp:Button ID="btnSubmit" runat="server" Text="GO"
                                        ValidationGroup="idenity" />
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
            </div>

            <asp:HiddenField ID="hidePassword" runat="server" />
            <asp:HiddenField ID="hideSSN" runat="server" />
        </form>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    <!-- END MAIN Column Content Area -->

    <footer class="site-footer">
        <p>Delta College | 1961 Delta Road, University Center, MI 48710 | 989-686-9093</p>
    </footer>

    <script src="Scripts/jquery-3.1.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
</body>

<script src="Scripts/jquery-3.1.1.js"></script>
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
        $("#btnSubmit").replaceWith('<input type="submit" id="btnSubmit" value="GO" name="btnSubmit">');
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

    window.onload = changeText();
    function changeText() {
        if (document.getElementById("lblPasswordProblemMessage").innerHTML == "Too many chars from your username in the password") {
            document.getElementById("lblPasswordProblemMessage").innerHTML = "Too many characters from your username in the password";
        };
    };
</script>
</html>