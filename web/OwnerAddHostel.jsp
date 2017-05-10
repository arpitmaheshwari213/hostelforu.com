<%-- 
    Document   : OwnerAddHostel
    Created on : 23 Jul, 2016, 2:58:41 PM
    Author     : user
--%>
<%@include file="CheckSession.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add your Hostel</title>
        <script src="Js/jquery.js" ></script>
        <script src="Js/formvalidation.js" ></script>
        <script>
             c=0;
            function isFormValid(){
               
                 str="";
                hname=document.getElementById("hostelname");
                
                contact=document.getElementById("contact");
                nroomtype=document.getElementById("no_of_room_type");
                  if(isEmpty(hname))
                    str+="\n Hostel Name Required";
                 
                
                   if(isEmpty(contact))
                    str+="\n Contact Required";
                    else
                    if(!isPhone(contact))
                        str+="\n Invalid Contact";
              
                    if(isEmpty(nroomtype))
                    str+="\n No of Room Type Required";
                    
                if(str.length==0)
                {if(c==0)
                    { c=1;
                      addRoomTypeTable(); 
                  }
                  else
                      alert("this data cannnot be changed right now ")
                }
                 else
                alert(str);
                   
                     
            }
            function addRoomTypeTable(){
                
                 $("#roomtypebox").load("OwnerAddHostelProcess.jsp",{ hostelname: $("#hostelname").val(),
                                                                    description: $("#description").val(),
                                                                    location: $("#location").val(),
                                                                    contact: $("#contact").val(),
                                                                    no_of_room_type: $("#no_of_room_type").val()
                                                                    
                                                                   });   
            }
         
           
        </script>
    </head>
    <body>
       
        
        <table border="1" align="center">
            <caption>Hostel Details</caption>
            <tbody>
                <tr>
                    <td>Hostel Name:-</td>
                    <td><input type="text" name="hostelname" id="hostelname" placeholder="eg: XYZ Hostel" /></td>
                </tr>
                <tr>
                    <td>Description:-</td>
                    <td><textarea name="description" id="description" rows="8" cols="40">
                        </textarea></td>
                </tr>
                <tr>
                    <td>Location:-</td>
                    <td><textarea name="location" id="location" rows="8" cols="40">
                        </textarea></td>
                </tr>
                <tr>
                    <td>Contact:-</td>
                    <td><input type="text" name="contact" id="contact" value="" /></td>
                </tr>
                <tr>
                    <td>Number of Different Types of Rooms in your hostel:-</td>
                    <td><input type="number" name="no_of_room_type" id="no_of_room_type" min="1" value="" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="button" value="Save" name="Save" id="save" onclick="isFormValid()"  /></td>
                </tr>
            </tbody>
        </table>
       
        <div id="roomtypebox">
            
        </div>
        
 
          
  
    </body>
</html>
