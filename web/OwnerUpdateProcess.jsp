<%-- 
    Document   : OwnerUpdateProcess
    Created on : 23 Jul, 2016, 1:06:57 AM
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
         <jsp:useBean id="ob" scope="page" class="HostelforU.beans.Owner" />
        <jsp:setProperty name="ob" property="*" />
        <%
            int dd=Integer.parseInt(request.getParameter("dd"));
            int mm=Integer.parseInt(request.getParameter("mm"));
            int yy=Integer.parseInt(request.getParameter("yy"));
            ob.setDob(HostelforU.Util.toDate(yy, mm, dd));
            
            ob.updateToDb();
            response.sendRedirect("OwnerProfile.jsp");
        %>
       
    </body>
</html>
