<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("name") == null){
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <a><%=session.getAttribute("name")%></a>
    </body>
    
</html>
