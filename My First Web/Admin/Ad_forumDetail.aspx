﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Admin.master" AutoEventWireup="false" CodeFile="Ad_forumDetail.aspx.vb" Inherits="Admin_Ad_forumDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            text-align: left;
            width: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>主題討論區內容管理</h2>
        <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="frmMain_Id" DataSourceID="SqlDataSource1" Width="100%" CellPadding="3" ForeColor="Black" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" GridLines="Vertical">
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
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#CCCCCC" />
            <FooterTemplate>
                &nbsp;
            </FooterTemplate>
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                frmMain_Id:
                <asp:TextBox ID="frmMain_IdTextBox" runat="server" Text='<%# Bind("frmMain_Id") %>' />
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
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td rowspan="2">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/forum/" & IIf(Eval("frmMain_Sex") = 0, "male.jpg", "female.jpg") %>' Height="60px" ImageAlign="AbsMiddle" Width="60px" />
                        </td>
                        <td colspan="2" style="text-align: center">
                            <asp:Label ID="frmMain_SubjectLabel" runat="server" style="text-align: center" Text='<%# Bind("frmMain_Subject") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="frmMain_NameLabel" runat="server" Text='<%# Bind("frmMain_Name") %>' />
                            <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/Images/forum/Email.GIF" NavigateUrl='<%# "mailto:" & Eval("frmMain_Email") %>'>HyperLink</asp:HyperLink>
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="frmMain_TimeLabel" runat="server" Text='<%# Bind("frmMain_Time") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="frmMain_ContentLabel" runat="server" Text='<%# Replace(Eval("frmMain_Content"), vbCrLf, "<br>") %>' />
                        </td>
                    </tr>
                </table>
                <br />

            </ItemTemplate>
            <PagerStyle ForeColor="Black" HorizontalAlign="Center" BackColor="#999999" />
        </asp:FormView>
    </p>

    <br />
    <br /> 

    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="frmRe_Id" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#999999" BorderWidth="1px" CellPadding="3" Width="100%" BorderStyle="Solid" GridLines="Vertical" ForeColor="Black">
            <AlternatingItemStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td rowspan="2" class="auto-style1">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/Images/forum/" & IIf(Eval("frmRe_Sex") = 0, "male.jpg", "female.jpg") %>' Height="60px" ImageAlign="AbsMiddle" Width="60px" />
                        </td>
                        <td colspan="2" style="text-align: center">
                            <asp:Label ID="frmRe_SubjectLabel" runat="server" Text='<%# Eval("frmRe_Subject") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="frmRe_NameLabel" runat="server" Text='<%# Eval("frmRe_Name") %>' />
                            &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" ImageUrl="~/Images/forum/Email.GIF" NavigateUrl='<%# "mailto:" & Eval("frmRe_Email") %>'>HyperLink</asp:HyperLink>
                            &nbsp;IP:<asp:Label ID="frmRe_IPLabel" runat="server" Text='<%# Eval("frmRe_IP") %>' />
                        </td>
                        <td style="text-align: center">
                            <asp:Label ID="frmRe_TimeLabel" runat="server" Text='<%# Eval("frmRe_Time") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="frmRe_ContentLabel" runat="server" Text='<%# Replace(Eval("frmRe_Content"),vbcrlf,"<br>") %>' />
                        </td>
                    </tr>
                </table>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="delete" OnClientClick="return confirm('確定要刪除?')">刪除</asp:LinkButton>
            </ItemTemplate>
            <SelectedItemStyle BackColor="#000099" ForeColor="White" Font-Bold="True" />
        </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [frmMain] WHERE ([frmMain_Id] = @frmMain_Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="frmMain_Id" QueryStringField="frmMain_Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [frmRe] WHERE ([frmMain_Id] = @frmMain_Id) ORDER BY [frmRe_Time] DESC" DeleteCommand="DELETE FROM [frmRe] WHERE [frmRe_Id] = @frmRe_Id" InsertCommand="INSERT INTO [frmRe] ([frmMain_Id], [frmRe_Subject], [frmRe_Content], [frmRe_Time], [frmRe_Name], [frmRe_Sex], [frmRe_Email], [frmRe_IP]) VALUES (@frmMain_Id, @frmRe_Subject, @frmRe_Content, @frmRe_Time, @frmRe_Name, @frmRe_Sex, @frmRe_Email, @frmRe_IP)" UpdateCommand="UPDATE [frmRe] SET [frmMain_Id] = @frmMain_Id, [frmRe_Subject] = @frmRe_Subject, [frmRe_Content] = @frmRe_Content, [frmRe_Time] = @frmRe_Time, [frmRe_Name] = @frmRe_Name, [frmRe_Sex] = @frmRe_Sex, [frmRe_Email] = @frmRe_Email, [frmRe_IP] = @frmRe_IP WHERE [frmRe_Id] = @frmRe_Id">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="frmMain_Id" QueryStringField="frmMain_Id" Type="Int32" />
            </SelectParameters>
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
    </p>
</asp:Content>

