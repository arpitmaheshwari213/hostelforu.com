<%-- 
    Document   : OwnerUpdateHostel
    Created on : 26 Jul, 2016, 3:05:33 PM
    Author     : user
--%>
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
         <script src="Js/jquery.js" ></script>
        <script src="Js/formvalidation.js" ></script>
        <script>
            $(document).ready(abc);
            function abc()
            {
                $("#save").on("click",function(){ isFormValid(); });
            }
             c=0;
             
            function isFormValid(){
               
                 str="";
                hname=document.getElementById("hostelname");
                
                contact=document.getElementById("contact");
             
                  if(isEmpty(hname))
                    str+="\n Hostel Name Required";
                 
                
                   if(isEmpty(contact))
                    str+="\n Contact Required";
                    else
                    if(!isPhone(contact))
                        str+="\n Invalid Contact";
              
                  
                    
                if(str.length==0)
                {if(c==0)
                    { c=1;
                      addRoomTypeTable(); 
                  }
                  else
                      alert("this data cannnot be changed right now .You can later on Update it");
                }
                 else
                alert(str);
                   
                     
            }
             function addRoomTypeTable(){
                
                 $("#roomtypebox").load("OwnerUpdateHostelProcess.jsp",{ hostelname: $("#hostelname").val(),
                                                                    description: $("#description").val(),
                                                                    location: $("#location").val(),
                                                                    contact: $("#contact").val(),
                                                                    hid: <%= request.getParameter("hid") %>
                                                                   });   
            }
            </script>
    </head>
    <body>
        <% int hid=Integer.parseInt(request.getParameter("hid"));
           Hostel ho=new Hostel();
           ho=ho.getRecord(hid);
           List<Roomtype> roomtypelist=Roomtype.getRecords(hid);
         
        %>
        <body>
       
        
        <table border="1" align="center">
            <caption>Hostel Details</caption>
            <tbody>
               
                <tr>
                    <td>Hostel Name:-</td>
                    <td><input type="text" name="hostelname" id="hostelname" placeholder="eg: XYZ Hostel" value="<%=ho.getHostelname() %>" /></td>
                </tr>
                <tr>
                    <td>Description:-</td>
                    <td><textarea name="description" id="description" rows="8" cols="40"><%=ho.getDescription() %></textarea></td>
                </tr>
                <tr>
                    <td>Location:-</td>
                    <td><textarea name="location" id="location" rows="8" cols="40" ><%=ho.getLocation() %></textarea></td>
                </tr>
                <tr>
                    <td>Contact:-</td>
                    <td><input type="text" name="contact" id="contact" value="<%=ho.getContact() %>" /></td>
                </tr>
               
                <tr>
                    <td colspan="2"><input type="button" value="Save" name="Save" id="save"  /></td>
                </tr>
            </tbody>
        </table>
       
        <div id="roomtypebox">
            
        </div>
        
 
          
  
    </body>
</html>
    </body>
</html>
