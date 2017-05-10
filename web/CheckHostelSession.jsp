<%
    if(session.getAttribute("hostelid")==null||session.getAttribute("hostelid").equals(""))
    {
        response.sendRedirect("OwnerProfile.jsp");
        return;
    }
%>
