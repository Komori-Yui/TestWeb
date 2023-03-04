<%@ page import="com.xyh.pojc.User" %>
<%@ page import="com.xyh.dao.User" %><%--
  Created by IntelliJ IDEA.
  User: 萌崽崽
  Date: 2022/10/11
  Time: 11:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试session</title>
</head>
<body>
  欢迎你: <%=((User)(session.getAttribute("user"))).getUname() %>
</body>
</html>
