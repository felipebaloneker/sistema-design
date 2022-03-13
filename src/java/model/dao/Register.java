package model.dao;

import connection.ConnectionFactory;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;
    

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
       String uname = request.getParameter("name");
       String uemail = request.getParameter("email");
       String upwd = request.getParameter("password");
       Connection con = ConnectionFactory.getConnection();
       PreparedStatement stmt = null;
       RequestDispatcher dispatcher = null;
       
       try{
           stmt = con.prepareStatement("INSERT INTO users(uname,upwd,uemail,umobile)VALUES(?,?,?,?)");
           stmt.setString(1,uname);
           stmt.setString(2,upwd);
           stmt.setString(3,uemail);
           dispatcher = request.getRequestDispatcher("registration.jsp");
          int rowCount = stmt.executeUpdate();
          if(rowCount > 0){
              request.setAttribute("status", "sucess");
          }
          else{
              request.setAttribute("status", "failed");
          }
          dispatcher.forward(request,response);
           
       }
       catch(SQLException ex){
           System.out.println(ex);
       }
       finally{
           ConnectionFactory.closeConnection(con, stmt);
       }
    } 

}

