<%
    session.removeAttribute("userid");
    session.invalidate();
    response.sendRedirect("index.jsp");
%>