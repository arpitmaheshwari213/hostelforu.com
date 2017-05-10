<%-- 
    Document   : OwnerSaveRoomType
    Created on : 23 Jul, 2016, 5:17:20 PM
    Author     : user
--%>
<%@page import="HostelforU.beans.Roomtype"%>
<%@include file="CheckSession.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="rb" scope="page" class="HostelforU.beans.Roomtype" />
        
      
        <% for(int i=1;i<=Integer.parseInt(request.getParameter("nroomtype"));i++)
        {    
            rb.setRoomtypeid(Roomtype.getNewId());
            rb.setHostelid(Integer.parseInt(""+session.getAttribute("hostelid")));
            rb.setNo_of_rooms(Integer.parseInt( request.getParameter("no_of_rooms"+i)));
            rb.setRoomtypename(request.getParameter("roomtypename"+i));
            rb.setPrice(Integer.parseInt( request.getParameter("price"+i)));
            rb.addToDb();
          
        }
       
        response.sendRedirect("OwnerAddFacilities.jsp");
       %>
    </body>
</html>
