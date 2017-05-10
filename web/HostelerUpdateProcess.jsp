<%-- 
    Document   : HostelerUpdateProcess
    Created on : 22 Jul, 2016, 10:38:15 PM
    Author     : user
--%>

<%@page import="HostelforU.Util"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:useBean id="hb" scope="page" class="HostelforU.beans.Hosteler" />
        <jsp:setProperty name="hb" property="*" />
        <%
            int dd=Integer.parseInt(request.getParameter("dd"));
            int mm=Integer.parseInt(request.getParameter("mm"));
            int yy=Integer.parseInt(request.getParameter("yy"));
            hb.setDob(HostelforU.Util.toDate(yy, mm, dd));
            
            hb.updateToDb();
            response.sendRedirect("HostelerProfile.jsp");
        %>
       
    </body>
</html>