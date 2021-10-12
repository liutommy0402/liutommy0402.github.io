<%@ Page Language="VB" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" /> 
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/bootstrap.js"></script>
    <link href="css/base.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">
        <div class="row">  
            <div id="header" class="col-lg-12">
                <h1>YOWAY Website</h1>
            </div>
        </div>
        <div class="row">
            <div id="nav" class="col-lg-12 col-md-6 col-xs-6">
                <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1" Orientation="Horizontal" StaticDisplayLevels="2" BackColor="#B5C7DE" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="1em" ForeColor="#284E98" StaticSubMenuIndent="10px" Width="100%">
                    <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#B5C7DE" />
                    <DynamicSelectedStyle BackColor="#507CD1" />
                    <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#507CD1" />
                </asp:Menu>
                <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
            </div>
        </div>
        <p></p>
        <p></p>
        <div class="row">
            <div class="col-lg-3 col-md-6 col-xs-12">
                <div class="box">
                    <h3>第一欄</h3>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-xs-12">
                <div class="box">
                    <h3>第二欄</h3>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-xs-12">
                <div class="box">
                    <h3>第三欄</h3>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-xs-12">
                <div class="box">
                    <h3>第四欄</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div id="footer" class="col-lg-12">
                <br />
                <h4>我的網站 </h4>
            </div>
        </div>   
    </div>
    </form>
</body>
</html>
