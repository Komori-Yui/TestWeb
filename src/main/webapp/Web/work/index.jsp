<%--
  Created by IntelliJ IDEA.
  User: MI
  Date: 2022/10/11
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
        String username = request.getParameter("user");

        Cookie ck = new Cookie("user",username);

        ck.setMaxAge(300);
        response.addCookie(ck);

        session.setAttribute("user",username);
        response.sendRedirect("welecom.jsp");
        out.print("账号：" + username);
        out.print("密码：" + request.getParameter("upwd"));
    %>
</body>
</html>
