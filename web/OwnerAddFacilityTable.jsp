<%-- 
    Document   : OwnerAddFacilityTable
    Created on : 23 Jul, 2016, 7:59:37 PM
    Author     : user
--%>
<%@include file="CheckSession.jsp" %>
<%@include file="CheckHostelSession.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <table border="1" align="center">
            <tr>
                <th>Facility Name</th>
                <th>Facility Details</th>
                 </tr>
        <% for(int i=1;i<Integer.parseInt(request.getParameter("no_of_facilities"))+1;i++)
        { out.println("<tr>");
          out.println("<td><input type='text' name='facilityname"+i+"' id='facilityname"+i+"' /></td>");
          out.println("<td><input type='text' name='facilitydetails"+i+"'  /></td>");
          out.println("</tr>");
        }
           out.println("<tr><td colspan='3'><input type='submit' value='Save' name='Save'  /></td></tr>"); 
        
           %>
       </table>
    </body>
</html>
