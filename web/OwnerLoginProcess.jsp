<%-- 
    Document   : OwnerLoginProcess
    Created on : 19 Jul, 2016, 3:30:31 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="oo" scope="session" class="HostelforU.beans.Owner" />
        <jsp:setProperty name="oo" property="*"  />
        
      
        <%
            if(oo.validateLogin(oo.getOwneremail(), oo.getPassword()))
            {   session.setAttribute("userid", oo.getOwneremail());
                response.sendRedirect("OwnerProfile.jsp");
            }
            else
            {    out.println("Invalid User name or Password. or session expired");
                out.println("<a href='index.jsp' >Login</a>");
            }
        %>
    </body>
</html>
