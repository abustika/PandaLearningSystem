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

import net.javaguides.login.bean.ForgotBean;
import net.javaguides.login.database.ForgotDao;



@WebServlet(name = "ForgotPassServlet", urlPatterns = {"/ForgotPassServlet"})
public class ForgotPassServlet extends HttpServlet {
    
    private ForgotDao forgotDao;
     private JDBCUtility jdbcUtility;
    private Connection con;

    public void init() {
        forgotDao = new ForgotDao();
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

     String email = request.getParameter("email");
     //  String name = request.getParameter("name");
        ForgotBean forgotBean = new ForgotBean();
        forgotBean.setEmail(email);
      //  forgotBean.setName(name);
        

        try {
            
                HttpSession session =request.getSession(true);
        
           //Add the object into the session
      
           session.setAttribute("email", email);
            if (forgotDao.validate(forgotBean)) {
              
//                
//               String sqlInsert ="UPDATE user SET password='fz' where email=?";
//               PreparedStatement ps = con.prepareStatement (sqlInsert);
//                ps.setString(1,email);
//                ps.executeUpdate();
//                
//                  PrintWriter out = response.getWriter();
//                  out.println("<h1>Thank you " + email+"!</h1>");
                
                response.sendRedirect("reset-password.jsp");
            } else {
                  PrintWriter out = response.getWriter();

           out.println("<script type=\"text/javascript\">");
           out.println("alert('E-mel ini tidak pernah didaftar!');");
           out.println("location='forgot-password.jsp';");
           out.println("</script>");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } 
    }
}