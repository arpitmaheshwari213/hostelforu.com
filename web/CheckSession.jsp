<%
    if(session==null||session.getAttribute("userid")==null||session.getAttribute("userid").equals(""))
    {
        response.sendRedirect("index.jsp");
        return;
    }
%>