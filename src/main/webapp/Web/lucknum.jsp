<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: 萌崽崽
  Date: 2022/10/10
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  Random r = new Random();
  int i = r.nextInt(10);
  session.setAttribute("xin",i);
  out.print(i);
%>
</body>
</html>
