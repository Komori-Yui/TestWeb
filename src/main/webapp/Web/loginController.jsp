
<%@ page import="com.xyh.dao.UserDao" %>
<%@ page import="com.xyh.dao.UserDaoImpl" %>
<%@ page import="com.xyh.dao.User" %><%--
  Created by IntelliJ IDEA.
  User: 萌崽崽
  Date: 2022/10/11
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setCharacterEncoding("utf-8");
  String uname = request.getParameter("uname");
  String upwd = request.getParameter("upwd");
  UserDao userDao = new UserDaoImpl();
  User u= userDao.login(uname,upwd);
  if (u == null){
    request.setAttribute("msg","登录失败，用户名或密码错误！");
    request.getRequestDispatcher("login.jsp").forward(request,response);
  }else {
    session.setAttribute("user",u);
    response.sendRedirect("welcome.jsp");
  }
%>
