<%--
  Created by IntelliJ IDEA.
  User: 萌崽崽
  Date: 2022/10/11
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>`
<head>
    <title>登录</title>
</head>
<body>
<h2>欢迎登录</h2>
    <%=request.getAttribute("msg") == null ? "" : request.getAttribute("msg")%>
    <form action="loginController.jsp" method="post">
        <p>用户名:<input name="uname"/></p>
        <p>密码:<input type="password" name="upwd"/></p>
        <p><input type="submit" value="登录"/></p>
    </form>
</body>
</html>
