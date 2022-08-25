package summative;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import jdbc.JDBCUtility;

/**
 *
 * @author aisrha
 */
public class SumatifServlet extends HttpServlet {

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
     
        // GET data form from soalan_sumatif.jsp
        String ques1 = request.getParameter("ques1");
        String ques2 = request.getParameter("ques2");
        String ques3 = request.getParameter("ques3");
        String ques4 = request.getParameter("ques4");
        String ques5 = request.getParameter("ques5");
        
        int scoreSumatif = 0; 
        String res11 = "D. Atribut";
        String res12 = "B. Kunci primer";
        String res13 = "D. mengekstrapolasi data";
        String res14 = "A. Model Hubungan Entiti";
        String res15 = "C. penyenggaraan fail";
        
         try {
             
            if (ques1.equals(res11)){
                scoreSumatif = scoreSumatif + 1;
            }
            if (ques2.equals(res12)){
                scoreSumatif = scoreSumatif + 1;
            }
            if (ques3.equals(res13)){
                scoreSumatif = scoreSumatif + 1;
            }
            if (ques4.equals(res14)){
                scoreSumatif = scoreSumatif + 1;
            }
            if (ques5.equals(res15)){
                scoreSumatif = scoreSumatif + 1;
            }
             
            String sqlInsert = "INSERT INTO sumatifstudentanswer(email, ques1, ques2, ques3, ques4, ques5, scoresumatif) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement (sqlInsert);
            ps.setString (1, email);
            ps.setString (2, ques1);
            ps.setString (3, ques2);
            ps.setString (4, ques3);
            ps.setString (5, ques4);
            ps.setString (6, ques5);
            ps.setInt (7, scoreSumatif);
            ps.executeUpdate();
        }
        
        catch(SQLException ex){
        }
        
        response.sendRedirect (request.getContextPath() + "/result_sumatif.jsp");
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