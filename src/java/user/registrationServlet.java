package user;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

/**
 *
 * @author User
 */
@WebServlet(name = "registrationServlet", urlPatterns = {"/registrationServlet"})
public class registrationServlet extends HttpServlet {
 private JDBCUtility jdbcUtility;
    private Connection con;
    
    public void init() throws ServletException
    {
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
    
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
        HttpSession session = request.getSession();
     
        
        //GET data form 
        String name = request.getParameter("name");
        String email = request.getParameter ("email");
        String birthday = request.getParameter ("birthday");
        String gender = request.getParameter ("gender");
        String password = request.getParameter ("password");
       
       
       try
    {

       PreparedStatement ps =null;
       
        ps=con.prepareStatement ("SELECT * from user where email=?");
          ps.setString (1, email);
          
          ResultSet rs=ps.executeQuery();
          
        if(rs.next()){
           
           PrintWriter out = response.getWriter();
           out.println("<script type=\"text/javascript\">");
           out.println("alert('Daftar gagal,e-mel telah didaftar!');");
           out.println("location='register.jsp';");
           out.println("</script>");
            
        }
           
        else{
             String sqlInsert = "INSERT INTO user(name,email,birthday,gender,password,recent_page) VALUES(?,?,?,?,?,?)";
             ps = con.prepareStatement (sqlInsert);
            ps.setString (1, name);
            ps.setString(2,email);
            ps.setString(3,birthday);
            ps.setString(4,gender);
            ps.setString(5,password);
            ps.setString(6,"index.jsp");
            ps.executeUpdate();
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
           out.println("alert('Daftar Akaun Berjaya');");
           out.println("location='login.jsp';");
           out.println("</script>");
           
        }
  

         
          }
      
    
 
        
       catch (SQLException e) {
            e.printStackTrace();
        }
       
         
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
