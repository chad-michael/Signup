<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Start.aspx.vb" Inherits="Start" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Delta College Sign Up</title>
    <%--    <link href="HomePageStyle.css" rel="stylesheet" type="text/css" />--%>
    <style>
        body > footer {
            background: #00704A;
            border-top: 8px solid #7ac142;
            height: 15em;
            border-bottom: 5px solid black;
            width: 100%;
            bottom: 0;
            position: fixed;
        }

            body > footer > div {
                background: #7ac142;
            }

            body > footer > p {
                color: white;
                text-align: center;
                padding-top: 2em;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="PageBoundingBox" cellspacing="0" cellpadding="0" width="100%" align="left">
                <tr>
                    <td>
                        <%--
                            <!-- Begin Header Area -->
						<div class="container">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr valign="top">
									<td class="logo"><a href="http://www.delta.edu" title="Delta College Home Page">
										<img src="images/system/default_logo.gif" alt="Delta College" width="234" height="53" border="0"></a></td>
									<td class="globalBlock">
										<span class="globalTopLinks">
											<a href="http://www.delta.edu/internal/atoz.aspx" title="A-Z Index">A-Z Index</a>
											<a href="http://www3.delta.edu/EventsCalendar/index.aspx" title="Calendar">Calendar</a>
											<a href="http://www.delta.edu/pages/702.aspx" title="Alumni">Alumni</a>
											<a href="https://public.delta.edu/peoplefinder/Pages/search.aspx" title="People Finder">People Finder</a>
											<a href="mailto:info@delta.edu" title="Contact Us">Contact Us</a>
										</span>
									</td>
								</tr>
							</table>
						</div>
						<div class="container">
							<ul id="gnav">
								<li><a href="http://www.delta.edu/pages/689.aspx">Student Engagement</a></li>
								<li><a href="https://mydelta3c.delta.edu/WebAdvisor/WebAdvisor?TYPE=P&amp;PID=ST-WSEI">Class Search</a></li>
								<li><a href="http://www.delta.edu/pages/11825.aspx">Future Students</a></li>
								<li><a href="http://www.delta.edu/pages/10113.aspx">Jobs @ Delta</a></li>
								<li><a href="https://public.delta.edu/catalog/Pages/Programs.aspx">View our Programs</a></li>
								<li><a href="http://www.delta.edu/pages/125.aspx">About Delta</a></li>
							</ul>
						</div>
                        --%>

                        <table class="ContentBoundingBox" cellspacing="0" cellpadding="0" width="100%">
                            <tr valign="top">
                                <!-- 1 Column Style -->
                                <!-- START MAIN Column Content Area -->
                                <td class="MainContent" width="100%">
                                    <div class="container" style="font-size: 8pt; font-family: Tahoma">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr valign="top">
                                                <td class="homebranding">

                                                    <div class="homeBranding" style="width: 95%">
                                                        <div style="margin-top: 25px; margin-left: 10px; margin-right: 10px">
                                                            <div style="text-align: left;">
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
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <%--                                    <div class="containerBreaker">
                                        <div class="container">
                                            <table width="100%" border="0" cellspacing="0" cellpadding="0" class="contentTitles">
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
                                    <div class="bgBreaker">
                                        <div class="container">
                                        </div>
                                    </div>--%>

                                </td>
                                <!-- END MAIN Column Content Area -->
                            </tr>
                        </table>
                        <!-- End Header Area -->
                    </td>
                </tr>
            </table>
        </div>
    </form>
    
    <footer>
        <p>Delta College | 1961 Delta Road, University Center, MI 48710 | 989-686-9093</p>
    </footer>
</body>
</html>

