<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Ad_forum.aspx.vb" Inherits="Admin_Ad_forum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>主題討論區的管理</h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="frmMain_Id" DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" GridLines="Vertical" ForeColor="Black">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:TemplateField HeaderText="主題">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("frmMain_Id", "Ad_forumDetail.aspx?frmMain_Id={0}") %>' Text='<%# Eval("frmMain_Subject") %>'></asp:HyperLink>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/forum/new.gif" />
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/forum/hot.gif" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="frmMain_Name" HeaderText="發表者" SortExpression="frmMain_Name" />
                <asp:BoundField DataField="frmMain_Time" HeaderText="發表日期" SortExpression="frmMain_Time" />
                <asp:BoundField DataField="frmMain_Hits" HeaderText="點閱" SortExpression="frmMain_Hits" />
                <asp:BoundField DataField="frmMain_Re" HeaderText="回應" SortExpression="frmMain_Re" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" OnClientClick="return confirm('確定要刪除?')" Text="刪除" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [frmMain] WHERE [frmMain_Id] = @frmMain_Id" InsertCommand="INSERT INTO [frmMain] ([frmMain_Id], [frmMain_Subject], [frmMain_Content], [frmMain_Time], [frmMain_Name], [frmMain_Sex], [frmMain_Email], [frmMain_IP], [frmMain_Hits], [frmMain_Re]) VALUES (@frmMain_Id, @frmMain_Subject, @frmMain_Content, @frmMain_Time, @frmMain_Name, @frmMain_Sex, @frmMain_Email, @frmMain_IP, @frmMain_Hits, @frmMain_Re)" SelectCommand="SELECT * FROM [frmMain]" UpdateCommand="UPDATE [frmMain] SET [frmMain_Subject] = @frmMain_Subject, [frmMain_Content] = @frmMain_Content, [frmMain_Time] = @frmMain_Time, [frmMain_Name] = @frmMain_Name, [frmMain_Sex] = @frmMain_Sex, [frmMain_Email] = @frmMain_Email, [frmMain_IP] = @frmMain_IP, [frmMain_Hits] = @frmMain_Hits, [frmMain_Re] = @frmMain_Re WHERE [frmMain_Id] = @frmMain_Id">
            <DeleteParameters>
                <asp:Parameter Name="frmMain_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="frmMain_Id" Type="Int32" />
                <asp:Parameter Name="frmMain_Subject" Type="String" />
                <asp:Parameter Name="frmMain_Content" Type="String" />
                <asp:Parameter Name="frmMain_Time" Type="DateTime" />
                <asp:Parameter Name="frmMain_Name" Type="String" />
                <asp:Parameter Name="frmMain_Sex" Type="String" />
                <asp:Parameter Name="frmMain_Email" Type="String" />
                <asp:Parameter Name="frmMain_IP" Type="String" />
                <asp:Parameter Name="frmMain_Hits" Type="Int32" />
                <asp:Parameter Name="frmMain_Re" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="frmMain_Subject" Type="String" />
                <asp:Parameter Name="frmMain_Content" Type="String" />
                <asp:Parameter Name="frmMain_Time" Type="DateTime" />
                <asp:Parameter Name="frmMain_Name" Type="String" />
                <asp:Parameter Name="frmMain_Sex" Type="String" />
                <asp:Parameter Name="frmMain_Email" Type="String" />
                <asp:Parameter Name="frmMain_IP" Type="String" />
                <asp:Parameter Name="frmMain_Hits" Type="Int32" />
                <asp:Parameter Name="frmMain_Re" Type="Int32" />
                <asp:Parameter Name="frmMain_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>

