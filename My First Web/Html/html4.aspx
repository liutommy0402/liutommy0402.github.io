<%@ Page Language="VB" AutoEventWireup="false" CodeFile="html4.aspx.vb" Inherits="html_html4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        姓名:<input name="username" type="text" size="10" /><br />
        用戶帳號:<input name="usernumber" type="text" value="請輸入帳號" /><br />
        用戶密碼:<input name="PWD" type="password" maxlength="5" /><br />
        性別:<input name="sex" type="radio" checked="checked" value="1" />男
             <input name="sex" type="radio" value="0" />女<br />
        住址:<br />
        <textarea name="TextArea1" cols="50" rows="5"></textarea>
        <hr />
        常用軟體:<br />
        <input name="software" type="checkbox" value="word" />文書處理<br />
        <input name="software" type="checkbox" value="excel" />試算表<br />
        <input name="software" type="checkbox" value="powerpoint" />簡報<br />        
        擁有之週邊設備:<br />
        <select name="hardware" size="3" multiple="multiple">
            <option value="printer" selected="selected">印表機</option>
            <option value="camera">數位照相機</option>
            <option value="joystick">搖桿</option>
            <option value="dvd">DVD播放器</option>
        </select>
        <hr />
        <input name="show" type="button" value="顯示資料" />
        <input name="clear" type="reset" value="顯示輸入" />
        <input name="send" type="submit" value="送出資料" />
    
    </div>
    </form>
</body>
</html>
