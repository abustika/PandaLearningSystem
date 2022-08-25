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
@WebServlet(name = "editProfileServlet", urlPatterns = {"/editProfileServlet"})
public class editProfileServlet extends HttpServlet {
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
        String newName = request.getParameter("name");
        String  newBirthday = request.getParameter ("birthday");
        String newGender = request.getParameter ("gender");
        
       
       
       try
    {
  
        
        //Get the session data from the session object
        String email = (String) session.getAttribute("email");
                
         // String sqlInsert ="UPDATE user SET password='123' where email=?";
         
            String sqlInsert ="UPDATE user SET birthday='"+newBirthday+"',name='"+newName+"',gender='"+newGender+"' where email=?";
           
             // user(name,email,birthday,gender,password) VALUES(?,?,?,?,?)
              PreparedStatement ps = con.prepareStatement (sqlInsert);
              ps.setString(1,email);
              ps.executeUpdate();
                
              
             PrintWriter out = response.getWriter();
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Kemas Kini Berjaya!');");
             out.println("location='profile.jsp';");
             out.println("</script>");

             
  

         
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
