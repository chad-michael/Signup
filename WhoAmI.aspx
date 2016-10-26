<%@ Page Language="VB" AutoEventWireup="false" CodeFile="WhoAmI.aspx.vb" Inherits="WhoAmI" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Delta College Sign Up</title>
    <link href="HomePageStyle.css" rel="stylesheet" type="text/css" />
 <script language="JavaScript" type="text/javascript">

function daysinmonth(lnMonth,lnYear) {
var dt1, cmn1, cmn2, dtt, lflag, dycnt, lmn
lmn = lnMonth-1
dt1 = new Date(lnYear,lmn,1)
cmn1 = dt1.getMonth()
dtt=dt1.getTime()+2332800000
lflag = true
dycnt=29
while (lflag) {
   dtt = dtt + 86400000
   dt1.setTime(dtt)
   cmn2 = dt1.getMonth()
   if (cmn1!=cmn2) {
      lflag = false }
   else {dycnt = dycnt + 1}}
if (dycnt > 31) {dycnt = 31}
return dycnt
}

function setdays(){

datemode = 1;
var dobj = document.forms[0].elements['inputBDDay']; 
var mobj = document.forms[0].elements['inputBDMonth']; 
var yobj = document.forms[0].elements['inputBDYear']; 
//var hobj = eval(sobjname)

var monthdays = daysinmonth(mobj.options[mobj.selectedIndex].value,yobj.options[yobj.selectedIndex].value)

var selectdays = dobj.length

var curdy = dobj.options[dobj.selectedIndex].value

if (curdy.length==1) {curdy = "0"+curdy}
var curmn = mobj.options[mobj.selectedIndex].value
if (curmn.length==1) {curmn = "0"+curmn}
var curyr = yobj.options[yobj.selectedIndex].value
if (selectdays > monthdays) {
   for (var dlp=selectdays; dlp > monthdays; dlp--) {
       dobj.options[dlp-1] = null }}
else if (monthdays > selectdays) {
   for (var dlp=selectdays; dlp < monthdays; dlp++) {
       dobj.options[dlp] = new Option(dlp+1,dlp+1) }}       
if (curdy > monthdays) {
   dobj.options[monthdays-1].selected = true
   curdy = monthdays }
if (datemode==1) {
   var curdate = curmn+"-"+curdy+"-"+curyr }
else if (datemode==2) {
   var curdate = curdy+"/"+curmn+"/"+curyr }
else if (datemode==3) {
   var curdate = curyr+curmn+curdy }
else if (datemode==4) {
   var cdate = new Date(curyr,curmn-1,curdy)
   var curdate = cdate.toGMTString() }
//hobj.value = curdate
}





  function validateLength(oSrc, args){
   args.IsValid = (args.Value.length >= 7);   
}



 </script>
