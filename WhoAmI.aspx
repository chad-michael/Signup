<%@ Page Language="VB" AutoEventWireup="false" CodeFile="WhoAmI.aspx.vb" Inherits="WhoAmI" %>

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
    <%--    <link href="Content/styles.css" rel="stylesheet" />--%>
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
                    display: block;
                    position: relative;
                    width: 100%;
                    height: 0;
                    pointer-events: none;
                }
        </style>

        <div class="header__logo" style="margin-top: -2em;">
            <a href="/" title="Delta College" style="padding-top: 7px;"></a>
        </div>
        <form id="form1" runat="server">
            <div style="width: 100%; margin-top: 1.5em; margin-bottom: 1.5em;">
                <table>
                    <tr>
                        <td>
                            <table id="maintable">
                                <tr>
                                    <!-- START MAIN Column Content Area -->
                                    <td>
                                        <div class="container">
                                            <div>
                                                <h1 style="clear: right;">Electronic Account Username Lookup Application</h1>
                                            </div>
                                            <table>
                                                <tr>
                                                    <td>
                                                        <asp:Panel ID="PanelNoSuccess" runat="server" Visible="false">
                                                            <div id="NoSuccess" class="NoSuccess">
                                                                <div id="NoSuccessInner" class="CenterInfoContent">
                                                                    <asp:Panel ID="ErrorMessage" runat="server" Visible="false">
                                                                        <asp:Label ID="ErrorMessageText" runat="server" Visible="true"></asp:Label>
                                                                    </asp:Panel>

                                                                    <asp:Panel ID="NoAuthentication" runat="server" Visible="false">
                                                                        <p>We were not able to locate your information in our database.  Please check your verification information.</p>
                                                                        <p>If your verification information is correct, please contact the Admissions Office for further troubleshooting.</p>
                                                                    </asp:Panel>

                                                                    <asp:Panel ID="NoGoodPassword" runat="server" Visible="false">
                                                                        <p>Your Password does not meet Delta College password complexity rules</p>
                                                                    </asp:Panel>
                                                                </div>
                                                            </div>
                                                        </asp:Panel>

                                                        <asp:Panel ID="Success" runat="server" Visible="false">
                                                            <div id="CenterInfo" class="CenterInfo">
                                                                <div id="CenterInfoContent" class="CenterInfoContent">
                                                                    <p>
                                                                        Your Delta College Username is:<asp:Label ID="lblUserName" runat="server" Font-Bold="true"></asp:Label>
                                                                    </p>
                                                                    <p>
                                                                        Your user name is used to access eLearning/Desire2Learn, Calendar, DeltaNet, email, FTP, Linux and in accessing the Delta College computers.<br />
                                                                        If you do not know your password, or you wish to change it, please return to
                                                                        <asp:HyperLink ID="linkSignUp" runat="server" NavigateUrl="~/start.aspx" Text="Signup"></asp:HyperLink>
                                                                        to create / reset your Delta College password and to learn how to access these accounts.
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </asp:Panel>

                                                        <div class="panel-group pin">
                                                            <div class="panel panel-success">
                                                                <div class="panel-heading myriadPro">
                                                                    <p style="margin: 0 0 .5em 0;">Enter Your Information for Verification</p>
                                                                </div>
                                                                <div class="panel-body">
                                                                    <table>
                                                                        <tr>
                                                                            <td>Delta ID (i.e. 1234567)</td>
                                                                            <td>
                                                                                <asp:TextBox CssClass="myriadPro" ID="inputTxtDeltaID" runat="server" CausesValidation="True"></asp:TextBox></td>
                                                                            <td>
                                                                                <asp:CustomValidator CssClass="myriadPro" ID="CustomValidator1" runat="server"
                                                                                    ClientValidationFunction="validateLength"
                                                                                    ControlToValidate="inputTxtDeltaID"
                                                                                    ErrorMessage="That does not appear to be a valid DeltaID"
                                                                                    ValidationGroup="idenity"
                                                                                    Display="Dynamic"></asp:CustomValidator>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:Label CssClass="myriadPro" ID="lblssn" runat="server" Text="Last 4 Digits of SSN"></asp:Label>
                                                                            </td>
                                                                            <td>
                                                                                <asp:TextBox CssClass="myriadPro" ID="inputTxtSSN" runat="server" MaxLength="4" TextMode="Password" Width="28pt" ToolTip="Only the last 4 digits of your Social Security Number are required."></asp:TextBox>
                                                                            </td>
                                                                            <td>
                                                                                <asp:RequiredFieldValidator CssClass="myriadPro" ID="RequiredFieldValidator1" runat="server" ControlToValidate="inputTxtSSN"
                                                                                    ErrorMessage="Please Enter This Information" ValidationGroup="idenity"></asp:RequiredFieldValidator>
                                                                            </td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td>
                                                                                <asp:Label CssClass="myriadPro" ID="lblBirthDate" runat="server" Text="Birth Date"></asp:Label></td>
                                                                            <td>
                                                                                <asp:DropDownList CssClass="myriadPro" ID="inputBDMonth" runat="server"></asp:DropDownList>

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
                                                                                <asp:DropDownList CssClass="myriadPro" ID="inputBDYear" runat="server">
                                                                                </asp:DropDownList>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <%-- <td>
                                                                                <asp:Label ID="Label1" runat="server" Text="Click Go to submit your entries"></asp:Label></td>
                                                                            <td>--%>
                                                                            <%--<asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Verify" ImageUrl="~/images/system/btn_go.gif" ValidationGroup="idenity" /></td>--%>
                                                                            <td>
                                                                                <asp:Button CssClass="btnSearch green myriadPro" ID="ImageButton1" Text="Submit" runat="server" ValidationGroup="idenity" />
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
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
                        </td>
                    </tr>
                </table>
            </div>
            <asp:HiddenField ID="hidePassword" runat="server" />
            <asp:HiddenField ID="hideSSN" runat="server" />
        </form>
    </div>
    <footer class="site-footer">
        <p>Delta College | 1961 Delta Road, University Center, MI 48710 | 989-686-9093</p>
    </footer>
