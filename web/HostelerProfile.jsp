<%-- 
    Document   : HostelerProfile
    Created on : 19 Jul, 2016, 5:28:30 PM
    Author     : user
--%>
<%@include file="CheckSession.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="Js/jquery.js" ></script>
        <script>
            function isFileSelected()
            {
                if(document.getElementById("logofile").value=="")
                {
                   alert("Please select a file"); 
                   return false;
                }
                return true;
            }
            </script>
    </head>
    <body>
         <jsp:include page="HeaderHosteler.jsp"/>
        <jsp:include page="FirstElement.jsp"/>
         <jsp:useBean id="ho" scope="session" class="HostelforU.beans.Hosteler" />
          <%  
            String hid=""+session.getAttribute("userid");
            ho=ho.getRecord(hid);
        %>
         <img src='logos/logo_<%=hid%>.jpg' width="300" height="300" border="2" >
        <form method="POST" enctype="multipart/form-data" action='UploadLogoProcess.jsp' onsubmit="return isFileSelected() ">
            <input type="file" name="logofile" id="logofile"/>
            <input type="submit" value="upload/change logo" />
        </form>
        <h1>Hello <%= ho.getHostelername() %> </h1>
        
  
        
        
    </body>
</html>
