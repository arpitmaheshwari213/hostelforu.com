<%-- 
    Document   : SuperProfile
    Created on : 20 Jul, 2016, 3:17:25 AM
    Author     : user
--%>
<%@include file="CheckSession.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Secure Access</title>
    </head>
    <body>
          <jsp:useBean id="ao" scope="session" class="HostelforU.beans.Admin" />
        <h1>Hello <%= ao.getAdminname() %> </h1>
        <a href="logout.jsp">Sign Out</a>
    </body>
</html>