</head>
<body>
<form id="form1" runat="server">
    <div>
    <table class="PageBoundingBox" cellspacing="0" cellpadding="0" width="100%" align="left">
  <tr>
    <td><!-- Begin Header Area -->
	<div class="container">
      <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr valign="top">
          <td class="logo"><a href="http://www.delta.edu" title="Delta College Home Page"><img src="images/system/default_logo.gif" alt="Delta College" width="234" height="53" border="0"></a></td>
          <td class="globalBlock">
		  	<span class="globalTopLinks">
											<a href="http://www.delta.edu/internal/atoz.aspx" title="A-Z Index">A-Z Index</a>                                         
											<a href="http://www3.delta.edu/EventsCalendar/index.aspx" title="Calendar">Calendar</a> 
											<a href="http://www.delta.edu/pages/702.aspx" title="Alumni">Alumni</a> 
											<a href="https://public.delta.edu/peoplefinder/Pages/search.aspx" title="People Finder">People Finder</a> 
											<a href="mailto:info@delta.edu" title="Contact Us">Contact Us</a>                </span>			
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
	
	
<table class="ContentBoundingBox" cellspacing="0" cellpadding="0" width="100%"><tr valign="top">
<!-- 1 Column Style -->
<!-- START MAIN Column Content Area -->
<td class="MainContent" width="100%">
<div class="container" style="font-size: 8pt; font-family: Tahoma">
  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
    <tr valign="top">
      <td class="homebranding">
      
      <div class="homeBranding" style="width: 95%" id="DIV1"> &nbsp;<div> 
            <div id="InfoHeader" class="InfoHeader">
            <asp:Label ID="lblStatusMessage" runat="server"></asp:Label><br />
             Electronic Account User Name Look Up Application<br />           
            </div>
            
           <asp:Panel ID="PanelNoSuccess" runat="server" Visible="false">
		   <div id="NoSuccess" class="NoSuccess">
		   <div id="NoSuccessInner" class="CenterInfoContent">
		    <asp:Panel ID="ErrorMessage" runat="server" Visible="false">
		    <asp:Label ID="ErrorMessageText" runat="server" Visible="true"></asp:Label>
		    
		    </asp:Panel>
		   
		    <asp:Panel ID="NoAuthentication" runat="server" Visible="false">
		   
		    <p>
		    We were not able to locate your information
		    in our database.  Please check your verification information.</p>
		    <p>If your verification information is correct, please contact the Admissions Office for 
		    further troubleshooting. 
		    </p>
		    </asp:Panel>
		    
		    <asp:Panel ID="NoGoodPassword" runat="server" Visible="false"><p>Your Password does not meet Delta College password complexity rules</p></asp:Panel>
		    </div>
		    </div>
		
		    </asp:Panel>
            
            <asp:Panel ID="Success" runat="server" Visible="false">
            <div id="CenterInfo" class="CenterInfo">
                <div id="CenterInfoContent" class="CenterInfoContent"> 
                    <p>Your Delta College Username is:  <asp:Label ID="lblUserName" runat="server" Font-Bold="true"></asp:Label></p>
                    <p>Your user name is used to access eLearning/Desire2Learn, Calendar, DeltaNet, email, FTP, Linux and in accessing the Delta 
                    College computers.  If you do not know your password, or you wish to change it, please return to <asp:HyperLink ID="linkSignUp" runat="server" NavigateUrl="~/start.aspx" Text="Signup"></asp:HyperLink>
                     to create / reset your Delta College password and to learn how to access these accounts. 
                    </p>
                </div>   
             
              </div>  
              </asp:Panel>
              
             <div id="TopTable" class="TopTable" >  
              
             <table>
                 <tr>
                     <td style="text-align: right; width: 205px;">
                         &nbsp;
                     </td>
                 </tr>
                 <tr>
                     <td style="width: 205px; text-align: right">
                         &nbsp;</td>
                     <td style="width: 200px">
                     </td>
                     <td>
                     </td>
                 </tr>
             <tr>
                 <td style="width: 205px; text-align: right">
             
                    <asp:Label ID="lblDeltaID" runat="server" Text="Delta ID # " /><asp:Label ID="lblDeltaIDExample" runat="server" Text="(i.e. 1234567)"/>
             
                </td>
                <td style="width: 200px">
                <asp:TextBox ID="inputTxtDeltaID" runat="server" CausesValidation="True"></asp:TextBox>
                </td>
                 <td>
                     <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validateLength"
                         ControlToValidate="inputTxtDeltaID" ErrorMessage="That does not appear to be a valid DeltaID"
                         ValidationGroup="idenity" Display="Dynamic"></asp:CustomValidator></td>
             </tr>
             <tr>
                <td style="width: 205px; text-align: right">
                 <asp:Label ID="lblssn" runat="server" Text="Last 4 Digits of SSN"></asp:Label>
                </td>
                <td style="width: 200px">
                <asp:TextBox ID="inputTxtSSN" runat="server" MaxLength="4" TextMode="Password" Width="28pt" ToolTip="Only the last 4 digits of your Social Security Number are required."></asp:TextBox>
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
                <asp:DropDownList ID="inputBDMonth" runat="server" >
                                    
                </asp:DropDownList>
                
                <asp:DropDownList ID="inputBDDay" runat="server" >
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
                <asp:DropDownList ID="inputBDYear" runat="server" >
                 
                </asp:DropDownList>
                </td>
                 <td style="height: 30px">
                 </td>
                 </tr>
                 <tr>
                     <td style="width: 205px; text-align: right">
                    <asp:Label ID="Label1" runat="server" Text="Click Go to submit your entries"></asp:Label></td>
                     <td style="width: 200px">
                    
                    <asp:ImageButton ID="ImageButton1" runat="server" AlternateText="Verify" ImageUrl="~/images/system/btn_go.gif" ValidationGroup="idenity" /></td>
                     <td style="height: 30px">
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
<div class="containerBreaker"><div class="container">
	  <table width="100%"  border="0" cellspacing="0" cellpadding="0" class="contentTitles">
        <tr>
          <td width="252" class="welcome"><div class="welcomeContainer"><h1 class="welcomeTitle"></h1></div></td>
          <td width="190" class="interest"><div class="interestContainer"><h1 class="interestTitle"></h1></div></td>
		  <td class="news"><div class="newsContainer"><h1 class="newsTitle"></h1>
		  </div></td>
        </tr>
      </table>
  </div>
</div>
<div class="bgBreaker">
<div class="container">
</div></div>
</td>
<!-- END MAIN Column Content Area -->

</tr></table>
	  <!-- End Header Area -->
	  </td> </tr> </table> 
    </div>
    <asp:HiddenField ID="hidePassword" runat="server" />
    <asp:HiddenField ID="hideSSN" runat="server" />
    </form>
</body>
</html>
