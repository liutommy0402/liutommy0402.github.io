<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Ad_Board.aspx.vb" Inherits="admin_Ad_Board" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="board_ID" DataSourceID="SqlDataSource1" CellPadding="3" ForeColor="Black" GridLines="Vertical" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="board_Time" HeaderText="時間" SortExpression="board_Time" />
            <asp:BoundField DataField="board_Name" HeaderText="留言者" SortExpression="board_Name" />
            <asp:HyperLinkField DataNavigateUrlFields="board_ID" DataNavigateUrlFormatString="~/Main/BoardDetail.aspx?board_ID={0}" DataTextField="board_Subject" HeaderText="主題" Target="_blank" />
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="回覆"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('確定要刪除?')" Text="刪除"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [board] WHERE [board_id] = @board_id" InsertCommand="INSERT INTO [board] ([board_name], [board_subject], [board_time]) VALUES (@board_name, @board_subject, @board_time)" SelectCommand="SELECT [board_id], [board_name], [board_subject], [board_time] FROM [board] ORDER BY [board_time] DESC" UpdateCommand="UPDATE [board] SET [board_name] = @board_name, [board_subject] = @board_subject, [board_time] = @board_time WHERE [board_id] = @board_id">
        <DeleteParameters>
            <asp:Parameter Name="board_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="board_Name" Type="String" />
            <asp:Parameter Name="board_Subject" Type="String" />
            <asp:Parameter Name="board_Time" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="board_Name" Type="String" />
            <asp:Parameter Name="board_Subject" Type="String" />
            <asp:Parameter Name="board_Time" Type="DateTime" />
            <asp:Parameter Name="board_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="text-center">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="board_ID" DataSourceID="SqlDataSource2" DefaultMode="Edit" Height="50px" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:TemplateField HeaderText="管理者的回覆" SortExpression="board_Re">
                <AlternatingItemTemplate>
                    &nbsp;
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Rows="10" Text='<%# Bind("board_Re") %>' TextMode="MultiLine" Width="75%"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("board_Re") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("board_Re") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#284775" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [board] WHERE [board_id] = @board_id" InsertCommand="INSERT INTO [board] ([board_re]) VALUES (@board_re)" SelectCommand="SELECT [board_id], [board_re] FROM [board] WHERE ([board_id] = @board_id)" UpdateCommand="UPDATE [board] SET [board_re] = @board_re WHERE [board_id] = @board_id">
        <DeleteParameters>
            <asp:Parameter Name="board_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="board_re" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="board_id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="board_re" Type="String" />
            <asp:Parameter Name="board_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

