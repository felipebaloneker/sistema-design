<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    </head>
    <body>
        
        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>"/>
        <form method="post" action="register" class="resgister-form">
            <div>
                <label>Nome:</label>
                <input type="text" name="name" placeholder="your namer here"/>
            </div>
            <div>
                <label>Email:</label>
                <input type="email" name="email" placeholder="your email"/>
            </div>
            <div>
                <label>Password:</label>
                <input type="password" name="password" placeholder="your password here"/>
            </div>
            <input type="submit" class="form_submit" value="Cadastrar"/>
        </form>
        
        <script type="text/javascript">
               var status = document.getElementById("status").value;
               if(status == "sucess"){
                   swal("Congrats","Account Created Sucessfully","sucess");
               }
        </script>
        
    </body>
</html>
