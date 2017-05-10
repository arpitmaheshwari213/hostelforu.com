<%-- 
    Document   : OwnerAddFacilities
    Created on : 23 Jul, 2016, 7:48:32 PM
    Author     : user
--%>
<%@include file="CheckSession.jsp" %>
<%@include file="CheckHostelSession.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script src="Js/jquery.js" ></script>
        <script>
            $(document).ready(abc);
            function abc()
            {   xyz();
                $("#no_of_facilities").on("change",xyz);
            }
             function xyz()
            {
                        $("#formbox").load("OwnerAddFacilityTable.jsp",{ no_of_facilities : $("#no_of_facilities").val()
                                                                 });    
                    
            }
            
        </script>
         <script>
             function isFacilityValid(){
               str2="";
              
             
                for(i=0;i<$("#no_of_facilities").val();i++)
                {   f="facilityname"+i
                    fname=document.getElementById();
                    document.write(fname);
                    return false;
                    if(isEmpty(fname))
                    str2+="\n FacilityName Required"+i;
                   
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
        <form action="OwnerAddFacilitiesProcess.jsp" method="POST" onsubmit="return isFacilityValid()">
            No of facilities:<input type="number" name="no_of_facilities" id="no_of_facilities" min="1" value="1" />
            <div id="formbox">
                 
                
          </div> 
            
        </form>
    </body>
</html>
