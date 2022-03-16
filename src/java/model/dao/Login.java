package model.dao;

import connection.ConnectionFactory;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;
        
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uemail = request.getParameter("email");
        String upwd = request.getParameter("password");
        Connection con = ConnectionFactory.getConnection();
        PreparedStatement stmt = null;
        RequestDispatcher dispatcher = null;
        HttpSession session = request.getSession();
        
        try{
              stmt = con.prepareStatement("SELECT * FROM users WHERE uemail = ? and upwd = ?");
              stmt.setString(1,uemail);
              stmt.setString(2,upwd);
              
              ResultSet rs = stmt.executeQuery();
              if(rs.next()){
                  session.setAttribute("name",rs.getString("uname"));
                  session.setAttribute("id", rs.getString("id"));
                  session.setAttribute("email", rs.getString("uemail"));
                  session.setAttribute("type",rs.getString("utype"));
                  dispatcher = request.getRequestDispatcher("index.jsp");
              }
              else{
                  request.setAttribute("status", "failed");
                  dispatcher = request.getRequestDispatcher("login.jsp");
              }
              dispatcher.forward(request, response);
        }
        catch(SQLException ex){
            System.out.println(ex);
        }
    }

}
