<%--
  Created by IntelliJ IDEA.
  User: MI
  Date: 2022/10/11
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        session.invalidate();
        response.sendRedirect("welecom.jsp");
    %>
</body>
</html>
