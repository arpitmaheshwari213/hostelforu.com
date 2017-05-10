<%-- 
    Document   : OwnerMyHostels
    Created on : 25 Jul, 2016, 6:49:34 PM
    Author     : user
--%>
<%@page import="java.util.List"%>
<%@page import="HostelforU.beans.Hostel"%>
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
        <%String oemail=""+session.getAttribute("userid");
         String qry="Select * from hostel where owneremail='"+oemail+"'";
          List<Hostel> hostellist=Hostel.getRecords(qry);
         
            %>
            
             <table border="1" style="border-collapse:collapse;" align="center">
                 <caption><h2><%=oemail %></h2></caption>
            <tr>
                <th>Hostel Name </th>
                <th>Location</th>
                <th>Contact</th>
                <th>Update</th>
            </tr>
          <% for(int i=0;i<hostellist.size();i++)
          {
              out.println("<tr>");
              out.println("<td>"+hostellist.get(i).getHostelname()+"</td>");
              out.println("<td>"+hostellist.get(i).getLocation()+"</td>");
              out.println("<td>"+hostellist.get(i).getContact()+"</td>");
               out.println("<td><a href='OwnerUpdateHostel.jsp?hid="+hostellist.get(i).getHostelid()+"' >Update</a></td>");
              out.println("</tr>");
          }
              
             %>            
    </body>
</html>
