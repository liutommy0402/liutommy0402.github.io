<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="forumRepost.aspx.vb" Inherits="Main_forumRepost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            text-align: left;
            width: 70px;
        }
        .auto-style5 {
            text-align: left;
            width: 130px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="frmRe_Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="100%" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Both">
        <EditItemTemplate>
            frmRe_Id:
            <asp:Label ID="frmRe_IdLabel1" runat="server" Text='<%# Eval("frmRe_Id") %>' />
            <br />
            frmMain_Id:
            <asp:TextBox ID="frmMain_IdTextBox" runat="server" Text='<%# Bind("frmMain_Id") %>' />
            <br />
            frmRe_Subject:
            <asp:TextBox ID="frmRe_SubjectTextBox" runat="server" Text='<%# Bind("frmRe_Subject") %>' />
            <br />
            frmRe_Content:
            <asp:TextBox ID="frmRe_ContentTextBox" runat="server" Text='<%# Bind("frmRe_Content") %>' />
            <br />
            frmRe_Time:
            <asp:TextBox ID="frmRe_TimeTextBox" runat="server" Text='<%# Bind("frmRe_Time") %>' />
            <br />
            frmRe_Name:
            <asp:TextBox ID="frmRe_NameTextBox" runat="server" Text='<%# Bind("frmRe_Name") %>' />
            <br />
            frmRe_Sex:
            <asp:TextBox ID="frmRe_SexTextBox" runat="server" Text='<%# Bind("frmRe_Sex") %>' />
            <br />
            frmRe_Email:
            <asp:TextBox ID="frmRe_EmailTextBox" runat="server" Text='<%# Bind("frmRe_Email") %>' />
            <br />
            frmRe_IP:
            <asp:TextBox ID="frmRe_IPTextBox" runat="server" Text='<%# Bind("frmRe_IP") %>' />
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
                    <td class="auto-style5">姓名:</td>
                    <td>
                        <asp:TextBox ID="frmRe_NameTextBox" runat="server" Text='<%# Bind("frmRe_Name") %>' CssClass="auto-style3" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">性別:</td>
                    <td class="text-left">
                        <asp:RadioButtonList ID="RBLsex" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("frmRe_Sex") %>'>
                            <asp:ListItem Selected="True" Value="0">男性</asp:ListItem>
                            <asp:ListItem Value="1">女性</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">發表時間:</td>
                    <td class="text-left">
                        <asp:TextBox ID="frmRe_TimeTextBox" runat="server" Text='<%# Bind("frmRe_Time") %>' CssClass="auto-style3" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">主題:</td>
                    <td class="text-left">
                        <asp:TextBox ID="frmRe_SubjectTextBox" runat="server" Text='<%# Bind("frmRe_Subject") %>' CssClass="auto-style3"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">內容:</td>
                    <td class="text-left">
                        <asp:TextBox ID="frmRe_ContentTextBox" runat="server" OnTextChanged="ChangeStr" Rows="10" Text='<%# Bind("frmRe_Content") %>' TextMode="MultiLine" Width="100%" CssClass="auto-style3"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">電子郵件:</td>
                    <td class="text-left">
                        <asp:TextBox ID="frmRe_EmailTextBox" runat="server" Text='<%# Bind("frmRe_Email") %>' CssClass="auto-style3" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </td>
                </tr>
            </table>
            &nbsp;<asp:TextBox ID="frmMain_IdTextBox" runat="server" Text='<%# Bind("frmMain_Id") %>' Visible="False" />
            &nbsp;<asp:TextBox ID="frmRe_IPTextBox" runat="server" Text='<%# Bind("frmRe_IP") %>' Visible="False" />
            <br />
            &nbsp;
        </InsertItemTemplate>
        <ItemTemplate>
            frmRe_Id:
            <asp:Label ID="frmRe_IdLabel" runat="server" Text='<%# Eval("frmRe_Id") %>' />
            <br />
            frmMain_Id:
            <asp:Label ID="frmMain_IdLabel" runat="server" Text='<%# Bind("frmMain_Id") %>' />
            <br />
            frmRe_Subject:
            <asp:Label ID="frmRe_SubjectLabel" runat="server" Text='<%# Bind("frmRe_Subject") %>' />
            <br />
            frmRe_Content:
            <asp:Label ID="frmRe_ContentLabel" runat="server" Text='<%# Bind("frmRe_Content") %>' />
            <br />
            frmRe_Time:
            <asp:Label ID="frmRe_TimeLabel" runat="server" Text='<%# Bind("frmRe_Time") %>' />
            <br />
            frmRe_Name:
            <asp:Label ID="frmRe_NameLabel" runat="server" Text='<%# Bind("frmRe_Name") %>' />
            <br />
            frmRe_Sex:
            <asp:Label ID="frmRe_SexLabel" runat="server" Text='<%# Bind("frmRe_Sex") %>' />
            <br />
            frmRe_Email:
            <asp:Label ID="frmRe_EmailLabel" runat="server" Text='<%# Bind("frmRe_Email") %>' />
            <br />
            frmRe_IP:
            <asp:Label ID="frmRe_IPLabel" runat="server" Text='<%# Bind("frmRe_IP") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
        </ItemTemplate>
        <PagerStyle ForeColor="#330099" HorizontalAlign="Center" BackColor="#FFFFCC" />
        <RowStyle BackColor="White" ForeColor="#330099" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [frmRe] WHERE [frmRe_Id] = @frmRe_Id" InsertCommand="INSERT INTO [frmRe] ([frmMain_Id], [frmRe_Subject], [frmRe_Content], [frmRe_Time], [frmRe_Name], [frmRe_Sex], [frmRe_Email], [frmRe_IP]) VALUES (@frmMain_Id, @frmRe_Subject, @frmRe_Content, @frmRe_Time, @frmRe_Name, @frmRe_Sex, @frmRe_Email, @frmRe_IP)" SelectCommand="SELECT * FROM [frmRe]" UpdateCommand="UPDATE [frmRe] SET [frmMain_Id] = @frmMain_Id, [frmRe_Subject] = @frmRe_Subject, [frmRe_Content] = @frmRe_Content, [frmRe_Time] = @frmRe_Time, [frmRe_Name] = @frmRe_Name, [frmRe_Sex] = @frmRe_Sex, [frmRe_Email] = @frmRe_Email, [frmRe_IP] = @frmRe_IP WHERE [frmRe_Id] = @frmRe_Id">
        <DeleteParameters>
            <asp:Parameter Name="frmRe_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="frmMain_Id" Type="Int32" />
            <asp:Parameter Name="frmRe_Subject" Type="String" />
            <asp:Parameter Name="frmRe_Content" Type="String" />
            <asp:Parameter Name="frmRe_Time" Type="DateTime" />
            <asp:Parameter Name="frmRe_Name" Type="String" />
            <asp:Parameter Name="frmRe_Sex" Type="String" />
            <asp:Parameter Name="frmRe_Email" Type="String" />
            <asp:Parameter Name="frmRe_IP" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="frmMain_Id" Type="Int32" />
            <asp:Parameter Name="frmRe_Subject" Type="String" />
            <asp:Parameter Name="frmRe_Content" Type="String" />
            <asp:Parameter Name="frmRe_Time" Type="DateTime" />
            <asp:Parameter Name="frmRe_Name" Type="String" />
            <asp:Parameter Name="frmRe_Sex" Type="String" />
            <asp:Parameter Name="frmRe_Email" Type="String" />
            <asp:Parameter Name="frmRe_IP" Type="String" />
            <asp:Parameter Name="frmRe_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

