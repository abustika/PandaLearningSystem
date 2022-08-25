/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.javaguides.login.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

import net.javaguides.login.bean.getPassword;
//import net.javaguides.login.database.ForgotDao;




@WebServlet(name = "resetPasswordServlet", urlPatterns = {"/resetPasswordServlet"})
public class resetPasswordServlet extends HttpServlet {
    
  //  private ForgotDao forgotDao;
     private JDBCUtility jdbcUtility;
    private Connection con;

    public void init() {
       // forgotDao = new ForgotDao();
         String driver = "com.mysql.jdbc.Driver";

        String dbName = "pandasystem";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";
 
        

        jdbcUtility = new JDBCUtility(driver,
                                      url,
                                      userName,
                                      password);

        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    
         HttpSession session = request.getSession();
         //GET data form 
      
        String newPassword = request.getParameter ("password");
        String confirmPassword = request.getParameter ("confirmpassword");

       //try (PrintWriter out = response.getWriter()) {
         try{
                
       if(newPassword.equals(confirmPassword)){
        
        //Get the session data from the session object
        String email = (String) session.getAttribute("email");
                
         // String sqlInsert ="UPDATE user SET password='123' where email=?";
         
              String sqlInsert ="UPDATE user SET password='"+newPassword+"' where email=?";
              PreparedStatement ps = con.prepareStatement (sqlInsert);
              ps.setString(1,email);
              ps.executeUpdate();
                
              
             PrintWriter out = response.getWriter();
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Kemas Kini Kata Laluan Berjaya!');");
             out.println("location='login.jsp';");
             out.println("</script>");

              //  out.println("<h1>Thank you " +email+" "+ password+"!</h1>");
                
               // response.sendRedirect("reset-password.jsp");
            }
       
       else{
          
             PrintWriter out = response.getWriter();
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Pastikan Kata Laluan adalah sama!');");
             out.println("location='reset-password.jsp';");
             out.println("</script>");
       }
       
         }
         catch (SQLException e) {
            e.printStackTrace();
        }
       
        
    }
}