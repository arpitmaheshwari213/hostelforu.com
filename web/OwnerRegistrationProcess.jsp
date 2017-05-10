<%-- 
    Document   : OwnerRegistrationProcess
    Created on : 22 Jul, 2016, 4:42:10 PM
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
            ob.setDob(Util.toDate(yy, mm, dd));
            
            ob.addToDb();
            out.println("You Have Registered Successfully with emailid :- "+ob.getOwneremail());
        %>
        <a href="OwnerLogin.jsp">Log In</a>
    </body>
</html>
