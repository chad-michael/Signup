<%@ Page Language="VB" AutoEventWireup="false" CodeFile="~/results.aspx.vb" Inherits="results" %>

<!DOCTYPE htm>

<html>
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=EDGE" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="Delta College Signup">
    <meta name="keywords" content="Delta College, Signup">
    <meta name="author" content="Delta College - OIT">

    <script>
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
    <script src="Scripts/jquery-3.1.1.js"></script>
    <script src="Scripts/modernizr-2.8.3.js"></script>

    <title>Delta College Sign Up</title>

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
            <div>
                <table class="PageBoundingBox" style="margin: 2em 0em -12em 0;">
                    <tr>
                        <td>
                            <table class="ContentBoundingBox">
                                <tr>
                                    <!-- 1 Column Style -->
                                    <!-- START MAIN Column Content Area -->
                                    <td class="MainContent">
                                        <div class="container">
                                            <table>
                                                <tr>
                                                    <td class="homebranding">
                                                        <div id="homebranidng2" class="homebranding2">
                                                            <div id="pageContent" class="pageContent">
                                                                <div>
                                                                    <h2 style="clear: right">SIGNUP:  Delta College</h2>
                                                                </div>

                                                                <div id="ResultsTopInfo" class="ResultsTopInfo clearfix" style="clear: left; padding-bottom: 1em;">
                                                                    <p>
                                                                        Password Changed for username:
																		<asp:Label ID="lblUserName" runat="server" Font-Bold="True" Text="Default User Name" ForeColor="#000000"></asp:Label>
                                                                        This change may take up to 5 minutes to take effect.&nbsp;<br />
                                                                        Please restart your computer to ensure that all applications are using your new password.
                                                                    </p>
                                                                </div>

                                                                <asp:Panel ID="ErrorMessage" runat="server" Width="100%" Visible="false">
                                                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Problem on Page:"></asp:Label>
                                                                    <br />
                                                                    <p>There was a problem on this page.</p>
                                                                    <div>
                                                                        <p style="line-height: 1.3em !important;">
                                                                            If you have completed the previous step in the application, your password has been reset for all accounts you have access to.
																			If you are accessing this page directly, either with a bookmark, favorite, or by directly entering the URL in the address bar, please visit
																			<a href="http://signup.delta.edu" target="_self">http://signup.delta.edu</a> and proceed through the application.
																			This error has been logged.
                                                                        </p>
                                                                    </div>
                                                                </asp:Panel>

                                                                <br />

                                                                <asp:Panel ID="Calendar" runat="server" Width="100%">
                                                                    <asp:Label ID="lblCalendar" runat="server" Font-Bold="True" Text="Calendar:"></asp:Label><br />
                                                                    <br />
                                                                    All users eligible for an email account are also given a calendar account. Through
					 Microsoft Office Outlook, calendar users can schedule meetings with
					 users across the campus. Users are not able to see the details of each other's calendar
					 but are able to see their free/busy information for scheduling purposes. From off-campus
					 users can access their calendar through Webmail at <a href="http://webmail.delta.edu">
                         <span style="color: #0000ff; text-decoration: underline">http://webmail.delta.edu</span></a>.
					 For further information and training on Microsoft Office Outlook, please login
					 to Portal and then visit the Center for Organizational Success Informational Site at
					 <a href="https://sites.delta.edu/cos/Pages/default.aspx">
                         <span style="color: #0000ff; text-decoration: underline">https://sites.delta.edu/cos
                         </span>
                     </a>.<br />
                                                                </asp:Panel>
                                                                <br />
                                                                <asp:Panel ID="DeltaNet" runat="server" Width="100%">
                                                                    <asp:Label ID="lblDeltaNet" runat="server" Font-Bold="True" Text="Portal:"></asp:Label><br />
                                                                    <br />
                                                                    Faculty and Staff have access to <a href="https://portal.delta.edu"><span style="color: #0000ff; text-decoration: underline">https://portal.delta.edu</span></a>. To enter
					 Portal use the username specified above and the password you chose on the previous
					 page. The purpose of Portal is to facilitate communication by providing a more
					 efficient method for sharing of documents and information, such as forms, policies
					 and procedures, committee materials, academic and event calendars, professional
					 development and training resources/opportunities, fringe benefit information, funding
					 opportunities, research results, department/division information, fundraising events/information,
					 requisition/purchasing information, renovation/construction progress reports, payroll
					 information, weather/closing information, etc.
                                                                </asp:Panel>
                                                                <br />
                                                                <asp:Panel ID="EmailFacStaff" runat="server" Width="100%" Visible="false">
                                                                    <asp:Label ID="lblEmail" runat="server" Font-Bold="True" Text="E-Mail:"></asp:Label><br />
                                                                    <br />
                                                                    All eligible Delta College Faculty and Staff are given 50 GB of disk space for e-mail.
					 To access your Delta College e-mail from on-campus open Microsoft Office Outlook.
					 If you have any issues please contact the OIT Help Desk at extension 9575. To access
					 your Delta College e-mail account from off-campus you can visit <a href="http://webmail.delta.edu">
                         <span style="color: #0000ff; text-decoration: underline">http://webmail.delta.edu</span></a>
                                                                    using any standard web browser such as Internet Explorer or Netscape (Internet Explorer
					 is the preferred browser). Use the username specified above and the password you
					 chose to access your e-mail. For further information and training on Microsoft Office
					 Outlook, please login to Portal and then visit the Employee Computer Training
					 Center at <a href="https://Portal.delta.edu/cos/Pages/default.aspx"><span style="color: #0000ff; text-decoration: underline">https://Portal.delta.edu/cos/Pages/default.aspx</span></a>.
                                                                </asp:Panel>
                                                                <asp:Panel ID="EmailStudents" runat="server" Width="100%" Visible="false">
                                                                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="E-Mail:"></asp:Label><br />
                                                                    <br />
                                                                    All eligible Delta College Students are given 50 GB of disk space for e-mail. To access your Delta College e-mail account you can visit <a href="http://webmail.delta.edu" target="_self">http://webmail.delta.edu</a> using any standard web browser such as Internet Explorer or Firefox. Use the username specified above and the password you chose to access your e-mail.
                                                                </asp:Panel>
                                                                <br />
                                                                <asp:Panel ID="Educator" runat="server" Width="100%">
                                                                    <asp:Label ID="lblEducator" runat="server" Font-Bold="True" Text="eLearning:"></asp:Label><br />
                                                                    <br />
                                                                    eLearning is the course management system Delta College uses for access to online
					 course sites. If you have registered for an on-campus course that is using eLearning/Desire2Learn,
					 a Blended (CNET) course, or a totally Online (INET) course then you can use your
					 Delta College username and password to log into your electronic course site at <a
                         href="http://eLearning.Delta.edu"><span style="color: #0000ff; text-decoration: underline">http://elearning.delta.edu </span></a>
                                                                </asp:Panel>
                                                                <br />
                                                                <asp:Panel ID="FTPFacStaff" runat="server" Width="100%" Visible="false">
                                                                    <asp:Label ID="lblFTP" runat="server" Font-Bold="True" Text="FTP:"></asp:Label><br />
                                                                    <br />
                                                                    For faculty or staff who have been given access to FTP, to access your FTP
				   account use any standard FTP client such as WS_FTP or Fetch and enter
				   www.delta.edu as the host and your above username and password. To access your
