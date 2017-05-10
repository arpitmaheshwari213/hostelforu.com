<%-- 
    Document   : ViewMyRoomBooking
    Created on : 25 Jul, 2016, 3:51:59 PM
    Author     : user
--%>
<%@include file="CheckSession.jsp" %>
<%@page import="HostelforU.beans.Roomtype"%>
<%@page import="HostelforU.beans.Room"%>
<%@page import="HostelforU.beans.Hostel"%>
<%@page import="HostelforU.beans.Booking"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:include page="HeaderHosteler.jsp"/>
        <jsp:include page="FirstElement.jsp"/>
         <%
            String hemailid=""+session.getAttribute("userid");
            String  qry="Select * from booking where hosteleremail='"+hemailid+"'";
            List<Booking> bookinglist=Booking.getRecords(qry);
            if(bookinglist.size()==0)
            {    out.println("<h2>No Hostel Booking Available</h2>");
                return;
            }
        %>  
         <table border="1" align="center">
            <tr>
                <th>Hostel Name </th>
                <th>Room Type</th>
                <th>Room No.</th>
                <th>Checkin Date</th>
                <th>Checkout Date</th>
                <th>Price per Day</th>
                <th>Payment</th>
            </tr>
               <%
                for(int i=0;i<bookinglist.size();i++)
                {   Room ro=new Room();
                    ro=ro.getRecord(bookinglist.get(i).getRoomid());
                   Roomtype rt=new Roomtype();
         
                  rt=rt.getRecord(ro.getRoomtypeid());
                    Hostel ho=new Hostel();
                   ho=ho.getRecord(rt.getHostelid());
                    
                    
                    out.println("<tr>");
                    out.println("<td>"+ho.getHostelname()+"</td>");
                    out.println("<td>"+rt.getRoomtypename()+"</td>");
                    out.println("<td>"+ro.getAlloted_room_no()+"</td>");
                    out.println("<td>"+bookinglist.get(i).getCheck_in()+"</td>");
                    out.println("<td>"+bookinglist.get(i).getCheck_out()+"</td>");
                    out.println("<td>"+rt.getPrice()+"</td>");
                    out.println("<td>"+bookinglist.get(i).getPayment()+"</td>");
                    out.println("</tr>");
                }
            %>
            
           
        </table>
    </body>
</html>
