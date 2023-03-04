<%--
  Created by IntelliJ IDEA.
  User: 萌崽崽
  Date: 2022/10/10
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String card = request.getParameter("card");
    out.print("<p>身份证:"+card+"</p>");
%>
</body>
</html>
