<%-- 
    Document   : tables
    Created on : Dec 14, 2020, 1:55:16 PM
    Author     : User
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdbc.JDBCUtility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Pan-Da Learning</title>

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <%@include file= "Asset/Navbar.jsp"%>


        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content" >

            <%@include file= "Asset/Header.jsp"%>
                
                <!-- Begin Page Content -->
                <!-- End of Topbar -->
                <!-- Declaration & DB Connection -->
                <%!
                    private JDBCUtility jdbcUtility;
                    private Connection con;

                    String driver = "com.mysql.jdbc.Driver";

                    String dbName = "pandasystem";
                    String url = "jdbc:mysql://localhost/" + dbName + "?";
                    String userName = "root";
                    String password = "";
                %>

                <% 
                    int totalScore = 0;
                    int scorefor21 = 0;
                    int scorefor22 = 0;
                    int scorefor23 = 0;
                    int scorefor24 = 0;
                    int scoresmtv = 0;
                    
                    jdbcUtility = new JDBCUtility(driver,
                                                  url,
                                                  userName,
                                                  password);

                    jdbcUtility.jdbcConnect();
                    con = jdbcUtility.jdbcGetConnection();
                    String email = (String) session.getAttribute("email");
                    
                    Statement stmt1=con.createStatement();
                    Statement stmt2=con.createStatement();
                    Statement stmt3=con.createStatement();
                    Statement stmt4=con.createStatement();
                    Statement stmtsum=con.createStatement();

                    ResultSet score1 = stmt1.executeQuery("select scoref21 from formativeans1 where email='"+email+"' AND Id=(SELECT max(Id) FROM formativeans1 where email='"+email+"')");
                    ResultSet score2 = stmt2.executeQuery("select scoref22 from formativeans2 where email='"+email+"' AND Id=(SELECT max(Id) FROM formativeans2 where email='"+email+"')");
                    ResultSet score3 = stmt3.executeQuery("select scoref23 from formativeans3 where email='"+email+"' AND Id=(SELECT max(Id) FROM formativeans3 where email='"+email+"')");
                    ResultSet score4 = stmt4.executeQuery("select scoref24 from formativeans4 where email='"+email+"' AND Id=(SELECT max(Id) FROM formativeans4 where email='"+email+"')");
                    ResultSet scoresum = stmtsum.executeQuery("select scoresumatif from sumatifstudentanswer where email='"+email+"' AND Id=(SELECT max(Id) FROM sumatifstudentanswer where email='"+email+"')");
                    
                 %>
                 
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Start table -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h2 class="m-0 font-weight-bold text-primary text-center">PRESTASI ANDA</h2>
                        </div>
                        <div class="table-responsive"><br>
                                <table class="table table-bordered text-center" id="prestasiTable" style="margin-left: auto; margin-right: auto; width: 80%;">
                                    <thead>
                                        <tr class="text-white" style="background-color: #5fb404; text-align: center">
                                            <th>JENIS UJIAN</th>
                                            <th>MARKAH UJIAN</th>
                                        </tr>
                                    </thead>
                                    <tbody>
<!---------------------------------------------- Formative 2.1---------------------------------------------->
                                        <%
                                            if (score1.next() == true){
                                        %>
                                        <tr>
                                            <td> 
                                                <b class="hover"><a href="review21formative.jsp">Ujian Diri 2.1 Pangkalan Data dan Hubungan</a></b>
                                            </td>
                                            <td style="text-align: center">
                                            <% 
                                                String a = score1.getString("scoref21");
                                                int scf21 = score1.getInt("scoref21");
                                                scorefor21 = scf21;
                                                out.println(a +" / 5"); 
                                            %>
                                                   
                                            </td>
                                        </tr>
                                        <% }
                                            
                                            else if (score1.next() == false){
                                        %>
                                        <tr>
                                            <td> 
                                                <b class="hover"><a href="2.1 uji diri.jsp">Ujian Diri 2.1 Pangkalan Data dan Hubungan</a></b>
                                            </td>
                                            <td style="text-align: center">Tiada cubaan</td>
                                        </tr>
                                          <% }%>
