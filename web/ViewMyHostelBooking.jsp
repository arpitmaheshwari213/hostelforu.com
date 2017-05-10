<%-- 
    Document   : ViewMyHostelBooking
    Created on : 25 Jul, 2016, 5:30:28 PM
    Author     : user
--%>
<%@page import="HostelforU.beans.Hosteler"%>
<%@page import="HostelforU.beans.Booking"%>
<%@page import="HostelforU.beans.Room"%>
<%@page import="HostelforU.beans.Roomtype"%>
<%@page import="HostelforU.beans.Hostel"%>
<%@page import="java.util.List"%>
<%@include file="CheckSession.jsp" %>
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
          <table border="1" align="center">
            <tr>
                <th>Hostel Name </th>
                <th>Room Type</th>
                <th>Room No.</th>
                <th>Hosteler Name</th>
                <th>Checkin Date</th>
                <th>Checkout Date</th>
                <th>Price per Day</th>
                <th>Payment</th>
            </tr>
       <%
            String oemailid=""+session.getAttribute("userid");
            String  qry="Select * from hostel where owneremail='"+oemailid+"'";
            List<Hostel> hostellist=Hostel.getRecords(qry);
            for(int i=0;i<hostellist.size();i++)
            {
                List<Roomtype> roomtypelist=Roomtype.getRecords(hostellist.get(i).getHostelid());
                for(int j=0;j<roomtypelist.size();j++)
                {
                    List<Room> roomlist=Room.getRecords(roomtypelist.get(j).getRoomtypeid());
                    for(int k=0;k<roomlist.size();k++)
                    {   String query="Select * from booking where roomid="+roomlist.get(k).getRoomid();
                        List<Booking> bookinglist=Booking.getRecords(query);
                        for(int l=0;l<bookinglist.size();l++)
                        {    Hosteler host=new Hosteler();
                             host=host.getRecord(bookinglist.get(l).getHosteleremail());
                             out.println("<tr>");
                             out.println("<td>"+hostellist.get(i).getHostelname()+"</td>");
                             out.println("<td>"+roomtypelist.get(j).getRoomtypename()+"</td>");
                             out.println("<td>"+roomlist.get(k).getAlloted_room_no()+"</td>"); 
                             out.println("<td>"+host.getHostelername()+"</td>");
                             out.println("<td>"+bookinglist.get(l).getCheck_in()+"</td>");
                             out.println("<td>"+bookinglist.get(l).getCheck_out()+"</td>");
                             out.println("<td>"+roomtypelist.get(j).getPrice()+"</td>"); 
                             out.println("<td>"+bookinglist.get(l).getPayment()+"</td>"); 
                            out.println("</tr>");
                        }
                    }
                }
                
            }
            
            
           
        %>  
         </table>

    </body>
</html>
