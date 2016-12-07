<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/7
  Time: 17:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功页面</title>
    <link rel="stylesheet" href="css/loginStyle.css" type="text/css">
</head>
<body>
<div class="div" id="divOUT">
    <div id="Sdiv">
        <p id="Sid">
            你好，<%=session.getAttribute("user")%>!,欢迎回来！
        </p>
    </div>
    <div id="loginOut">
        <a href="index.jsp"><p id="outID">离开一会</p></a>
        <%--<form class="login" action="index.jsp">
            <input type="submit" value="离开一会！">
        </form>--%>
    </div>
</div>
</body>
</html>
