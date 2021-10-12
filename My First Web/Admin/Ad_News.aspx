<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Ad_News.aspx.vb" Inherits="Admin_Ad_News" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="news_Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('確定要刪除此筆新聞?')" Text="刪除" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="news_Date" HeaderText="發布日期" SortExpression="news_Date" />
        <asp:BoundField DataField="news_Image" HeaderText="圖片檔名" SortExpression="news_Image" />
        <asp:HyperLinkField DataNavigateUrlFields="news_Id" DataNavigateUrlFormatString="Ad_NewsDetail.aspx?news_Id={0}" DataTextField="news_Title" HeaderText="標題" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [news] WHERE [news_Id] = @news_Id" InsertCommand="INSERT INTO [news] ([news_Date], [news_Title], [news_Content], [news_Image]) VALUES (@news_Date, @news_Title, @news_Content, @news_Image)" SelectCommand="SELECT * FROM [news] ORDER BY [news_Date] DESC" UpdateCommand="UPDATE [news] SET [news_Date] = @news_Date, [news_Title] = @news_Title, [news_Content] = @news_Content, [news_Image] = @news_Image WHERE [news_Id] = @news_Id">
    <DeleteParameters>
        <asp:Parameter Name="news_Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="news_Date" Type="DateTime" />
        <asp:Parameter Name="news_Title" Type="String" />
        <asp:Parameter Name="news_Content" Type="String" />
        <asp:Parameter Name="news_Image" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="news_Date" Type="DateTime" />
        <asp:Parameter Name="news_Title" Type="String" />
        <asp:Parameter Name="news_Content" Type="String" />
        <asp:Parameter Name="news_Image" Type="String" />
        <asp:Parameter Name="news_Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Font-Bold="False" Text="新增新聞" />
<br />
</asp:Content>

