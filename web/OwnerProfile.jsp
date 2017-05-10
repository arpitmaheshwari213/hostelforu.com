<%-- 
    Document   : OwnerProfile
    Created on : 19 Jul, 2016, 3:36:23 PM
    Author     : user
--%>
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
         <jsp:useBean id="oo" scope="session" class="HostelforU.beans.Owner" />
        <h1>Hello <%= oo.getOwnername() %> </h1>
        
    </body>
</html>
