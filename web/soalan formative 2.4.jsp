<%-- 
    Document   : soalan formative 2.1
    Created on : Nov 24, 2020, 2:52:19 PM
    Author     : User
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
                            <h5 class="m-0 font-weight-bold text-primary text-left">Penilaian Formatif: 2.4 Pembangunan Sistem Pangkalan Data</h5>
                        </div>
                        <div class="card-body">
                            
                            <form method="get" action="formative24servlet">
                                <p>1. Susunkan fasa - fasa pembangunan pangkalan data untuk sistem maklumat.</p>
                                <p>i.  Mereka Bentuk<br>
                                ii.  Menyelenggara<br>
                                iii. Membina<br>
                                iv.  Merancang & Menganalisis</p>
                                <input type="radio" name="ques1" value="A. i,ii,iii,iv" required="required"> A. i,ii,iii,iv<br>
                                <input type="radio" name="ques1" value="B. ii,iii,i,iv" required="required"> B. ii,iii,i,iv<br>
                                <input type="radio" name="ques1" value="C. iv,i,iii,ii" required="required"> C. iv,i,iii,ii<br>
                                <input type="radio" name="ques1" value="D. iii,iv,i,ii" required="required"> D. iii,iv,i,ii<br><br>
                                
                                <p>2. Pangkalan data yang disimpan dalam komputer munggunakan aplikasi pangkalan data yang dinamakan ________.</p>
                                <input type="radio" name="ques2" value="A. pangkalan data bermaklumat" required="required"> A. pangkalan data bermaklumat<br>
                                <input type="radio" name="ques2" value="B. pangkalan data berteknologi" required="required"> B. pangkalan data berteknologi<br>
                                <input type="radio" name="ques2" value="C. pangkalan data berkomputer" required="required"> C. pangkalan data berkomputer<br><br>
                                
                                <p>3. Pernyataan ________ digunakan untuk mencapai data daripada jadual dalam pangkalan data.</p>
                                <input type="radio" name="ques3" value="A. SELECT" required="required"> A. SELECT<br>
                                <input type="radio" name="ques3" value="B. GROUP BY" required="required"> B. GROUP BY<br>
                                <input type="radio" name="ques3" value="C. ORDER BY" required="required"> C. ORDER BY <br>
                                <input type="radio" name="ques3" value="D. DELETE" required="required"> D. DELETE<br><br>
                                
                                <p>4. Yang berikut ialah tatacara pengesahsahihan data KECUALI.</p>
                                <input type="radio" name="ques4" value="A. semakan ketekalan" required="required"> A. semakan ketekalan<br>
                                <input type="radio" name="ques4" value="B. semakan penormalan" required="required"> B. semakan penormalan<br>
                                <input type="radio" name="ques4" value="C. semakan julat" required="required"> C. semakan julat<br>
                                <input type="radio" name="ques4" value="D. semakan kesempurnaan" required="required"> D. semakan kesempurnaan<br><br>
                                
                                <p>5. Pernyataan _________ table dalam SQL digunakan untuk menghapuskan jadual daripada pangkalan data.</p>
                                <input type="radio" name="ques5" value="A. DROP" required="required"> A. DROP<br>
                                <input type="radio" name="ques5" value="B. SELECT" required="required"> B. SELECT<br>
                                <input type="radio" name="ques5" value="C. DELETE" required="required"> C. DELETE<br>
                                <input type="radio" name="ques5" value="D. ADD" required="required"> D. ADD<br><br>
                                
                                <div class="text-center" >
                                    <input class="btn btn-primary" type="submit" value="Hantar" />
                                    <a class="btn btn-outline-primary" href="2.4 uji diri.jsp" role="button">Batal</a>
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
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>
</html>

