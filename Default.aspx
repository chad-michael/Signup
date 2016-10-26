<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Delta College Sign Up</title>
    <link href="GoodHomePageStyle.css" rel="stylesheet" type="text/css" />
    <link href="PageStyles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" language="javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
    <script language="JavaScript" type="text/javascript">

        function daysinmonth(lnMonth, lnYear) {
            var dt1, cmn1, cmn2, dtt, lflag, dycnt, lmn
            lmn = lnMonth - 1
            dt1 = new Date(lnYear, lmn, 1)
            cmn1 = dt1.getMonth()
            dtt = dt1.getTime() + 2332800000
            lflag = true
            dycnt = 29
            while (lflag) {
                dtt = dtt + 86400000
                dt1.setTime(dtt)
                cmn2 = dt1.getMonth()
                if (cmn1 != cmn2) {
                    lflag = false
                }
                else { dycnt = dycnt + 1 }
            }
            if (dycnt > 31) { dycnt = 31 }
            return dycnt
        }

        function setdays() {

            datemode = 1;
            var dobj = document.forms[0].elements['inputBDDay'];
            var mobj = document.forms[0].elements['inputBDMonth'];
            var yobj = document.forms[0].elements['inputBDYear'];
            //var hobj = eval(sobjname)

            var monthdays = daysinmonth(mobj.options[mobj.selectedIndex].value, yobj.options[yobj.selectedIndex].value)

            var selectdays = dobj.length

            var curdy = dobj.options[dobj.selectedIndex].value

            if (curdy.length == 1) { curdy = "0" + curdy }
            var curmn = mobj.options[mobj.selectedIndex].value
            if (curmn.length == 1) { curmn = "0" + curmn }
            var curyr = yobj.options[yobj.selectedIndex].value
            if (selectdays > monthdays) {
                for (var dlp = selectdays; dlp > monthdays; dlp--) {
                    dobj.options[dlp - 1] = null
                }
            }
            else if (monthdays > selectdays) {
                for (var dlp = selectdays; dlp < monthdays; dlp++) {
                    dobj.options[dlp] = new Option(dlp + 1, dlp + 1)
                }
            }
            if (curdy > monthdays) {
                dobj.options[monthdays - 1].selected = true
                curdy = monthdays
            }
            if (datemode == 1) {
                var curdate = curmn + "-" + curdy + "-" + curyr
            }
            else if (datemode == 2) {
                var curdate = curdy + "/" + curmn + "/" + curyr
            }
            else if (datemode == 3) {
                var curdate = curyr + curmn + curdy
            }
            else if (datemode == 4) {
                var cdate = new Date(curyr, curmn - 1, curdy)
                var curdate = cdate.toGMTString()
            }
            //hobj.value = curdate
        }

        function validateLength(oSrc, args) {
            args.IsValid = (args.Value.length >= 7);
        }
    </script>

    <script type="text/javascript">
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
    </script>