web pages from a web browser visit http://www.delta.edu/. For further information and training on FTP, please
login to Portal and then visit the Center for Organizational Success Information Site at <a
    href="https://sites.delta.edu/cos">https://sites.delta.edu/cos</a>.
If you do not have access to FTP and would like it, please contact your
supervisor to request it.
                                                                </asp:Panel>

                                                                <asp:Panel ID="FTPStudents" runat="server" Width="100%" Visible="false">
                                                                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="FTP:"></asp:Label><br />
                                                                    <br />
                                                                    For classes that have been given access to FTP, students are given 50 MB of disk space for FTP on student.delta.edu. If your class has been granted access to FTP, your instructor will be providing the needed information to access the FTP server.
                                                                </asp:Panel>
                                                                <br />
                                                                <asp:Panel ID="MyDelta" runat="server" Width="100%">
                                                                    <asp:Label ID="lblMyDelta" runat="server" Font-Bold="True" Text="MyDelta:"></asp:Label><br />
                                                                    <br />
                                                                    <a
                                                                        href="http://eLearning.delta.edu"><span style="color: #0000ff; text-decoration: underline"></span></a>To access MyDelta visit <a href="https://my.delta.edu">
                                                                            <span style="color: #0000ff; text-decoration: underline">https://my.delta.edu</span></a>
                                                                    or go to Portal and click the "MyDelta" link under the Quick Launch section on the right-hand side. From within
					 MyDelta you will be able to access such features as:<br />
                                                                    Grades<br />
                                                                    Grade Point<br />
                                                                    Transcripts<br />
                                                                    Searching for Classes<br />
                                                                    Registering/Dropping Classes<br />
                                                                    Class Schedules<br />
                                                                    Financial Aid
					 <p>
                         And More.
                     </p>
                                                                </asp:Panel>
                                                                <br />
                                                                <asp:Panel ID="NetworkAccount" runat="server" Width="100%">
                                                                    <asp:Label ID="lblNetworkAccount" runat="server" Font-Bold="True" Text="Network Account:"></asp:Label><br />
                                                                    <br />
                                                                    <a
                                                                        href="http://eLearning.delta.edu/"><span style="color: #0000ff; text-decoration: underline"></span></a>
                                                                    <p>
                                                                        To access the computers and network at Delta College, enter the username and password
						 specified above and use the Windows Explorer interface to navigate your files. If
						 you require access to additional files or folders please submit a the Network Access
						 Request Form located in Portal under the Forms tab.
						 For further training on Windows as well as tips please login to Portal and then
						 visit the Center For Organizational Success Information Site at <a href="https://sites.delta.edu/cos">
                             <span style="color: #0000ff; text-decoration: underline">https://sites.delta.edu/cos</span></a>.
                                                                    </p>
                                                                </asp:Panel>
                                                                <br />
                                                                <br />
                                                                <br />
                                                                <div>&nbsp;</div>

                                                                <br />
                                                                <br />

                                                                <div>
                                                                    &nbsp;
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="containerBreaker">
                                            <div class="body-container">
                                                <table>
                                                    <tr>
                                                        <td width="252" class="welcome">
                                                            <div class="welcomeContainer">
                                                                <h1 class="welcomeTitle"></h1>
                                                            </div>
                                                        </td>
                                                        <td width="190" class="interest">
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
</html>