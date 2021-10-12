<%@ Page Language="VB" AutoEventWireup="false" CodeFile="html2.aspx.vb" Inherits="html_html2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>清單與表格</h2>
          <ul>
              <li>HTML標籤</li>
              <li>CSS階層樣式表</li>
              <li>JavaScript前端瀏覽器語言</li>
              <li>ASP.net後端伺服器語言</li>
          </ul>
          <ol>
              <li>HTML標籤</li>
              <li>CSS階層樣式表</li>
              <li>JavaScript前端瀏覽器語言</li>
              <li>ASP.net後端伺服器語言</li>
          </ol>
          <table>
              <tr>
                  <td>1</td>
                  <td>2</td>
                  <td>3</td>
              </tr>
              <tr>
                  <td>4</td>
                  <td>5</td>
                  <td>6</td>
              </tr>
              <tr>
                  <td>7</td>
                  <td>8</td>
                  <td>9</td>
              </tr>
          </table>
          <table border="1">
              <tr>
                  <td>1</td>
                  <td>2</td>
                  <td>3</td>
              </tr>
              <tr>
                  <td>4</td>
                  <td>5</td>
                  <td>6</td>
              </tr>
              <tr>
                  <td>7</td>
                  <td>8</td>
                  <td>9</td>
              </tr>
          </table>
          <table border="1">
              <tr>
                  <td colspan="3">1</td>
              </tr>
              <tr>
                  <td rowspan="2">4</td>
                  <td>5</td>
                  <td>6</td>
              </tr>
              <tr>
                  <td>8</td>
                  <td>9</td>
              </tr>
          </table>
    
    </div>
    </form>
</body>
</html>
