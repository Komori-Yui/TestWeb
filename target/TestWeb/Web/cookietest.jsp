<%--
  Created by IntelliJ IDEA.
  User: 萌崽崽
  Date: 2022/10/11
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
        Cookie[] ck = request.getCookies();
        for (int i = 0; i <ck.length ; i++) {
        out.print(ck[i].getName()+","+ck[i].getValue());
    }
%>
</body>
</html>
