<%--
  Created by IntelliJ IDEA.
  User: 萌崽崽
  Date: 2022/10/10
  Time: 20:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%

    String userName = request.getParameter("userName");
    out.print("用户名："+userName);
    String pwd = request.getParameter("pwd");
    out.print("密码："+pwd);
    String sex = request.getParameter("sex");
    out.print("性别："+sex);
    String phone = request.getParameter("phone");
    out.print("电话："+phone);
    out.print(session.getId());
    out.print("userName"+session.getAttribute("userName"));
%>
</body>
</html>
