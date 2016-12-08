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
    <%--<script src="js/jsDemo.js"></script>--%>
    <script src="js/jquery.min.js">

    </script>
</head>
<body>
<%
    if (session.getAttribute("user") != null) {
%>
<div class="div">
    <div id="Sdiv" hidden="hidden">
        <p id="Sid">
            你好，<%=session.getAttribute("user")%>!,欢迎回来！
        </p>
    </div>
    <div id="loginOut">
        <a href="index.jsp"><p class="outID">离开一会</p></a>
        <h3><input class="info" type="button" value="打个招呼"></h3>
        <%--<form class="login" action="index.jsp">
            <input type="submit" value="离开一会！">
        </form>--%>
    </div>
    <script>
        $(".info").click(function () {
            $("#Sdiv").show("slow")
        })
    </script>
</div>
<%
    } else {
        response.setHeader("refresh","3;url=index.jsp");
%>
<p class="outID">3秒后回到登录页面再来，否则你啥也看不到。或者点击<a href="index.jsp">这里</a>这几跳转</p>

<%
    }
%>

</body>
</html>
