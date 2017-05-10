<%-- 
    Document   : OwnerAddFacilitiesProcess
    Created on : 23 Jul, 2016, 9:18:06 PM
    Author     : user
--%>
<%@include file="CheckSession.jsp" %>
<%@include file="CheckHostelSession.jsp" %>
<%@page import="HostelforU.beans.Facility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="fb" scope="page" class="HostelforU.beans.Facility" />
     
      
        <% for(int i=1;i<=Integer.parseInt(request.getParameter("no_of_facilities"));i++)
        {   fb.setFacilityid(Facility.getNewId());
            fb.setFacilityname(request.getParameter("facilityname"+i));
            fb.setFacilitydetails(request.getParameter("facilitydetails"+i));
            fb.setHostelid(Integer.parseInt(""+session.getAttribute("hostelid")));     
            fb.addToDb();
         
        }
       
           response.sendRedirect("OwnerAllotFacilityToRoom.jsp");%>
    </body>
</html>
