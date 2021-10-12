<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="boardAdd.aspx.vb" Inherits="Main_boardAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #000000;
        }
        .auto-style2 {
            height: 26px;
        }
        .auto-style3 {
            width: 96px;
        }
        .auto-style4 {
            height: 26px;
            width: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="board_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" HeaderText="新增留言" Width="100%">
        <EditItemTemplate>
            board_ID:
            <asp:Label ID="board_IDLabel1" runat="server" Text='<%# Eval("board_ID") %>' />
            <br />
            board_Name:
            <asp:TextBox ID="board_NameTextBox" runat="server" Text='<%# Bind("board_Name") %>' />
            <br />
            board_Sex:
            <asp:TextBox ID="board_SexTextBox" runat="server" Text='<%# Bind("board_Sex") %>' />
            <br />
            board_Subject:
            <asp:TextBox ID="board_SubjectTextBox" runat="server" Text='<%# Bind("board_Subject") %>' />
            <br />
            board_Time:
            <asp:TextBox ID="board_TimeTextBox" runat="server" Text='<%# Bind("board_Time") %>' />
            <br />
            board_Mail:
            <asp:TextBox ID="board_MailTextBox" runat="server" Text='<%# Bind("board_Mail") %>' />
            <br />
            board_Conent:
            <asp:TextBox ID="board_ConentTextBox" runat="server" Text='<%# Bind("board_Conent") %>' />
            <br />
            board_Re:
            <asp:TextBox ID="board_ReTextBox" runat="server" Text='<%# Bind("board_Re") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">姓名</td>
                    <td>
                        <asp:TextBox ID="board_NameTextBox" runat="server" Text='<%# Bind("board_Name") %>' Width="50%" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">性別</td>
                    <td>
                        <asp:RadioButtonList ID="RBLsex" runat="server" RepeatDirection="Horizontal" SelectedValue='<%# Bind("board_Sex") %>' Width="50%">
                            <asp:ListItem Selected="True" Value="0">男性</asp:ListItem>
                            <asp:ListItem Value="1">女性</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">發表時間</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="board_TimeTextBox" runat="server" Text='<%# Bind("board_Time") %>' Width="30%" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">主題</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="board_SubjectTextBox" runat="server" Text='<%# Bind("board_Subject") %>' Width="100%" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">內容</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="board_ConentTextBox" runat="server" Rows="10" Text='<%# Bind("board_Conent") %>' TextMode="MultiLine" Width="100%" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">電子郵件</td>
                    <td>
                        <asp:TextBox ID="board_MailTextBox" runat="server" Text='<%# Bind("board_Mail") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" Width="50%" />
                    </td>
                    <td>
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" PostBackUrl="~/Main/board.aspx" Text="取消" Width="50%" />
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;
        </InsertItemTemplate>
        <ItemTemplate>
            board_ID:
            <asp:Label ID="board_IDLabel" runat="server" Text='<%# Eval("board_ID") %>' />
            <br />
            board_Name:
            <asp:Label ID="board_NameLabel" runat="server" Text='<%# Bind("board_Name") %>' />
            <br />
            board_Sex:
            <asp:Label ID="board_SexLabel" runat="server" Text='<%# Bind("board_Sex") %>' />
            <br />
            board_Subject:
            <asp:Label ID="board_SubjectLabel" runat="server" Text='<%# Bind("board_Subject") %>' />
            <br />
            board_Time:
            <asp:Label ID="board_TimeLabel" runat="server" Text='<%# Bind("board_Time") %>' />
            <br />
            board_Mail:
            <asp:Label ID="board_MailLabel" runat="server" Text='<%# Bind("board_Mail") %>' />
            <br />
            board_Conent:
            <asp:Label ID="board_ConentLabel" runat="server" Text='<%# Bind("board_Conent") %>' />
            <br />
            board_Re:
            <asp:Label ID="board_ReLabel" runat="server" Text='<%# Bind("board_Re") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [board] WHERE [board_ID] = @board_ID" InsertCommand="INSERT INTO [board] ([board_Name], [board_Sex], [board_Subject], [board_Time], [board_Mail], [board_Conent], [board_Re]) VALUES (@board_Name, @board_Sex, @board_Subject, @board_Time, @board_Mail, @board_Conent, @board_Re)" SelectCommand="SELECT * FROM [board]" UpdateCommand="UPDATE [board] SET [board_Name] = @board_Name, [board_Sex] = @board_Sex, [board_Subject] = @board_Subject, [board_Time] = @board_Time, [board_Mail] = @board_Mail, [board_Conent] = @board_Conent, [board_Re] = @board_Re WHERE [board_ID] = @board_ID">
        <DeleteParameters>
            <asp:Parameter Name="board_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="board_Name" Type="String" />
            <asp:Parameter Name="board_Sex" Type="Int32" />
            <asp:Parameter Name="board_Subject" Type="String" />
            <asp:Parameter Name="board_Time" Type="DateTime" />
            <asp:Parameter Name="board_Mail" Type="String" />
            <asp:Parameter Name="board_Conent" Type="String" />
            <asp:Parameter Name="board_Re" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="board_Name" Type="String" />
            <asp:Parameter Name="board_Sex" Type="Int32" />
            <asp:Parameter Name="board_Subject" Type="String" />
            <asp:Parameter Name="board_Time" Type="DateTime" />
            <asp:Parameter Name="board_Mail" Type="String" />
            <asp:Parameter Name="board_Conent" Type="String" />
            <asp:Parameter Name="board_Re" Type="String" />
            <asp:Parameter Name="board_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

