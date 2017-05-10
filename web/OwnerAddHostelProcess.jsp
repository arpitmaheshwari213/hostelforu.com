<%-- 
    Document   : OwnerAddHostelProcess
    Created on : 23 Jul, 2016, 3:48:21 PM
    Author     : user
--%>
<%@include file="CheckSession.jsp" %>
<%@page import="java.util.List"%>
<%@page import="HostelforU.DataManager"%>
<%@page import="HostelforU.beans.Hostel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
              function isRoomtypeValid(){
               str2="";
                
                for(i=1;i<$("#no_of_room_type").val()+1;i++)
                {   
                    rtname=document.getElementById("roomtypename"+i);
                    price=document.getElementById("price"+i);
                    n_roomtype=document.getElementById("no_of_rooms"+i);
                    if(isEmpty(rtname))
                    str2+="\n Room Type Name Required"+i;
                
                     if(isEmpty(price))
                    str2+="\n price Required"+i;
                    
                     if(isEmpty(n_roomtype))
                    str2+="\n no of Rooms Required"+i;
                }
             
                  if(str2.length==0)
                  return true;
                
                   else
                   {alert(str2);
                   return false; 
                   }
       }
        </script>
       
    </head>
    <body>
        <jsp:useBean id="ho" scope="page" class="HostelforU.beans.Hostel" />
        
        
         <% ho.setHostelid(Hostel.getNewId());
             ho.setOwneremail(""+session.getAttribute("userid"));
            ho.setHostelname(request.getParameter("hostelname"));
             ho.setDescription(request.getParameter("description"));
             ho.setLocation(request.getParameter("location"));
             ho.setContact(request.getParameter("contact"));
            
           if(session.getAttribute("hostelid")==""||session.getAttribute("hostelid")==null)
           {session.setAttribute("hostelid",ho.getHostelid() );
             ho.addToDb();
           }
           
        %>
        
        <form method="post" action="OwnerSaveRoomType.jsp" onsubmit="return isRoomtypeValid()">
         <input type="hidden" name="nroomtype" value="<%= Integer.parseInt(request.getParameter("no_of_room_type"))%>"/>
        <table border="1" align="center">
            
            <tr>
                <th>Room Type Name</th>
                <th>No Of Rooms</th>
                <th>Price per day</th>
            </tr>
            <% int b=Integer.parseInt(request.getParameter("no_of_room_type"));
                for(int i=1;i<b+1;i++)
            {       out.println("<tr>");
                    out.println("<td><input type='text' name='roomtypename"+i+"' id='roomtypename"+i+"'  /></td>");
                    out.println("<td><input type='number' name='no_of_rooms"+i+"' id='no_of_rooms"+i+"' min='1' /></td>");
                    out.println("<td><input type='number' name='price"+i+"' id='price"+i+"' min='1'  /></td>");
                    out.println("</tr>");
                
            }
                 out.println("<tr><td colspan='3'><input type='submit' value='Save' name='Save' /></td></tr>");
            %>
            
        </table>  
        </form>
    </body>
</html>
