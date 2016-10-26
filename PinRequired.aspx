<%@ Page Language="VB" AutoEventWireup="false" CodeFile="PinRequired.aspx.vb" Inherits="PinRequired" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd"><html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Delta College Sign Up</title>
    <link href="GoodHomePageStyle.css" rel="stylesheet" type="text/css" />
    <link href="PageStyles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" language="javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>


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
					                        <option value="https://elearning.delta.edu/">eLearning</option>					
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
                                        <input name="q" type="text" id="q" value="Search" class="inputsearch" onclick="this.value='';" /></td>
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
                                                        <asp:Panel ID="ErrorMessage" runat="server" Visible="false">
                                                            <asp:Label ID="ErrorMessageText" runat="server" Visible="true"></asp:Label>
                                                        </asp:Panel>
                                              
                                                        <div id="PinTable" class="PinTable" title="Enter Your New Pin">
                                                            <table>
                                                                <tr>
                                                                    <td style="text-align: right">
                                                                        &nbsp;
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 205px; text-align: right; height: 15px;">
                                                                        &nbsp;</td>
                                                                    <td style="width: 200px">
                                                                    </td>
                                                                    <td style="height: 15px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 205px; text-align: right; height: 28px;">
                                                                        <asp:Label ID="lblPin" runat="server" Text="Pin"></asp:Label>
                                                                    </td>
                                                                    <td style="width: 200px">
                                                                        <asp:TextBox ID="inputTxtPin" runat="server" TextMode="Password" ValidationGroup="idenity"></asp:TextBox>
                                                                    </td>
                                                                    <td style="height: 28px">
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="inputTxtPin"
                                                                            Display="Dynamic" ErrorMessage="You Must Enter A Pin" ValidationGroup="idenity"></asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 205px; text-align: right; height: 28px;">
                                                                        <asp:Label ID="lblConfirm" runat="server" Text="Re-enter pin for verification"></asp:Label>
                                                                    </td>
                                                                    <td style="width: 200px">
                                                                        <asp:TextBox ID="inputTxtPinConfirm" runat="server" TextMode="Password"></asp:TextBox>
                                                                    </td>
                                                                    <td style="height: 28px">
                                                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="inputTxtPin"
                                                                            ControlToValidate="inputTxtPinConfirm" Display="Dynamic" ErrorMessage="Your Pins Do Not Match Each Other"
                                                                            ValidationGroup="idenity">Your Pins Do Not Match Each Other</asp:CompareValidator><asp:RequiredFieldValidator
                                                                                ID="RequiredFieldValidator3" runat="server" ControlToValidate="inputTxtPinConfirm"
                                                                                ErrorMessage="RequiredFieldValidator" ValidationGroup="idenity" Display="Dynamic">Please confirm your pin</asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="height: 34px; width: 205px; text-align: right;">
                                                                        <asp:Label ID="lblVerify" runat="server" Text="Click Go to submit your entries"></asp:Label>
                                                                    </td>
                                                                    <td style="width: 200px;">
                                                                      
                                                                      <asp:Button ID="btnSubmit" runat="server" Text="GO"
                                                                            ValidationGroup="idenity"/>
                                                                    </td>
                                                                    <td style="height: 34px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 205px; height: 34px; text-align: right">
                                                                    </td>
                                                                    <td style="width: 200px; height: 34px">
                                                                    </td>
                                                                    <td style="height: 34px">
                                                                    </td>
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
                    <td align="left">
                        Send comments or questions to <a href="mailto:info@delta.edu">info@delta.edu</a><br>
                        Copyright &copy; 2004 Delta College - Revised: February 28, 2006</td>
                    <td align="right">
                        Delta College &bull; 1961 Delta Rd. &bull; University Center, MI 48710<br>
                        989-686-9000 &bull; <a href="mailto:info@delta.edu">info@delta.edu</a><br>
                        <a href="http://www.delta.edu/accessanduse.html">Access and Use Guidelines</a></td>
                </tr>
		<tr><td colspan="2" >

	<img src="images/SSLFooterBanner.png" />
</td></tr>
            </table>
        </div>
        <!-- End Footer Area -->
    </div>
 
</body>
</html>
