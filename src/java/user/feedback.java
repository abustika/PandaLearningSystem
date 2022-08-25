package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import jdbc.JDBCUtility;

@WebServlet(name = "feedback", urlPatterns = {"/feedback"})
public class feedback extends HttpServlet {
    
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
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        
        //GET data form 
        String ques1 = request.getParameter("ques1");
        String ques2 = request.getParameter("ques2");
        String ques3 = request.getParameter("ques3");
        String ques4 = request.getParameter("ques4");
        
         try{
            
            String sqlInsert = "INSERT INTO feedback(email, ques1, ques2, ques3, ques4) VALUES (?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement (sqlInsert);
            ps.setString (1, email);
            ps.setString (2, ques1);
            ps.setString (3, ques2);
            ps.setString (4, ques3);
            ps.setString (5, ques4);
            ps.executeUpdate();
           
        }
        
        catch(SQLException ex){
            
        }
            PrintWriter out = response.getWriter();
            out.println("<script type=\"text/javascript\">");
           out.println("alert('Maklum balas berjaya dihantar');");
           out.println("location='index.jsp';");
           out.println("</script>");
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
