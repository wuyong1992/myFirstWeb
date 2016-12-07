<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/7
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页面</title>
    <link rel="stylesheet" href="css/loginStyle.css" type="text/css">
</head>
<body>

<div id="divOUT">
    <p id="loginID">Login</p>
    <div id="divIN">
        <form id="form" action="doLogin.jsp" method="post">
            <table>
                <tr>
                    <td>
                        用户名：
                    </td>
                    <td>
                        <input class="login" type="text" name="name" value="" title="张三">
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <td>
                    密&nbsp;码：
                </td>
                <td>
                    <input class="login" type="password" name="password" value="" title="123">
                </td>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <%--功能暂未实现--%>
                <tr>
                    <td align="right">
                        <input class="login" type="checkbox" name="check" checked="checked" title="功能没实现，随便点">
                    </td>
                    <td>
                        <span>十天内记住我的登录状态</span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input class="login" type="submit" value="进去看看" title="点击登录">
                    </td>
                    <td align="right">
                        <input class="login" type="reset" value="我要重写" title="点击重置">
                    </td>
                </tr>
            </table>
        </form>

    </div>
</div>

</body>
</html>
