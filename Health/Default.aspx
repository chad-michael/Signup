<%@ Page Language="VB" MasterPageFile="~/Health/Readers.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Health_Default" Title="Untitled Page" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
        DataKeyNames="EventId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="400px">
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <Columns>
            <asp:BoundField DataField="EventTime" HeaderText="EventTime" SortExpression="EventTime" />
            <asp:BoundField DataField="EventType" HeaderText="EventType" SortExpression="EventType" />
            <asp:BoundField DataField="EventCode" HeaderText="EventCode" SortExpression="EventCode" />
            <asp:BoundField DataField="EventDetailCode" HeaderText="EventDetailCode" SortExpression="EventDetailCode" />
            <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
            <asp:BoundField DataField="RequestUrl" HeaderText="RequestUrl" SortExpression="RequestUrl" />
            <asp:BoundField DataField="ExceptionType" HeaderText="ExceptionType" SortExpression="ExceptionType" />
            <asp:BoundField DataField="Details" HeaderText="Details" SortExpression="Details" />
        </Columns>
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <EditRowStyle BackColor="#999999" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNETRoleProviderConnectionString %>"
        SelectCommand="SELECT aspnet_WebEvent_Events.* FROM aspnet_WebEvent_Events"></asp:SqlDataSource>
</asp:Content>