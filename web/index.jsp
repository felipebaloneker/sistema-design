<%@ page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("name") == null){
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <title>WinDesign</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="./styles/global.css"/>
        <link rel="stylesheet" type="text/css" href="./styles/index.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com"> 
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="stylesheet"> 

    </head>
    <body>
       <div class="app_content">
           <div class="app_wrp">
                <header class="header">
                    <div class="log_wrp">
                        <h2><span>Win</span>Design</h2>
                    </div>
                    <div class="menu_wrp">
                        <div class="user_menu">
                            <div class="user_avatar"><%=session.getAttribute("name")%></div>
                            <div class="user_name"><%=session.getAttribute("name")%></div>
                        </div>
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
