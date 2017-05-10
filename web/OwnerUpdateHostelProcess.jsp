<%-- 
    Document   : OwnerUpdateHostelProcess
    Created on : 26 Jul, 2016, 3:51:13 PM
    Author     : user
--%>
<%@page import="HostelforU.beans.Roomtype"%>
<%@page import="HostelforU.beans.Hostel"%>
<%@include file="CheckSession.jsp" %>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <jsp:useBean id="ho" scope="page" class="HostelforU.beans.Hostel" />
        
        
         <% 
            
            out.print(request.getParameter("hid"));
             
          ho.setHostelid(Integer.parseInt(request.getParameter("hid")));
            ho.setOwneremail(""+session.getAttribute("userid"));
           ho.setHostelname(request.getParameter("hostelname"));
             ho.setDescription(request.getParameter("description"));
            ho.setLocation(request.getParameter("location"));
            ho.setContact(request.getParameter("contact"));
            
           if(session.getAttribute("hostelid")==""||session.getAttribute("hostelid")==null)
          {session.setAttribute("hostelid",ho.getHostelid() );
             ho.updateToDb();
          }
           
        %>
        
        <form method="post" action="OwnerUpdateRoomType.jsp" onsubmit="return isRoomtypeValid()">
         
        <table border="1" align="center">
            
            <tr>
                <th>Room Type Name</th>
                <th>No Of Rooms</th>
                <th>Price per day</th>
            </tr>
            <%  List<Roomtype> roomtypelist=Roomtype.getRecords(ho.getHostelid());
                for(int i=1;i<roomtypelist.size()+1;i++)
            {       out.println("<tr>");
                    out.println("<td><input type='text' name='roomtypename"+i+"' id='roomtypename"+i+"' value='"+roomtypelist.get(i-1).getRoomtypename()+"' /></td>");
                    out.println("<td><input type='number' name='no_of_rooms"+i+"' id='no_of_rooms"+i+"'  value='"+roomtypelist.get(i-1).getNo_of_rooms()+"' /></td>");
                    out.println("<td><input type='number' name='price"+i+"' id='price"+i+"' min='1'  value='"+roomtypelist.get(i-1).getPrice()+"' /></td>");
                    out.println("</tr>");
                
            }
                 out.println("<tr><td colspan='3'><input type='submit' value='Save' name='Save' /></td></tr>");
            %>
            
        </table>  
        </form>
    </body>
</html>
