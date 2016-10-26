<%@ Control Language="VB" AutoEventWireup="false" CodeFile="NoSuccess.ascx.vb" Inherits="ControlModules_NoSuccess" %>
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