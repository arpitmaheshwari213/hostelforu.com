<%-- 
    Document   : UploadLogoProcess
    Created on : 26 Jul, 2016, 6:20:44 PM
    Author     : user
--%>

<%@page import="HostelforU.FileBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% String hid=""+session.getAttribute("userid");
            String filenames[]={"logo_"+hid+".jpg"};
            int maxSize=1024*1024*20;
            String fileType=".jpg";
            FileBean.upload(application, request, response, "logos", filenames, maxSize, fileType);
            //out.println("Upload Successfull");
            response.sendRedirect("HostelerProfile.jsp");
        %>
    </body>
</html>