<!---------------------------------------------- End Formative 2.1---------------------------------------------->
<!---------------------------------------------- Formative 2.2---------------------------------------------->
                                        <%
                                            if (score2.next() == true){
                                        %>
                                        <tr>
                                            <td>
                                                <b class="hover"><a href="review22formative.jsp">Ujian Diri 2.2 Reka Bentuk Pangkalan Data dan Hubungan</a></b>
                                            </td>
                                            <td style="text-align: center">
                                            <% 
                                                String b = score2.getString("scoref22");
                                                int scf22 = score2.getInt("scoref22");
                                                scorefor22 = scf22;
                                                out.println(b +" / 5"); 
                                            %>
                                            </td>
                                        </tr>
                                        <% }
                                            else if (score2.next() == false){
                                        %>
                                        <tr>
                                            <td>
                                                <b class="hover"><a href="2.2 uji diri.jsp">Ujian Diri 2.2 Reka Bentuk Pangkalan Data dan Hubungan</a></b>
                                            </td>
                                            <td style="text-align: center">Tiada cubaan</td>
                                        </tr>
                                        <% } %>
<!---------------------------------------------- End Formative 2.2 ---------------------------------------------->
<!---------------------------------------------- Formative 2.3 ---------------------------------------------->
                                        <%
                                            if (score3.next() == true){
                                        %>
                                            <td>
                                                <b class="hover"><a href="review23formative.jsp">Ujian Diri 2.3 Pembangunan Pangkalan Data dan Hubungan</a></b>
                                            </td>                                            
                                            <td style="text-align: center">
                                                <% 
                                                   String c = score3.getString("scoref23");
                                                   int scf23 = score3.getInt("scoref23");
                                                   scorefor23 = scf23;
                                                   out.println(c +" / 5"); %>
                                            </td>  
                                        </tr>
                                        <% }
                                            else if (score3.next() == false){
                                        %>
                                            <td>
                                                <b class="hover"><a href="2.3 uji diri.jsp">Ujian Diri 2.3 Pembangunan Pangkalan Data dan Hubungan</a></b>
                                            </td>                                            
                                            <td style="text-align: center">Tiada cubaan</td>  
                                        </tr>
                                        <% }%>
<!---------------------------------------------- End Formative 2.3 ---------------------------------------------->
<!---------------------------------------------- Formative 2.4 ---------------------------------------------->
                                        <%
                                            if (score4.next() == true){
                                        %>
                                        <tr>
                                            <td>
                                                <b class="hover"><a href="review24formative.jsp">Ujian Diri 2.4 Pembangunan System Pangkalan Data dan Hubungan</a></b>
                                            </td>
                                            <td style="text-align: center">
                                                <% 
                                                   String f = score4.getString("scoref24");
                                                   int scf24 = score4.getInt("scoref24");
                                                   scorefor24 = scf24;
                                                   out.println(f +" / 5"); %>
                                            </td>
                                        </tr>
                                        <% }
                                            else if (score4.next() == false){
                                        %>
                                        <tr>
                                            <td>
                                                <b class="hover"><a href="2.4 uji diri.jsp">Ujian Diri 2.4 Pembangunan System Pangkalan Data dan Hubungan</a></b>
                                            </td>
                                            <td style="text-align: center">Tiada cubaan</td>
                                        </tr>
                                        <% }%>
<!---------------------------------------------- End Formative 2.4 ---------------------------------------------->
<!---------------------------------------------- Summative ---------------------------------------------->
                                        <%
                                            if (scoresum.next() == true){
                                        %>
                                        <tr>
                                            <td>
                                                <b class="hover"><a href="reviewSumatif.jsp">Ujian Sumatif</a></b>
                                            </td>
                                            <td style="text-align: center">
                                                <% 
                                                   String e = scoresum.getString("scoresumatif");
                                                   int scoresumat = scoresum.getInt("scoresumatif");
                                                   scoresmtv = scoresumat;
                                                   out.println(e +" / 5"); %>
                                            </td>
                                        </tr>
                                        <% }
                                            else if (scoresum.next() == false){
                                        %>
                                        <tr>
                                            <td>
                                                <b class="hover"><a href="PeperiksaanSumatif.jsp">Ujian Sumatif</a></b>
                                            </td>
                                            <td style="text-align: center">Tiada cubaan</td>
                                        </tr>
                                        <% }%>
