<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="WebLink.aspx.vb" Inherits="Main_WebLink" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    好站相連</p>
<asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="webLink_text" DataValueField="webLink_URL" BulletStyle="CustomImage" DisplayMode="HyperLink" Target="_blank" Font-Size="Large">
</asp:BulletedList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [webLink_URL], [webLink_text] FROM [webLink]"></asp:SqlDataSource>
</asp:Content>