</body>
<script type="text/javascript">
    function daysinmonth(lnMonth, lnYear) {
        var dt1, cmn1, cmn2, dtt, lflag, dycnt, lmn;
        lmn = lnMonth - 1;
        dt1 = new Date(lnYear, lmn, 1);
        cmn1 = dt1.getMonth();
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

        datemode = 1;
        var dobj = document.forms[0].elements['inputBDDay'];
        var mobj = document.forms[0].elements['inputBDMonth'];
        var yobj = document.forms[0].elements['inputBDYear'];
        //var hobj = eval(sobjname)

        var monthdays = daysinmonth(mobj.options[mobj.selectedIndex].value, yobj.options[yobj.selectedIndex].value);
        var selectdays = dobj.length;
        var curdy = dobj.options[dobj.selectedIndex].value;
        if (curdy.length == 1) { curdy = "0" + curdy }
        var curmn = mobj.options[mobj.selectedIndex].value;
        if (curmn.length == 1) { curmn = "0" + curmn }
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
        if (datemode == 1) {
            var curdate = curmn + "-" + curdy + "-" + curyr;
        }
        else if (datemode == 2) {
            var curdate = curdy + "/" + curmn + "/" + curyr;
        }
        else if (datemode == 3) {
            var curdate = curyr + curmn + curdy;
        }
        else if (datemode == 4) {
            var cdate = new Date(curyr, curmn - 1, curdy);
            var curdate = cdate.toGMTString();
        }
        //hobj.value = curdate
    }
    function validateLength(oSrc, args) {
        args.IsValid = (args.Value.length >= 7);
    }
</script>
</html>