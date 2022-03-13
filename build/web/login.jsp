<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Design Login</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>        
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>"/>
        <div class="main">
            <section class="sign-in">
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
                <div class="sign-in-container">
                    <a href="registration.jsp">Crie uma Conta</a>
                </div>
            </section>
        </div>
        <script type="text/javascript">
               var status = document.getElementById("status").value;
               if(status == "failed"){
                   swal("Sorry","Wrong Username or Password","failed");
               }
        </script>
    </body>
</html>
