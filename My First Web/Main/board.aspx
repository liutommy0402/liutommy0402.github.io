<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="board.aspx.vb" Inherits="Main_boardAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="留言板" Width="100%"></asp:Label>
    <ol>
        <li>點選主題連結即可觀看詳細內容，並可發表留言</li>
        <li>系統管理者有權刪除不適當的留言</li>
    </ol>
    <h5 class="text-right"><a href="boardAdd.aspx">我要留言</a></h5>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="board_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" PageSize="20" Width="100%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="board_Time" HeaderText="時間" SortExpression="board_Time" />
            <asp:HyperLinkField DataNavigateUrlFields="board_ID" DataNavigateUrlFormatString="boardDetail.aspx?board_ID={0}" DataTextField="board_Subject" HeaderText="主題" Target="_blank" />
            <asp:BoundField DataField="board_Name" HeaderText="留言者" SortExpression="board_Name" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [board_ID], [board_Name], [board_Subject], [board_Time] FROM [board] ORDER BY [board_Time] DESC"></asp:SqlDataSource>
</asp:Content>

