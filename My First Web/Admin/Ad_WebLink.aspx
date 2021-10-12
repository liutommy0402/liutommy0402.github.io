<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Ad_WebLink.aspx.vb" Inherits="Admin_Ad_WebLink" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="webLink_Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="100%">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="webLink_URL" HeaderText="網址" SortExpression="webLink_URL" />
            <asp:BoundField DataField="webLink_text" HeaderText="描述" SortExpression="webLink_text" />
            <asp:CommandField ButtonType="Button" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [webLink] WHERE [webLink_Id] = @webLink_Id" InsertCommand="INSERT INTO [webLink] ([webLink_URL], [webLink_text]) VALUES (@webLink_URL, @webLink_text)" SelectCommand="SELECT * FROM [webLink]" UpdateCommand="UPDATE [webLink] SET [webLink_URL] = @webLink_URL, [webLink_text] = @webLink_text WHERE [webLink_Id] = @webLink_Id">
        <DeleteParameters>
            <asp:Parameter Name="webLink_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="webLink_URL" Type="String" />
            <asp:Parameter Name="webLink_text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="webLink_URL" Type="String" />
            <asp:Parameter Name="webLink_text" Type="String" />
            <asp:Parameter Name="webLink_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="webLink_Id" DataSourceID="SqlDataSource2" Height="50px" Width="100%" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="webLink_URL" HeaderText="網址" SortExpression="webLink_URL" />
            <asp:BoundField DataField="webLink_text" HeaderText="描述" SortExpression="webLink_text" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <HeaderTemplate>
            所選取的網站資料如下
        </HeaderTemplate>
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [webLink] WHERE [webLink_Id] = @webLink_Id" InsertCommand="INSERT INTO [webLink] ([webLink_URL], [webLink_text]) VALUES (@webLink_URL, @webLink_text)" SelectCommand="SELECT * FROM [webLink] WHERE ([webLink_Id] = @webLink_Id)" UpdateCommand="UPDATE [webLink] SET [webLink_URL] = @webLink_URL, [webLink_text] = @webLink_text WHERE [webLink_Id] = @webLink_Id">
        <DeleteParameters>
            <asp:Parameter Name="webLink_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="webLink_URL" Type="String" />
            <asp:Parameter Name="webLink_text" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="webLink_Id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="webLink_URL" Type="String" />
            <asp:Parameter Name="webLink_text" Type="String" />
            <asp:Parameter Name="webLink_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

