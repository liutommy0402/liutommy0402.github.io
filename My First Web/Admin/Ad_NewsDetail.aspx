<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Ad_NewsDetail.aspx.vb" Inherits="Admin_Ad_NewsDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #000000;
        }
        .auto-style6 {
            width: 50px;
        }
        .auto-style8 {
            width: 50px;
            height: 35px;
        }
        .auto-style17 {
            width: 13px;
            height: 35px;
        }
        .auto-style18 {
            width: 40px;
        }
        .auto-style19 {
            width: 13px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="news_Id" DataSourceID="SqlDataSource1" DefaultMode="Edit" ForeColor="#333333" Width="100%">
        <EditItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style17">標題:<asp:TextBox ID="news_TitleTextBox" runat="server" CssClass="offset-sm-0" Text='<%# Bind("news_Title") %>' TextMode="MultiLine" Width="100%" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">發布時間:<asp:TextBox ID="news_DateTextBox" runat="server" Text='<%# Bind("news_Date") %>' Width="100%" />
                    </td>
                    <td class="auto-style6">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "../Images/news/" & Eval("news_Image") %>' Width="90%" />
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="100%" />
                        <asp:Button ID="Button1" runat="server" OnClick="btnEditImage" Text="確定" />
                        <asp:TextBox ID="news_ImageTextBox" runat="server" Text='<%# Bind("news_Image") %>' Width="100%" />
                    </td>
                    <td class="auto-style6">新聞內容:<br />
                        <asp:TextBox ID="news_ContentTextBox" runat="server" Rows="10" Text='<%# Bind("news_Content") %>' TextMode="MultiLine" Width="100%" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" PostBackUrl="~/Admin/Ad_News.aspx" Text="取消" />
        </EditItemTemplate>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <InsertItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>標題:<asp:TextBox ID="news_TitleTextBox" runat="server" Text='<%# Bind("news_Title") %>' TextMode="MultiLine" Width="100%" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>發布時間:<asp:TextBox ID="news_DateTextBox" runat="server" Text='<%# Bind("news_Date") %>' Width="100%" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# "../Images/news/" & Eval("news_Image") %>' Width="80%" />
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                        <asp:Button ID="Button2" runat="server" OnClick="btnSaveImage" Text="確定" />
                        <br />
                        <asp:TextBox ID="news_ImageTextBox" runat="server" Text='<%# Bind("news_Image") %>' Width="100%" />
                    </td>
                    <td>新聞內容:<br />
                        <asp:TextBox ID="news_ContentTextBox" runat="server" Rows="10" Text='<%# Bind("news_Content") %>' TextMode="MultiLine" Width="100%" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" PostBackUrl="~/Admin/Ad_news.aspx" Text="取消" />
        </InsertItemTemplate>
        <ItemTemplate>
            news_Id:
            <asp:Label ID="news_IdLabel" runat="server" Text='<%# Eval("news_Id") %>' />
            <br />
            news_Date:
            <asp:Label ID="news_DateLabel" runat="server" Text='<%# Bind("news_Date") %>' />
            <br />
            news_Title:
            <asp:Label ID="news_TitleLabel" runat="server" Text='<%# Bind("news_Title") %>' />
            <br />
            news_Content:
            <asp:Label ID="news_ContentLabel" runat="server" Text='<%# Bind("news_Content") %>' />
            <br />
            news_Image:
            <asp:Label ID="news_ImageLabel" runat="server" Text='<%# Bind("news_Image") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [news] WHERE [news_Id] = @news_Id" InsertCommand="INSERT INTO [news] ([news_Date], [news_Title], [news_Content], [news_Image]) VALUES (@news_Date, @news_Title, @news_Content, @news_Image)" SelectCommand="SELECT * FROM [news] WHERE ([news_Id] = @news_Id)" UpdateCommand="UPDATE [news] SET [news_Date] = @news_Date, [news_Title] = @news_Title, [news_Content] = @news_Content, [news_Image] = @news_Image WHERE [news_Id] = @news_Id">
        <DeleteParameters>
            <asp:Parameter Name="news_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="news_Date" Type="DateTime" />
            <asp:Parameter Name="news_Title" Type="String" />
            <asp:Parameter Name="news_Content" Type="String" />
            <asp:Parameter Name="news_Image" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="" Name="news_Id" QueryStringField="news_Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="news_Date" Type="DateTime" />
            <asp:Parameter Name="news_Title" Type="String" />
            <asp:Parameter Name="news_Content" Type="String" />
            <asp:Parameter Name="news_Image" Type="String" />
            <asp:Parameter Name="news_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