</head>
<body>
    <div class="PageBoundingBox">
        <!-- Begin Header Area -->
        <div class="container">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr valign="top">
                    <td class="logo">
                        <a href="/" title="Delta College Home Page">
                            <img src="https://www.delta.edu/images/system/default_logo.gif" alt="Delta College"
                                width="234" height="53" border="0" /></a></td>
                    <td class="globalBlock">
                        <span class="globalTopLinks">
                            <a href="http://www.delta.edu/internal/atoz.aspx" title="A-Z Index">A-Z Index</a>
                            <a href="http://www3.delta.edu/EventsCalendar/index.aspx" title="Calendar">Calendar</a>
                            <a href="http://www.delta.edu/pages/702.aspx" title="Alumni">Alumni</a>
                            <a href="https://public.delta.edu/peoplefinder/Pages/search.aspx" title="People Finder">People Finder</a>
                            <a href="mailto:info@delta.edu" title="Contact Us">Contact Us</a>
                        </span>
                        <form action="http://www.google.com/u/DeltaCollegeMI" method="GET" name="search"
                            class="searchform" id="search">
                            <table border="0" cellspacing="0" align="right">
                                <tr>
                                    <td style="padding-right: 10px;">
                                        <select name="quicklinks" id="quicklinks" onchange="window.location=this.form.quicklinks.value;"
                                            class="selectquicklink">
                                            <option selected="selected" value="#">Quicklinks</option>
                                            <option value="http://www.delta.edu/academicservices/">Academic Divisions</option>
                                            <option value="http://www.delta.edu/bookstore.aspx">Bookstore</option>
                                            <option value="https://www.delta.edu/elearning.aspx">eLearning</option>
                                            <option value="http://webmail.delta.edu">Email</option>
                                            <option value="http://www.delta.edu/llic.aspx">Library Learning Information Center</option>
                                            <option value="https://my.delta.edu">MyDelta</option>
                                            <option value="http://www.delta.edu/pages/177.aspx">Payment Options</option>
                                            <option value="http://www.delta.edu/pages/10930.aspx">Pool/Fitness</option>
                                            <option value="http://www.delta.edu/pages/12086.aspx">Student Services</option>
                                        </select>
                                    </td>
                                    <td>
                                        <input type="hidden" name="domains" value="delta.edu" />
                                        <input type="hidden" name="sitesearch" value="delta.edu" />
                                        <input name="q" type="text" id="q" value="Search" class="inputsearch" onclick="this.value = '';" /></td>
                                    <td style="padding-left: 3px;">
                                        <input type="image" alt="Start Search" src="https://www.delta.edu/images/system/btn_go.gif"
                                            name="sa" value="Go" /></td>
                                </tr>
                            </table>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
        <div class="container">
            <div style="float: right;">
                <ul id="gnav">
                    <li><a href="http://www.delta.edu/pages/689.aspx">Student Engagement</a></li>
                    <li><a href="https://mydelta3c.delta.edu/WebAdvisor/WebAdvisor?TYPE=P&amp;PID=ST-WSEI">Class Search</a></li>
                    <li><a href="http://www.delta.edu/pages/11825.aspx">Future Students</a></li>
                    <li><a href="http://www.delta.edu/pages/10113.aspx">Jobs @ Delta</a></li>
                    <li><a href="https://public.delta.edu/catalog/Pages/Programs.aspx">View our Programs</a></li>
                    <li><a href="http://www.delta.edu/pages/125.aspx">About Delta</a></li>
                </ul>
            </div>
        </div>
        <!-- End Header Area -->
        <!-- Begin Content Area -->

        <div class="ContentBoundingBox">
            <div class="container">
                <div class="content">

                    <form id="form1" runat="server">

                        <!-- 1 Column Style -->
                        <!-- START MAIN Column Content Area -->

                        <div style="font-size: 8pt; font-family: Tahoma;">

                            <div id="InfoHeader" class="InfoHeader">
                                <asp:Label ID="lblStatusMessage" runat="server"></asp:Label><br />
                                Electronic Account Password Reset Application<br />
                            </div>
                            <asp:Panel ID="PanelNoSuccess" runat="server" Visible="false">
                                <div id="NoSuccess" class="NoSuccess">
                                    <div id="NoSuccessInner" class="CenterInfoContent">
                                        <asp:Panel ID="ErrorMessage" runat="server" Visible="false">
                                            <asp:Label ID="ErrorMessageText" runat="server" Visible="true"></asp:Label>
                                        </asp:Panel>
                                        <asp:Panel ID="NoAuthentication" runat="server" Visible="false">
                                            <p>
                                                We were not able to locate your information in our database. Please check your verification information.
                                            </p>
                                            <p>
                                                If your verification information is correct, please contact the Records & Registration Office for further troubleshooting.
                                            </p>
                                            <p>
                                                If you have tried a second time and you cannot get into your account, please complete a reactivation form.
                                            </p>
                                        </asp:Panel>
                                        <asp:Panel ID="NoGoodPassword" runat="server" Visible="false">
                                            <p>
                                                The following problem occured while attempting to update your password.
                                            </p>
                                            <p>
                                                <asp:Label Font-Bold="true" Font-Size="12pt" runat="server" ID="lblPasswordProblemMessage"></asp:Label>
                                            </p>
                                            <p>
                                                Please scroll down and choose a new password.
                                            </p>
                                        </asp:Panel>
                                    </div>
                                </div>
                            </asp:Panel>
                            <div id="CenterInfo" class="CenterInfo">
                                <div id="CenterInfoContent" class="CenterInfoContent" title="Delta College Password Guidelines">
                                    <p>
                                        Delta College Password Guidelines
                                    </p>
                                    <p>
                                        -Passwords (except Boot passwords) will expire every 122 days. However,
                                                                    users can change their password by using the Signup website (https://signup.delta.edu)
                                                                    as often as they would like. Please wait up to 5 minutes for all passwords to get
                                                                    updated.
                                    </p>
                                    <p>
                                        -If a password is not changed within the 14 day grace period, the user will then
                                                                    be required to use the Signup web site to reset their password before access to
                                                                    the account will be granted.
                                    </p>
                                    <p>
                                        -The length of a password must be between 8 and 32 characters.
                                    </p>
                                    <p>
                                        -No more than three sequential characters from the old password can be used in the
                                                                    new password (i.e. if the old password was “PassWord1234”, the new password cannot
                                                                    contain “Pass”, “Word” or “1234”).
                                    </p>
                                    <p>
                                        -The password must consist of characters from at least two different character types.
                                                                     <br />
                                        There are four character types:
                                                                    <br />
                                        Lower case letters (abcde…..)
                                                                    <br />
                                        Upper case letters (ABCDE…)
                                                                    <br />
                                        Numbers (12345….)
                                                                    <br />
                                        Symbols (!@#$......)
                                    </p>
                                    <p>
                                        -The password may not contain more than four sequential characters of the login
                                                                    ID.
                                    </p>
                                    <p>
                                        -The password cannot contain any sequences or repetitions of more than two characters
                                                                    (abc, 123, aaa, 111).
                                    </p>
                                    <p>
                                        -The password cannot contain any of the following symbols
                                                                    ('&-[]\",.<>?+).
                                    </p>
                                </div>
                            </div>
                            <div id="NoHeaderTable" class="NoHeaderTable" style="height: 160px;">
                                <div style="padding: 40px;">
                                    <p>Note:</p>
                                    <p>
                                        If you did not provide a social security number on your application for admission, you have been assigned an alternate number. You may present photo ID on campus and be provided that number. If you would prefer to provide a social security number you may call Admissions at 989-686-9093
                                    </p>
                                </div>
                            </div>
                            <div id="TopTable" class="TopTable" title="Enter Your Information for Verification">
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
                            <div id="BottomTable" class="BottomTable" title="Enter Your New Password">
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
            </div>
            <!-- END MAIN Column Content Area -->
        </div>
        <!-- Begin Footer Area -->
        <div class="container">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="footer">
                <tr valign="top">
                    <td align="left">Send comments or questions to <a href="mailto:info@delta.edu">info@delta.edu</a><br>
                        Copyright &copy; 2004 Delta College - Revised: February 28, 2006</td>
                    <td align="right">Delta College &bull; 1961 Delta Rd. &bull; University Center, MI 48710<br>
                        989-686-9000 &bull; <a href="mailto:info@delta.edu">info@delta.edu</a><br>
                        <a href="http://www.delta.edu/accessanduse.html">Access and Use Guidelines</a></td>
                </tr>
                <tr>
                    <td colspan="2">

                        <img src="images/SSLFooterBanner.png" />
                    </td>
                </tr>
            </table>
        </div>
        <!-- End Footer Area -->
    </div>
</body>
<script type="text/javascript">
    window.onload = changeText();
    function changeText() {
        if (document.getElementById("lblPasswordProblemMessage").innerHTML == "Too many chars from your username in the password") {
            document.getElementById("lblPasswordProblemMessage").innerHTML = "Too many characters from your username in the password"
        };
    };
</script>
</html>