<%-- 
    Document   : HostelLoginProcess
    Created on : 19 Jul, 2016, 5:24:57 PM
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
         <jsp:useBean id="ho" scope="session" class="HostelforU.beans.Hosteler" />
        <jsp:setProperty name="ho" property="*"  />
        
      
        <%
            if(ho.validateLogin(ho.getHosteleremail(), ho.getPassword()))
            {   session.setAttribute("userid", ho.getHosteleremail());
                response.sendRedirect("HostelerProfile.jsp");
            }
            else
            {    out.println("Invalid User name or Password. or session expired");
                out.println("<a href='index.jsp' >Login</a>");
            }
        %>
    </body>
</html>
