<%-- 
    Document   : soalan_sumatif
    Created on : Dec 10, 2020, 6:12:48 PM
    Author     : aisrha
--%>

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


        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content" >

            <%@include file= "Asset/Header.jsp"%>
                
                <!-- Begin Page Content -->
                <div class="container-fluid">
                    
                   <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h5 class="m-0 font-weight-bold text-primary text-left">Penilaian Sumatif</h5>
                        </div>
                        <div class="card-body">
                            
                            <form method="post" action="SumatifServlet">
                                <p>1. ________ ialah kategori maklumat dalam sesuatu pangkalan data.</p>
                                <input type="radio" name="ques1" value="A. Kunci primer" required="required"> A. Kunci primer<br>
                                <input type="radio" name="ques1" value="B. Kunci asing" required="required"> B. Kunci asing<br>
                                <input type="radio" name="ques1" value="C. Rekod" required="required"> C. Rekod<br>
                                <input type="radio" name="ques1" value="D. Atribut" required="required"> D. Atribut<br><br> <!--answer-->
                                
                                <p>2. Atribut yang mempunyai nilai unik bagi setiap rekod dalam pangkalan data dikenali sebagai _______________.</p>
                                <input type="radio" name="ques2" value="A. Jenis data" required="required"> A. Jenis data<br>
                                <input type="radio" name="ques2" value="B. Kunci primer" required="required"> B. Kunci primer<br> <!--answer-->
                                <input type="radio" name="ques2" value="C. Kunci asing" required="required"> C. Kunci asing<br>
                                <input type="radio" name="ques2" value="D. Atribut" required="required"> D. Atribut<br><br>
                                
                                <p>3. Sistem pengurusan pangkalan data (DBMS) mempunyai operasi yang berikut kecuali ______________. </p>
                                <input type="radio" name="ques3" value="A. memasukkan data" required="required"> A. memasukkan data<br>
                                <input type="radio" name="ques3" value="B. melihat data" required="required"> B. melihat data<br>
                                <input type="radio" name="ques3" value="C. carian data" required="required"> C. carian data<br>
                                <input type="radio" name="ques3" value="D. mengekstrapolasi data" required="required"> D. mengekstrapolasi data<br><br> <!--answer-->
                                
                                <p>4. _________ ialah model data yang digunakan untuk reka bentuk konsep pangkalan data dengan menunjukkan hubungan antara entiti.</p>
                                <input type="radio" name="ques4" value="A. Model Hubungan Entiti" required="required"> A. Model Hubungan Entiti<br> <!--answer-->
                                <input type="radio" name="ques4" value="B. Model data rangkaian" required="required"> B. Model data rangkaian<br>
                                <input type="radio" name="ques4" value="C. Model data hierarki" required="required"> C. Model data hierarki<br>
                                <input type="radio" name="ques4" value="D. Model data rasional" required="required"> D. Model data rasional<br><br>
                                
                                <p>5. Yang manakah pernyataan yang BETUL bagi aktiviti-aktiviti seperti menambah, meminda dan memadamkan rekod daripada sesebuah fail?</p>
                                <input type="radio" name="ques5" value="A. pengesahsahihan" required="required"> A. pengesahsahihan<br>
                                <input type="radio" name="ques5" value="B. semakan julat" required="required"> B. semakan julat<br>
                                <input type="radio" name="ques5" value="C. penyenggaraan fail" required="required"> C. penyenggaraan fail<br> <!--answer-->
                                <input type="radio" name="ques5" value="D. penormalan" required="required"> D. penormalan<br><br>
                                
                                
                                <div class="text-center" >
                                    <input class="btn btn-primary" type="submit" value="Hantar" />
                                    <a class="btn btn-outline-primary" href="PeperiksaanSumatif.jsp" role="button">Batal</a>
                                </div>
                                
                            </form>
                            <br>
                           
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

