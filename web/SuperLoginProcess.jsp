<%-- 
    Document   : SuperLoginProcess
    Created on : 20 Jul, 2016, 3:12:06 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Secure Access</title>
    </head>
    <body>
         <jsp:useBean id="ao" scope="session" class="HostelforU.beans.Admin" />
        <jsp:setProperty name="ao" property="*"  />
        
      
        <%
            if(ao.validateLogin(ao.getAdminemail(), ao.getPassword()))
            {   session.setAttribute("userid", ao.getAdminemail());
                response.sendRedirect("SuperProfile.jsp");
            }
            else
            {    out.println("Invalid User name or Password. or session expired");
                out.println("<a href='superLogin.jsp' >Login</a>");
            }
        %>
        
    </body>
</html>
