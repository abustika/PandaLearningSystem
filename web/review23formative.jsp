<%-- 
    Document   : review23formative
    Created on : Nov 29, 2020, 2:03:23 AM
    Author     : User
--%>

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

                <% jdbcUtility = new JDBCUtility(driver,
                                                  url,
                                                  userName,
                                                  password);

                    jdbcUtility.jdbcConnect();
                    con = jdbcUtility.jdbcGetConnection();
                    String email = (String) session.getAttribute("email");
                    Statement stmt=con.createStatement();
                    ResultSet rs = stmt.executeQuery("select * from formativeans3 where email='"+email+"' AND Id=(SELECT max(Id) FROM formativeans3 where email='"+email+"')");
                 %>
                 <!-- Answer Quiz-->
                <%  
                    int scoreF23 = 0; 
                    String res11 = "C. i, iii, ii, iv";
                    String res12 = "D. Borang Pinjaman dihasilkan daripada atribut2 dalam jadual Pinjaman.";
                    String res13 = "A. Mempamerkan borang dan jadual dalam Design view.";
                    String res14 = "B. Pada tab Borang Pinjaman, klik kanan dan pilih Close untuk menutup borang.";
                    String res15 = "D. Semua di atas.";
                 %>
                <!-- End of Declaration & DB Connection -->
                <!-- While -->
                <% while (rs.next()){%>
                
                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Start Table -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h2 class="m-0 font-weight-bold text-primary text-center">PRESTASI ANDA</h2>
                        </div>
                        <div class="table-responsive"><br>
                                <table class="table table-bordered" id="prestasiTable" style="margin-left: auto; margin-right: auto; width: 80%;">
                                    <tbody>
                                        <tr>
                                            <th class="text-white" style="background-color: #5fb404; text-align: center;">
                                                SOALAN 1
                                            </th>
                                            <td>
                                                Susunkan urutan untuk mencipta jadual hubungan.<br>
                                                i. Cipta jadual baharu<br> 
                                                ii. Set kunci primer<br>
                                                iii. Set jenis data<br>
                                                iv. Membina hubungan antara jadual-jadual
                                            </td>
                                        </tr>
                                        <tr>
                                            <th style="background-color: whitesmoke; text-align: center;">
                                                JAWAPAN 
                                            </th>
                                            <td>
                                                <%String a = rs.getString("ques1");
                                                  out.println(a);
                                                  if (a.equals(res11)){%>
                                                  <br><p style="color: #169b6b; font:300 "> BETUL!</p>
                                                  <% scoreF23 = scoreF23+1;
                                                  }
                                                  else {%>
                                                  <br><p style="color:red"> SALAH! Jawapan yang tepat adalah :- </p>
                                                  <% out.println(res11);}%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="text-white" style="background-color: #5fb404; text-align: center;">
                                                SOALAN 2
                                            </th>
                                            <td>
                                                Daripada kenyataan – kenyataan yang diberi, pilihkan kenyataan yang salah bagi kegunaan borang yang berkaitan dengan kandungan jadual dalam pangkalan data.
                                            </td>
                                        </tr>
                                        <tr>
                                            <th style="background-color: whitesmoke; text-align: center;">
                                                JAWAPAN 
                                            </th>
                                            <td>
                                                <%String b = rs.getString("ques2");
                                                  out.println(b);
                                                  if (b.equals(res12)){%>
                                                  <br><p style="color: #169b6b; font:300 "> BETUL!</p>
                                                  <% scoreF23 = scoreF23+1;
                                                  }
                                                  else {%>
                                                  <br><p style="color:red"> SALAH! Jawapan yang tepat adalah :- </p>
                                                  <% out.println(res12);}%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="text-white" style="background-color: #5fb404; text-align: center;">
                                                SOALAN 3
                                            </th>
                                            <td>
                                                Pilihkan kenyataan yang benar tentang ‘split form’.
                                            </td>
                                        </tr>
                                        <tr>
                                            <th style="background-color: whitesmoke; text-align: center;">
                                                JAWAPAN 
                                            </th>
                                            <td>
                                                <%String c = rs.getString("ques3");
                                                  out.println(c);
                                                  if (c.equals(res13)){%>
                                                  <br><p style="color: #169b6b; font:300 "> BETUL!</p>
                                                  <% scoreF23 = scoreF23+1;
                                                  }
                                                  else {%>
                                                  <br><p style="color:red"> SALAH! Jawapan yang tepat adalah :- </p>
                                                  <% out.println(res13);}%>
                                            </td>
                                            <tr>
                                            <th class="text-white" style="background-color: #5fb404; text-align: center;">
                                                SOALAN 4
                                            </th>
                                            <td>
                                                Daripada pilihan jawapan yang diberikan, pilihkan jawapan yang bukan Langkah untuk menggunakan Query Wizard.
                                            </td>
                                        </tr>
                                        <tr>
                                            <th style="background-color: whitesmoke; text-align: center;">
                                                JAWAPAN 
                                            </th>
                                            <td>
                                                <%String d = rs.getString("ques4");
                                                  out.println(d);
                                                  if (d.equals(res14)){%>
                                                  <br><p style="color: #169b6b; font:300 "> BETUL!</p>
                                                  <% scoreF23 = scoreF23+1;
                                                  }
                                                  else {%>
                                                  <br><p style="color:red"> SALAH! Jawapan yang tepat adalah :- </p>
                                                  <% out.println(res14);}%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th class="text-white" style="background-color: #5fb404; text-align: center;">
                                                SOALAN 5
                                            </th>
                                            <td>
                                                Query boleh digunakan untuk menjana laporan. Laporan menerbitkan data dalam format yang lebih mudah difahami supaya dapat ______________.
                                            </td>
                                        </tr>
                                        <tr>
                                            <th style="background-color: whitesmoke; text-align: center;">
                                                JAWAPAN 
                                            </th>
                                            <td>
                                                <%String e = rs.getString("ques5");
                                                  out.println(e);
                                                  if (e.equals(res15)){%>
                                                  <br><p style="color: #169b6b; font:300 "> BETUL!</p>
                                                  <% scoreF23 = scoreF23+1;
                                                  }
                                                  else {%>
                                                  <br><p style="color:red"> SALAH! Jawapan yang tepat adalah :- </p>
                                                  <% out.println(res15);}%>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <h5 style="text-align: center" class="m-0 font-weight-bold text-primary text-center">
                                                    Markah anda adalah <% out.print(scoreF23); %> / 5
                                                </h5>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table><br>
                                <center><a style="width: 80%;" class="btn btn-primary" href="tables.jsp" role="button">Kembali</a></center><br>
                            </div>
                       
                    </div>    
                    <!-- End Table -->
                </div>
                <% } %>
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
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>

</html>    