<!---------------------------------------------- End Summative ---------------------------------------------->
                                    </tbody>
                                </table>
<center><sub>**Markah dan semakan jawapan yang dipaparkan adalah untuk cubaan terkini sahaja. </sub></center><br><br>
                                <table class="table table-bordered text-center" id="tahapKefahamanTable" style="margin-left: auto; margin-right: auto; width: 80%;">
                                    <thead>
                                        <tr class="text-white" style="background-color: #5fb404; text-align: center">
                                            <th>JENIS UJIAN</th>
                                            <th>TAHAP KEFAHAMAN</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                Ujian Diri 2.1 Pangkalan Data dan Hubungan
                                            </td>
                                            <td style="padding-top: 75px;" class="text-center" rowspan="4">
                                                <%
                                                totalScore = scorefor21 + scorefor22 + scorefor23 + scorefor24;
                                                if(totalScore>=0 && totalScore<=5){
                                                    out.println("<img src='img/trophy bronze.png' alt='image' width='35' height='35'/><br>");
                                                    out.println("Pemula");
                                                }
                                                else if(totalScore>=6 && totalScore<=10){
                                                    out.println("<img src='img/trophy silver.png' alt='image' width='35' height='35'/><br>");
                                                    out.println("Pertengahan");
                                                }
                                                else if(totalScore>=11 && totalScore<=15){
                                                    out.println("<img src='img/trophy gold.png' alt='image' width='35' height='35'/><br>");
                                                    out.println("Profesional");
                                                }
                                                out.println("<br>Jumlah skor = " + totalScore);
                                                %>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Ujian Diri 2.2 Reka Bentuk Pangkalan Data dan Hubungan
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Ujian Diri 2.3 Pembangunan Pangkalan Data dan Hubungan
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Ujian Diri 2.4 Pembangunan System Pangkalan Data dan Hubungan
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Ujian Sumatif
                                                
                                            </td>
                                            <td class="text-center">
                                                <%
                                                if(scoresmtv<=2){
                                                    out.println("<img src='img/trophy bronze.png' alt='image' width='35' height='35'/><br>");
                                                    out.println("Pemula");
                                                }
                                                else if(scoresmtv>=3 && scoresmtv<=4){
                                                    out.println("<img src='img/trophy silver.png' alt='image' width='35' height='35'/><br>");
                                                    out.println("Pertengahan");
                                                }
                                                else if(scoresmtv==5){
                                                    out.println("<img src='img/trophy gold.png' alt='image' width='35' height='35'/><br>");
                                                    out.println("Profesional");
                                                }
                                                out.println("<br>Jumlah skor = " + scoresmtv);
                                                %>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table><br>
                                <hr class="sidebar-divider my-0">
                                <div class="card-body">
                                    <h5>Catatan :</h5><br>
                                    <img src='img/trophy gold.png' alt='image' width='35' height='35'/> <b>Profesional</b> 
                                    <p>Tahniah, penguasaan anda dalam topik ini sangat baik<br>
                                        <sub>Peratusan tahap kefahaman adalah 100%</sub></p>
                                    <img src='img/trophy silver.png' alt='image' width='35' height='35'/> <b>Pertengahan</b> 
                                    <p>Penguasaan anda adalah baik, teruskan usaha untuk mendapat tahap yang terbaik<br>
                                        <sub>Peratusan tahap kefahaman adalah antara tidak melebihi 80%</sub></p> 
                                    <img src='img/trophy bronze.png' alt='image' width='35' height='35'/> <b>Pemula</b> 
                                    <p>Anda perlu memberi penekanan kefahaman terhadap topik ini lebih. Teruskan usaha anda dan jangan mengalah<br>
                                        <sub>Peratusan tahap kefahaman adalah tidak melebihi 40%</sub></p>
                                    
                                </div>
                                
                            </div>
                                    
                                            
                    </div>
                    <!-- End tablec -->
                    
                    

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <%@include file= "Asset/Footer.jsp"%>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.jsp">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>
