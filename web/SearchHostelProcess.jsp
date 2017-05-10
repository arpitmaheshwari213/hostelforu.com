<%-- 
    Document   : SearchHostelProcess
    Created on : 24 Jul, 2016, 6:51:58 PM
    Author     : user
--%>
<%@include file="CheckSession.jsp" %>
<%@page import="HostelforU.beans.Hostel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%    String loc,rtn,fn;
             String pr;
            if(!(request.getParameter("location")+"").equals("all"))
              {  loc="'"+request.getParameter("location")+"'";
              }
            else
                loc="location";
            
             if(!(request.getParameter("roomtypename")+"").equals("all"))
              {  rtn="'"+request.getParameter("roomtypename")+"'";
              }
            else
                rtn="roomtypename";
             
             if(!(request.getParameter("price")+"").equals("all"))
              {  pr=request.getParameter("price");
              }
            else
                pr="price";
             
             if(!(request.getParameter("facilityname")+"").equals("all"))
              {  fn="'"+request.getParameter("facilityname")+"'";
              }
            else
                fn="facilityname";
             
             
            String query = "SELECT a.hostelid FROM (select * from hostel where location=" +loc+ ")as a ,(select * from roomtype where roomtypename="+ rtn+" and price="+pr+" )as b ,(select * from facility where facilityname="+fn+")as c where a.hostelid=b.hostelid and b.hostelid=c.hostelid group by a.hostelid order by a.hostelid"  ;
           
            java.sql.ResultSet rs= HostelforU.DataManager.select(query);
             
             if(rs.next()==false)
             { out.println("<h2 align='center'>No Hostel Available based on given crieteria</h2>");
                return;
             }
             rs.previous();
          
            
        %>  
         <table border="1" align="center">
            <tr>
                <th>Hostel Name</th>
                <th>Location</th>
                <th>Book Hostel</th>
             </tr>
               <%  
                   Hostel h=new Hostel();
                   
               while(rs.next())
                {   h=h.getRecord(rs.getInt(1));
                    out.println("<tr>");
                    out.println("<td>"+h.getHostelname()+"</td>");
                     out.println("<td>"+h.getLocation()+"</td>");
                     out.println("<td><a href='HostelAvalabilityCheck.jsp?hid="+h.getHostelid()+"' >Book</a></td>");
                    out.println("</tr>");
                }
                    %>
        </table>
    </body>
</html>
