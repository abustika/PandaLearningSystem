/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package net.javaguides.login.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

import net.javaguides.login.bean.LoginBean;
import net.javaguides.login.database.LoginDao;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    
        private LoginDao loginDao;
        private JDBCUtility jdbcUtility;
        private Connection con;


    public void init() {
        String driver = "com.mysql.jdbc.Driver";

        String dbName = "pandasystem";
        String url = "jdbc:mysql://localhost/" + dbName + "?";
        String userName = "root";
        String password = "";

        loginDao = new LoginDao();
        jdbcUtility = new JDBCUtility(driver,
                                      url,
                                      userName,
                                      password);

        jdbcUtility.jdbcConnect();
        con = jdbcUtility.jdbcGetConnection();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        PrintWriter out = response.getWriter();
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        LoginBean loginBean = new LoginBean();
        loginBean.setEmail(email);
        loginBean.setPassword(password);
        
        HttpSession session =request.getSession(true);
        
        //Add the object into the session
        session.setAttribute("email", email);
           
        try {
            
            PreparedStatement ps = null;
            Connection connection = null;
             
            ResultSet rs;
            
            con = DriverManager.getConnection("jdbc:mysql://localhost/pandasystem?","root",""); 
            ps=con.prepareStatement("select * from user where email='"+ email +"'"); 
            rs = ps.executeQuery(); 
                  
           while(rs.next()) 
            { 
               String aa = rs.getString("recent_page");
            
            
            if (loginDao.validate(loginBean)) {
                
                response.sendRedirect(aa);
            } 
            
            else {
         
                out.println("<script type=\"text/javascript\">");
                out.println("alert('E-mel atau kata laluan salah!');");
                out.println("location='login.jsp';");
                out.println("</script>");
                }
            
            }
           
        } 
        
        catch (Exception e) {
             out.println(e);
             e.printStackTrace();
        }
        }
    }
