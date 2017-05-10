<%-- 
    Document   : SearchHostel
    Created on : 24 Jul, 2016, 5:29:13 PM
    Author     : user
--%>
<%@include file="CheckSession.jsp" %>
<%@page import="HostelforU.beans.Facility"%>
<%@page import="HostelforU.beans.Roomtype"%>
<%@page import="java.util.List"%>
<%@page import="HostelforU.beans.Hostel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Hostel</title>
         <script src="Js/jquery.js" ></script>
        <script>
            $(document).ready(abc);
            function abc()
            {   xyz();
                $("#location").on("change",xyz);
                $("#roomtypename").on("change",xyz);
                $("#price").on("change",xyz);
                $("#facilityname").on("change",xyz);
            }
            function xyz()
            {
                        $("#hostelbox").load("SearchHostelProcess.jsp",{  
                                                                    location: $("#location").val(),
                                                                    roomtypename: $("#roomtypename").val(),
                                                                    price: $("#price").val(),
                                                                    facilityname: $("#facilityname").val()
                                                                   
                                                                });    
                    
            }
        </script>
    </head>
    <body>
          <jsp:include page="HeaderHosteler.jsp"/>
          <jsp:include page="FirstElement.jsp"/>
         <table border="1" align="center">
                
                <tbody>
                    <tr>
                        <td>
                            Location:
                            <select name="location" id="location" >
                                <option value="all" >All</option>
                                <%
                                    Hostel hb=new Hostel();
                                    List<String> list=hb.getColumnValues("location");
                                    for(int i=0;i<list.size();i++)
                                        out.println("<br><option value='"+list.get(i)+"' >"+list.get(i)+"</option>");
                                %>
                            </select>
                        </td>
                        <td>
                            Room Type:
                            <select name="roomtypename" id="roomtypename" >
                                <option value="all" >All</option>
                                <%
                                    Roomtype rb=new Roomtype();
                                    list=rb.getColumnValues("roomtypename");
                                    for(int i=0;i<list.size();i++)
                                        out.println("<br><option value='"+list.get(i)+"' >"+list.get(i)+"</option>");
                                %>
                            </select>
                        </td>
                        <td>
                             Price
                            <select name="price" id="price" >
                                <option value="all" >All</option>
                                <%
                                    
                                    list=rb.getColumnValues("price");
                                    for(int i=0;i<list.size();i++)
                                        out.println("<br><option value='"+list.get(i)+"' >"+list.get(i)+"</option>");
                                %>
                            </select>
                        </td>
                        <td>
                             Facility:
                            <select name="facilityname" id="facilityname" >
                                <option value="all" >All</option>
                                <%
                                    Facility fb=new Facility();
                                    list=fb.getColumnValues("facilityname");
                                    for(int i=0;i<list.size();i++)
                                        out.println("<br><option value='"+list.get(i)+"' >"+list.get(i)+"</option>");
                                %>
                            </select>
                        </td>
                       
                    </tr>
                </tbody>
            </table>
            <div id="hostelbox" >
                
            </div>                   
    </body>
</html>
