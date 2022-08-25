<%-- 
    Document   : soalan formative 2.1
    Created on : Nov 24, 2020, 2:52:19 PM
    Author     : User
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="jdbc.JDBCUtility"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Pan-Da Learning</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link rel="stylesheet" href="scss/navs/_sidebar.scss" type="text/css"/>
    <link rel="stylesheet" href="scss/navs/_sidebar.scss" type="text/css">
    
    </head>
        <body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <%@include file= "Asset/Navbar.jsp"%>

        <%!
                   private JDBCUtility jdbcUtility;
                   private Connection con;
                   
                   String driver = "com.mysql.jdbc.Driver";

                    String dbName = "pandasystem";
                    String url = "jdbc:mysql://localhost/" + dbName + "?";
                    String userName = "root";
                    String password = "";
                    
                    int totalScore = 0;
                    int scorefor21 = 0;
                    int scorefor22 = 0;
                    int scorefor23 = 0;
                    int scorefor24 = 0;
                    int scoresmtv = 0;
                %>
                
                <% jdbcUtility = new JDBCUtility(driver,
                                                  url,
                                                  userName,
                                                  password);

                    jdbcUtility.jdbcConnect();
                    con = jdbcUtility.jdbcGetConnection();
                   Statement stmt1=con.createStatement();
                   Statement stmt2=con.createStatement();
                   Statement stmt3=con.createStatement();
                   Statement stmt4=con.createStatement();
                   Statement stmtsum=con.createStatement();
                  ResultSet score1 = stmt1.executeQuery("select scoref21 from formativeans1 where Id=(SELECT max(Id) FROM formativeans1)");
                  ResultSet score2 = stmt2.executeQuery("select scoref22 from formativeans2 where Id=(SELECT max(Id) FROM formativeans2)");
                  ResultSet score3 = stmt3.executeQuery("select scoref23 from formativeans3 where Id=(SELECT max(Id) FROM formativeans3)");
                  ResultSet scoresum = stmtsum.executeQuery("select scoresumatif from sumatifstudentanswer where Id=(SELECT max(Id) FROM sumatifstudentanswer)");
                 %>
                 
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content" >

            <%@include file= "Asset/Header.jsp"%>
                
                <!-- Begin Page Content -->
                <div class="container-fluid">
                   <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h2 class="m-0 font-weight-bold text-primary text-center">Penilaian Formatif</h2>
                        </div>
                        <div class="card-body">
                            <h4 class="text-center"><strong>TAHNIAH!</h4><br><br>
                            <h5 class="text-center"><strong>
                                                   
                                                    <% while (score3.next()){
                                                   String a = score3.getString("scoref23");
                                                   int scf23 = score3.getInt("scoref23");
                                                   scorefor23 = scf23;
                                                   if(scorefor23>=0 && scorefor23<=2){
                                                    out.println("<br><img src='img/trophy bronze.png' alt='image' width='100' height='100'/><br>");
                                                    }
                                                    else if(scorefor23>=3 && scorefor23<=4){
                                                        out.println("<br><img src='img/trophy silver.png' alt='image' width='100' height='100'/><br>");
                                                    }
                                                    else if(scorefor23==5){
                                                        out.println("<br><img src='img/trophy gold.png' alt='image' width='100' height='100'/><br>");
                                                    }
                                                   out.println("Markah anda ialah : <br>");
                                                   out.println(a +" / 5"); }%></strong></h5><br>
                            
                            <br>            
                            <div class="text-center" >
                            <a class="btn btn-primary" href="tables.jsp" role="button">Lihat Prestasi Anda</a>
                            <a class="btn btn-primary" href="review23formative.jsp" role="button">Semak Jawapan</a>
                            </div>
                            <br>
                            <div class="text-center" >
                            <a class="btn btn-outline-primary" href="formative23attempt" role="button">Cuba Lagi</a>
                            </div>
                           
                        </div>
                   </div>
                </div>
                <!-- End of Topbar -->
            </div>
            
            
            <!--<img src="img/Panda Logo.png" alt=""/>  -->
            <%@include file= "Asset/Footer.jsp"%>


        
        </div>
    <!-- End of Content Wrapper -->

    <div
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
                    <a class="btn btn-primary" href="login.html">Logout</a>
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
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>
</html>



