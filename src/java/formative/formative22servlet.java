package formative;

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

@WebServlet(name = "formative22servlet", urlPatterns = {"/formative22servlet"})
public class formative22servlet extends HttpServlet {
    
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
        String ques5 = request.getParameter("ques5");
        
        int scoreF22 = 0;
        String res11 = "D. ii, iii, i";
        String res12 = "A. Untuk menghasilkan hubungan di antara dua jadual, jadual yang ingin mewujudkan hubungan akan menambahkan atribut kunci primer daripada jadual sasaran sebagai kunci asing.";
        String res13 = "C. Entiti ini wujud dengan tidak bergantung pada entiti yang lain.";
        String res14 = "A. Berlaku apabila atribut2 bergantung kepada atribut biasa yang lain dalam jadual.";
        String res15 = "D. BUKU PINJAMAN (Kod Buku , Nama Buku, Pengarang, (ID Murid , Nama Murid, No Telefon Bimbit), Tarikh Pinjam, Tarikh Hantar)";
        
         try{
             if (ques1.equals(res11)){
                scoreF22 = scoreF22 + 1;
            }
            if (ques2.equals(res12)){
                scoreF22 = scoreF22 + 1;
            }
            if (ques3.equals(res13)){
                scoreF22 = scoreF22 + 1;
            }
            if (ques4.equals(res14)){
                scoreF22 = scoreF22 + 1;
            }
            if (ques5.equals(res15)){
                scoreF22 = scoreF22 + 1;
            }
            
            String sqlInsert = "INSERT INTO formativeans2(email, ques1, ques2, ques3, ques4, ques5, scoref22) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement (sqlInsert);
            ps.setString (1, email);
            ps.setString (2, ques1);
            ps.setString (3, ques2);
            ps.setString (4, ques3);
            ps.setString (5, ques4);
            ps.setString (6, ques5);
            ps.setInt (7, scoreF22);
            ps.executeUpdate();
           
        }
        
        catch(SQLException ex){
            
        }
            response.sendRedirect (request.getContextPath() + "/result Formative 2.2.jsp");
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
