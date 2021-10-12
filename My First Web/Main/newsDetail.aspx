<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="newsDetail.aspx.vb" Inherits="Main_newsDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #808080;
        }
        .auto-style3 {
            height: 420px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>新聞詳細內容</h3>
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Main/news.aspx" Text="回上一頁" CssClass="btn-primary" />
    <br />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="news_Id" DataSourceID="SqlDataSource1" Width="100%">
        <EditItemTemplate>
            news_Id:
            <asp:Label ID="news_IdLabel1" runat="server" Text='<%# Eval("news_Id") %>' />
            <br />
            news_Date:
            <asp:TextBox ID="news_DateTextBox" runat="server" Text='<%# Bind("news_Date") %>' />
            <br />
            news_Title:
            <asp:TextBox ID="news_TitleTextBox" runat="server" Text='<%# Bind("news_Title") %>' />
            <br />
            news_Content:
            <asp:TextBox ID="news_ContentTextBox" runat="server" Text='<%# Bind("news_Content") %>' />
            <br />
            news_Image:
            <asp:TextBox ID="news_ImageTextBox" runat="server" Text='<%# Bind("news_Image") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            news_Date:
            <asp:TextBox ID="news_DateTextBox" runat="server" Text='<%# Bind("news_Date") %>' />
            <br />
            news_Title:
            <asp:TextBox ID="news_TitleTextBox" runat="server" Text='<%# Bind("news_Title") %>' />
            <br />
            news_Content:
            <asp:TextBox ID="news_ContentTextBox" runat="server" Text='<%# Bind("news_Content") %>' />
            <br />
            news_Image:
            <asp:TextBox ID="news_ImageTextBox" runat="server" Text='<%# Bind("news_Image") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="news_TitleLabel" runat="server" Font-Bold="True" Text='<%# Bind("news_Title") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="news_DateLabel" runat="server" Text='<%# Bind("news_Date") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../Images/news/" & Eval("news_Image") %>' Width="100%" Height="400px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="news_ContentLabel" runat="server" Text='<%# Replace(Eval("news_Content"), vbCrLf, "<p>") %>' />
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [news] WHERE ([news_Id] = @news_Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="news_Id" QueryStringField="news_Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

