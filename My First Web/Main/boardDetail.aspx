<%@ Page Language="VB" AutoEventWireup="false" CodeFile="boardDetail.aspx.vb" Inherits="Main_boardDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="board_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="50px" Width="50%">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="board_Subject" HeaderText="主題" SortExpression="board_Subject" />
                <asp:BoundField DataField="board_Time" HeaderText="時間" SortExpression="board_Time" />
                <asp:BoundField DataField="board_Name" HeaderText="姓名" SortExpression="board_Name" />
                <asp:TemplateField HeaderText="性別" SortExpression="board_Sex">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("board_Sex") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("board_Sex") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# iif(Eval("board_Sex")=0,"男","女") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="電子郵件">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "mailto:" & Eval("board_Mail") %>' Text='<%# Eval("board_Mail") %>'></asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="留言內容" SortExpression="board_Content">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("board_Conent") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("board_Conent") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%#Replace(Eval("board_Conent"), vbCrLf, "<br>") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="board_Re" HeaderText="管理者的回覆" SortExpression="board_Re">
                <ItemStyle ForeColor="Red" />
                </asp:BoundField>
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <FooterTemplate>
                <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="關閉視窗" Width="100%" />
            </FooterTemplate>
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <HeaderTemplate>
                留言板詳細內容
            </HeaderTemplate>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [board] WHERE ([board_ID] = @board_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="board_ID" QueryStringField="board_ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
