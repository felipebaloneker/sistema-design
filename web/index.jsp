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
        <link rel="stylesheet" type="text/css" href="styles.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com"> 
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="stylesheet"> 

    </head>
    <body>
       <div class="app_content">
           <div class="app_wrp">
                <header class="header">
                    <div class="log_wrp">
                    </div>
                    <div class="menu_wrp">
                        <nav class="menu">
                            <ul>
                                <li><a><%=session.getAttribute("name")%></a></li>
                            </ul>
                        </nav>
                    </div>
                </header>
                <main class="main">

                </main>
                <footer class="footer">

                </footer>
           </div>
       </div>
    </body>
    
</html>
