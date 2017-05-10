<%-- 
    Document   : OwnerAllotFacilityProcess
    Created on : 24 Jul, 2016, 2:53:06 AM
    Author     : user
--%>
<%@page import="HostelforU.beans.Room"%>

<%@page import="HostelforU.beans.Facility"%>
<%@page import="java.util.List"%>
<%@page import="HostelforU.beans.Roomtype"%>
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
        <jsp:include page="HeaderOwner.jsp"/>
        <jsp:include page="FirstElement.jsp"/>
        <jsp:useBean id="ro" scope="page" class="HostelforU.beans.Room" />
        <jsp:useBean id="hb" scope="page" class="HostelforU.beans.Have" />
        <% List<Roomtype> roomtypeList=Roomtype.getRecords(Integer.parseInt(""+session.getAttribute("hostelid")));
           List<Facility> facilityList=Facility.getRecords(Integer.parseInt(""+session.getAttribute("hostelid")));
            for(int i=0;i<roomtypeList.size();i++)
            { ro.setRoomtypeid(roomtypeList.get(i).getRoomtypeid());
              hb.setRoomtypeid(roomtypeList.get(i).getRoomtypeid());
             for(int j=1;j<=roomtypeList.get(i).getNo_of_rooms();j++)
             { ro.setAlloted_room_no(Integer.parseInt(request.getParameter("room"+i+j)));
               ro.setRoomid(Room.getNewId());
               ro.setAvailable(1);
               ro.addToDb();
             }
             for(int k=0;k<facilityList.size();k++)
             {  if(request.getParameter("facility"+i+k)!=null)
               { hb.setFacilityid(facilityList.get(k).getFacilityid());
                 hb.addToDb();
               }   
             }
            }
            session.removeAttribute("hostelid");
            
            out.println("You have successfully added your hostel");
        %>
    </body>
</html>
