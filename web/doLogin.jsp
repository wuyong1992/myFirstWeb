<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/7
  Time: 17:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>信息处理页</title>
</head>
<body>
<%
    //获取参数，并进行比较
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    //判断是否为空
    if (null != name && null != password && "张三".equals(name) && "123".equals(password)) {
        session.setAttribute("user", name);
%>
<jsp:forward page="loginS.jsp"/>
<%
        /*response.setHeader("refresh", "0;url=loginS.jsp");*/
%>
       <%-- <p>登录成功，两秒内跳转到主页面，或者点击<a href="loginS.jsp">这里</a>直接跳转</p>--%>
<%
    } else {
        response.setHeader("refresh","2;url=index.jsp");
%>
        <p id="ErroP">登录错误两秒后返回登录页面，或者点击<a href="index.jsp">这里</a>这几跳转</p>
<%
    }
%>

</body>
</html>
