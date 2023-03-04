<%--
  Created by IntelliJ IDEA.
  User: 萌崽崽
  Date: 2022/10/11
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Object oj = application.getAttribute("count");
    int num = 1;
    if (oj == null){
        application.setAttribute("count",1);
    }else {
        num = (Integer)oj;
        num++;
        application.setAttribute("count",num);
    }
    out.print("当前访问人数："+num);
%>
</body>
</html>
