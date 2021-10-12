<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="forumPost.aspx.vb" Inherits="Member_forumPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            width: 130px;
        }
        .auto-style3 {
            text-align: left;
            width: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" BorderStyle="None" DataKeyNames="frmMain_Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="100%" BackColor="White" BorderColor="#CC9966" BorderWidth="1px" CellPadding="4" GridLines="Both">
        <EditItemTemplate>
            frmMain_Id:
            <asp:Label ID="frmMain_IdLabel1" runat="server" Text='<%# Eval("frmMain_Id") %>' />
            <br />
            frmMain_Subject:
            <asp:TextBox ID="frmMain_SubjectTextBox" runat="server" Text='<%# Bind("frmMain_Subject") %>' />
            <br />
            frmMain_Content:
            <asp:TextBox ID="frmMain_ContentTextBox" runat="server" Text='<%# Bind("frmMain_Content") %>' />
            <br />
            frmMain_Time:
            <asp:TextBox ID="frmMain_TimeTextBox" runat="server" Text='<%# Bind("frmMain_Time") %>' />
            <br />
            frmMain_Name:
            <asp:TextBox ID="frmMain_NameTextBox" runat="server" Text='<%# Bind("frmMain_Name") %>' />
            <br />
            frmMain_Sex:
            <asp:TextBox ID="frmMain_SexTextBox" runat="server" Text='<%# Bind("frmMain_Sex") %>' />
            <br />
            frmMain_Email:
            <asp:TextBox ID="frmMain_EmailTextBox" runat="server" Text='<%# Bind("frmMain_Email") %>' />
            <br />
            frmMain_IP:
            <asp:TextBox ID="frmMain_IPTextBox" runat="server" Text='<%# Bind("frmMain_IP") %>' />
            <br />
            frmMain_Hits:
            <asp:TextBox ID="frmMain_HitsTextBox" runat="server" Text='<%# Bind("frmMain_Hits") %>' />
            <br />
            frmMain_Re:
            <asp:TextBox ID="frmMain_ReTextBox" runat="server" Text='<%# Bind("frmMain_Re") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <InsertItemTemplate>
            <table class="w-100">
                <tr>
                    <td class="auto-style2">姓名</td>
                    <td>
                        <asp:TextBox ID="frmMain_NameTextBox" runat="server" Text='<%# Bind("frmMain_Name") %>' CssClass="auto-style1" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">性別</td>
                    <td>
                        <asp:RadioButtonList ID="RBLsex" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("frmMain_Sex") %>'>
                            <asp:ListItem Selected="True" Value="0">男性</asp:ListItem>
                            <asp:ListItem Value="1">女性</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">發表時間</td>
                    <td>
                        <asp:TextBox ID="frmMain_TimeTextBox" runat="server" Text='<%# Bind("frmMain_Time") %>' CssClass="auto-style1"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">主題</td>
                    <td>
                        <asp:TextBox ID="frmMain_SubjectTextBox" runat="server" Text='<%# Bind("frmMain_Subject") %>' CssClass="auto-style1"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">內容</td>
                    <td>
                        <asp:TextBox ID="frmMain_ContentTextBox" runat="server" OnTextChanged="ChangeStr" Rows="10" Text='<%# Bind("frmMain_Content") %>' TextMode="MultiLine" Width="100%" CssClass="auto-style1" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">電子郵件</td>
                    <td>
                        <asp:TextBox ID="frmMain_EmailTextBox" runat="server" Text='<%# Bind("frmMain_Email") %>' CssClass="auto-style1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="frmMain_IPTextBox" runat="server" Text='<%# Bind("frmMain_IP") %>' Visible="False" />
                        <asp:TextBox ID="frmMain_HitsTextBox" runat="server" Text='<%# Bind("frmMain_Hits") %>' Visible="False" />
                        <asp:TextBox ID="frmMain_ReTextBox" runat="server" Text='<%# Bind("frmMain_Re") %>' Visible="False" />
                    </td>
                </tr>
            </table>
        </InsertItemTemplate>
        
        <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [frmMain] WHERE [frmMain_Id] = @frmMain_Id" InsertCommand="INSERT INTO [frmMain] ([frmMain_Subject], [frmMain_Content], [frmMain_Time], [frmMain_Name], [frmMain_Sex], [frmMain_Email], [frmMain_IP], [frmMain_Hits], [frmMain_Re]) VALUES (@frmMain_Subject, @frmMain_Content, @frmMain_Time, @frmMain_Name, @frmMain_Sex, @frmMain_Email, @frmMain_IP, @frmMain_Hits, @frmMain_Re)" SelectCommand="SELECT * FROM [frmMain]" UpdateCommand="UPDATE [frmMain] SET [frmMain_Subject] = @frmMain_Subject, [frmMain_Content] = @frmMain_Content, [frmMain_Time] = @frmMain_Time, [frmMain_Name] = @frmMain_Name, [frmMain_Sex] = @frmMain_Sex, [frmMain_Email] = @frmMain_Email, [frmMain_IP] = @frmMain_IP, [frmMain_Hits] = @frmMain_Hits, [frmMain_Re] = @frmMain_Re WHERE [frmMain_Id] = @frmMain_Id">
        <DeleteParameters>
            <asp:Parameter Name="frmMain_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
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
</asp:Content>

