<%--
  Created by IntelliJ IDEA.
  User: MI
  Date: 2022/10/11
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Cookie[] cks = request.getCookies();
        String user = "";
        for (int i = 0; i < cks.length; i++) {
            if (cks[i].getName().equals("user")){
                user = cks[i].getValue();
                out.print(user);
            }
        }

        Object obj = session.getAttribute("user");
        if (obj == null){
    %>

    <label>用户名</label><input type="text" name="uname" value="<%=user%>"/><label>密码</label>
    <input type="password" name="upassword"/><button>登录</button>

    <%
        }else {
            out.print("欢迎您：" + obj.toString()+"<a href='zhuxiao.jsp'>注销</a>");
        }
    %>


</body>
</html>
