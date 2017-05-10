<%-- 
    Document   : HostelAvalabilityCheck
    Created on : 25 Jul, 2016, 1:04:33 AM
    Author     : user
--%>
<%@page import="java.util.List"%>
<%@page import="HostelforU.beans.Roomtype"%>
<%@include file="CheckSession.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="Js/formvalidation.js" ></script>
        <script>
            function checkdate()
            {  
                   e = document.getElementById("dd");
                   d1 = e.options[e.selectedIndex].value;
                  e = document.getElementById("dd1");
                  d2 = e.options[e.selectedIndex].value;
                 
                   e = document.getElementById("mm");
                   m1 = e.options[e.selectedIndex].value;
                  e = document.getElementById("mm1");
                  m2 = e.options[e.selectedIndex].value;
                
                   e = document.getElementById("yy");
                  y1 = e.options[e.selectedIndex].value;
                  e = document.getElementById("yy1");
                  y2 = e.options[e.selectedIndex].value;
                  
                  date1=new Date(y1,m1,d1);
                  date2=new Date(y2,m2,d2);
                 
                  if(date1<date2)
                  return true;
                  else 
                  {  str="Invalid Checkin And Checkout Combination";
                     alert(str);
                      return false;
                  }   
                  
               
            }
        </script>
    </head>
    <body>
          <jsp:include page="HeaderHosteler.jsp"/>
        <jsp:include page="FirstElement.jsp"/>
        <jsp:useBean id="hb" scope="page" class="HostelforU.beans.Hostel" />
        <% String hid=request.getParameter("hid");
           hb=hb.getRecord(Integer.parseInt(hid));
           out.println("<h2>"+hb.getHostelname()+"</h2>");  
        %>
       <form method="post" action="HostelBooking.jsp"  onsubmit="return checkdate()">
        <table border="1">
            <thead>
                <tr>
                    <th>Select Room Type</th>
                    <th>Checkin Date</th>
                    <th>Checkout Date </th>
                </tr>
            </thead>
         <tr>
             <td>
                 <input type="hidden" name="hostelid" value="<%= hb.getHostelid() %>" />
        <select name="roomtypename">
            
             <%    
                   List<Roomtype> list=Roomtype.getRecords(Integer.parseInt(hid));
                  for(int i=0;i<list.size();i++)
                   out.println("<br><option value='"+list.get(i).getRoomtypename()+"' >"+list.get(i).getRoomtypename()+"</option>");
               %>
        </select>
             </td>
             <td>
                         Day<select name="dd" id="dd">
                                <script>
                                    for(i=1;i<=31;i++)
                                        document.write("<option value='"+i+"' >"+i+"</option>");
                                </script>
                            </select>
                            Month<select name="mm" id="mm" >
                                <script>
                                    for(i=1;i<=12;i++)
                                        document.write("<option value='"+i+"' >"+i+"</option>");
                                </script>
                            </select>
                            Year<select name="yy" id="yy">
                                <script>
                                    d=new Date();
                                    for(i=d.getFullYear();i<=d.getFullYear()+1;i++)
                                        document.write("<option value='"+i+"' >"+i+"</option>");
                                </script>
                            </select>
             </td>
              <td>
                         Day<select name="dd1" id="dd1">
                                <script>
                                    for(i=1;i<=31;i++)
                                        document.write("<option value='"+i+"' >"+i+"</option>");
                                </script>
                            </select>
                            Month<select name="mm1" id="mm1" >
                                <script>
                                    for(i=1;i<=12;i++)
                                        document.write("<option value='"+i+"' >"+i+"</option>");
                                </script>
                            </select>
                            Year<select name="yy1" id="yy1">
                                <script>
                                    d=new Date();
                                    for(i=d.getFullYear();i<=d.getFullYear()+1;i++)
                                        document.write("<option value='"+i+"' >"+i+"</option>");
                                </script>
                            </select>
             </td>
         </tr>
         <tr>
             <td colspan="3">
               <input type="submit" value="Check Availibilty And Book" name="checkavailibilty"/>
             </td>
         </tr>
        </table>
       </form>  
    </body>
</html>
