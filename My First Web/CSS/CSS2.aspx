<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CSS2.aspx.vb" Inherits="css_CSS2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="mySheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>標題1</h1>
        <h1 class="blue">標題1(套用類別blue)</h1>
        <h1 id="red">標題1(套用ID22的red)</h1>
        <h1 class="special">標題1(套用複合的special)</h1>
        <p>歡迎光臨</p>
        <p class="blue">我的網頁</p>
        <ul>
            <li>CSS1</li>
            <li>CSS2</li>
            <li>CSS3</li>
        </ul>
        <ol>
            <li>CSS1</li>
            <li>CSS2</li>
            <li>CSS3</li>
        </ol>
    
    </div>
    </form>
</body>
</html>
