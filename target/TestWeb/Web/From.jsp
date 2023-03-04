<%--
  Created by IntelliJ IDEA.
  User: 萌崽崽
  Date: 2022/10/10
  Time: 20:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
session.setAttribute("userName","瑶瑶");
session.setMaxInactiveInterval(5);
out.print(session.getId());

%>
<form action="request.jsp" method="post">
    <p>用户名:<input type="text" name="userName"/></p>
    <p>密码：<input type="password" name="pwd"/></p>
    <p>性别:<input type="radio" name="sex" value="男"/>男
        <input type="radio" name="sex" value="女"/>女
    </p>
    <p>电话<input type="text" name="phone"/></p>
    <p><input type="submit" value="注册"/></p>
</form>
</body>
</html>
