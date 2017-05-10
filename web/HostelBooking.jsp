<%-- 
    Document   : HostelBooking
    Created on : 25 Jul, 2016, 2:54:45 AM
    Author     : user
--%>

<%@page import="HostelforU.beans.Hostel"%>
<%@page import="HostelforU.beans.Booking"%>
<%@page import="HostelforU.DataManager"%>
<%@page import="java.util.List"%>
<%@page import="HostelforU.beans.Room"%>
<%@page import="java.util.Date"%>
<%@include file="CheckSession.jsp" %>
<%@page import="HostelforU.Util"%>
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
        <jsp:useBean id="bo" scope="page" class="HostelforU.beans.Booking" />
         <%
            int dd=Integer.parseInt(request.getParameter("dd"));
            int mm=Integer.parseInt(request.getParameter("mm"));
            int yy=Integer.parseInt(request.getParameter("yy"));
            bo.setCheck_in(Util.toDate(yy, mm, dd));
            
            int dd1=Integer.parseInt(request.getParameter("dd1"));
            int mm1=Integer.parseInt(request.getParameter("mm1"));
            int yy1=Integer.parseInt(request.getParameter("yy1"));
            bo.setCheck_out(Util.toDate(yy1, mm1, dd1));
           
           
           
            
            String roomtypename=request.getParameter("roomtypename");
             String hostelid=request.getParameter("hostelid");
             String Qry="Select * from roomtype where hostelid="+Integer.parseInt(hostelid)+" and roomtypename='"+roomtypename+"'";
            
             java.sql.ResultSet rs= DataManager.select(Qry);
             int avlroom=0;
             int flag=0;
             rs.next();
             List<Room> list=Room.getRecords(rs.getInt("roomtypeid"));
               for(int i=0;i<list.size();i++)
             { 
                 String query="Select  *  from booking where roomid="+list.get(i).getRoomid();
                 flag=1;
                 List<Booking> BookingList=Booking.getRecords(query);
                 for(int j=0;j<BookingList.size();j++)
                 {  //flag=1;
                     
                     
                   if(BookingList.get(j).getCheck_in().after(Util.toDate(yy1, mm1, dd1))||BookingList.get(j).getCheck_out().before(Util.toDate(yy, mm, dd)))
                   {  flag=1;
                   
                   }
                   else
                   {  flag=0;
                       break;
                   }
                       
                 }
                if(flag==1)
                 {   bo.setRoomid(list.get(i).getRoomid());
                     avlroom++;
                     
                 }
             }
            if(avlroom==0)
            out.println("Sorry! no rooms are Available.");
            else
            {bo.setHosteleremail(""+session.getAttribute("userid"));
             bo.setPayment("PAC");
             bo.setBookingid(Booking.getNewId());
             
             bo.setBookingdate(Util.toDate(java.util.Calendar.getInstance())) ;
             bo.addToDb();
            out.println("<h2>Your Room Booking is Confirmed</h2><br>");
            Hostel hos=new Hostel();
            hos=hos.getRecord(Integer.parseInt(hostelid));
            Room roo=new Room();
           int rooid=bo.getRoomid();
            roo=roo.getRecord(rooid);
            out.println("<h2>Hostel Name:-"+hos.getHostelname()+"</h2><br>");
            out.println("<h2>Room Type Name:-"+roomtypename+"</h2><br>");
            out.println("<h2>Room no.:-"+roo.getAlloted_room_no()+"</h2><br>");
            out.println("<h2>Check In Date:-"+bo.getCheck_in()+"</h2><br>");
            out.println("<h2>Checkout Date:-"+bo.getCheck_out()+"</h2><br>");
            out.println("<h2>Price:-"+rs.getInt("price")+"</h2><br>");
            out.println("<h2>Payment:-"+bo.getPayment()+"</h2>");
            
            }
            
            
            
            
          
            
            
            %>
            
            
    </body>
</html>
