<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Design Login</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" type="text/css" href="styles.css"/>
        <link rel="preconnect" href="https://fonts.googleapis.com"> 
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&display=swap" rel="stylesheet"> 
    </head>
    <body>        
        <div class="app_content">
            <div class="app_wrp">
                <input type="hidden" id="status" value="<%= request.getAttribute("status")%>"/>
                    <section class="sign_container">
                        <div class="sign_image">
                        </div>
                       <div class="sign_wrp">
                           <div class="sign_header">
                               <h2>Bem Vindo</h2>
                               <p>click para logar</p>
                           </div>
                           <div class="sign_main">
                                <form method="post" action="login" class="login-form">
                                    <div>
                                        <label>Email:</label>
                                        <input type="email" name="email" placeholder="Digite seu email"/>
                                    </div>
                                    <div>
                                        <label>Password:</label>
                                        <input type="password" name="password" placeholder="Digite sua Senha"/>
                                    </div>
                                    <input type="submit" class="form_submit" value="Entrar"/>
                                </form>
                           </div>
                            <div class="sign_footer">
                                <a href="register.jsp">Crie uma Conta</a>
                            </div>
                       </div>
                    </section>
            </div>
        </div>
        <script type="text/javascript">
               var status = document.getElementById("status").value;
               if(status == "failed"){
                   swal("Sorry","Wrong Username or Password","failed");
               }
        </script>
    </body>
</html>
