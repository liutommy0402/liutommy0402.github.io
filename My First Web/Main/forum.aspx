<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="forum.aspx.vb" Inherits="Main_forum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 74px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="w-100">
        <tr>
            <td>
                <h2>主題討論區</h2>
            </td>
        </tr>
        <tr>
            <td>
                1.點選主題連結即可觀看詳細內容，並可發表回應文章<br/>
                2.如果要發表新的主題，必須具有會員身分<br/>
                3.系統管理者有權限刪除不適當的主題或回應文章
            </td>
        </tr>
        <tr>
            <td class="text-right"><a href="../Member/forumPost.aspx">發表主題</a></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="frmMain_Id" DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" BorderStyle="Solid">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:TemplateField HeaderText="主題">
                            <ItemTemplate>
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("frmMain_ID", "forumDetail.aspx?frmMain_ID={0}") %>' Text='<%# Eval("frmMain_Subject") %>'></asp:HyperLink>
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/forum/new.gif" />
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/forum/hot.gif" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="frmMain_Name" HeaderText="發表者" SortExpression="frmMain_Name" />
                        <asp:BoundField DataField="frmMain_Time" HeaderText="發表日期" SortExpression="frmMain_Time" />
                        <asp:BoundField DataField="frmMain_Hits" HeaderText="點閱" SortExpression="frmMain_Hits" />
                        <asp:BoundField DataField="frmMain_Re" HeaderText="回應" SortExpression="frmMain_Re" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [frmMain] ORDER BY [frmMain_Time] DESC"></asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>

