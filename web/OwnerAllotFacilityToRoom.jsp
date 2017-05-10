<%-- 
    Document   : OwnerAllotFacilityToRoom
    Created on : 23 Jul, 2016, 9:33:28 PM
    Author     : user
--%>
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
        <form action="OwnerAllotFacilityProcess.jsp" method="POST">
            
                    <%
                         List<Roomtype> roomtypeList=Roomtype.getRecords(Integer.parseInt(""+session.getAttribute("hostelid")));
                         List<Facility> facilityList=Facility.getRecords(Integer.parseInt(""+session.getAttribute("hostelid")));
                          for(int i=0;i<roomtypeList.size();i++)
                          {
                               
                               out.println("Room Type :-"+roomtypeList.get(i).getRoomtypename());
                               out.println("<table border='1'>");
                               out.println("<tr>");
                               out.println("<td colspan=2>Alloted Room No To Rooms in hostel</td>");
                               out.println("</tr>");
                               for(int j=1;j<=roomtypeList.get(i).getNo_of_rooms();j++)
                               {out.println("<tr>");
                                 out.println("<td>Room no of "+j+"</td>");
                                 out.println("<td><input type='number' name='room"+i+""+j+"'");
                                 out.println("</tr>");  
                               }
                                out.println("<tr>");
                               out.println("<td colspan=2>Alloted Facilities to this RoomType in hostel</td>");
                               out.println("</tr>");
                                 for(int k=0;k<facilityList.size();k++)
                               {out.println("<tr>");
                                 out.println("<td>"+facilityList.get(k).getFacilityname()+"</td>");
                                 out.println("<td><input type='checkbox' value='checked' name='facility"+i+""+k+"'");
                                 out.println("</tr>");  
                               }
                               
                               out.println("</table>");
                                
                          }
                          
                          out.println("<input type='submit' value='Submit'>");
                        
                        
                     %>
                    
                    
             

        </form>
         
        
    </body>
</html>
