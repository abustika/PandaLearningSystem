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
                            <h5 class="m-0 font-weight-bold text-primary text-left">Maklum Balas Pan-Da Learning</h5>
                        </div>
                        <div class="card-body">
                            
                            <form method="get" action="feedback">
                                <p>1. Bagaimana anda menilai sistem kami pada skala 1 hingga 5?</p>
                                <input type="radio" name="ques1" value="1" required="required"> 1
                                <input type="radio" name="ques1" value="2" required="required"> 2
                                <input type="radio" name="ques1" value="3" required="required"> 3
                                <input type="radio" name="ques1" value="4" required="required"> 4
                                <input type="radio" name="ques1" value="5" required="required"> 5<br><br>
                                
                                <p>2. Adakah sistem Pan-Da Learning mudah untuk menavigasi dan menggunakan?</p>
                                <input type="radio" name="ques2" value="Ya" required="required"> Ya<br>
                                <input type="radio" name="ques2" value="Tidak" required="required"> Tidak<br><br>
                                
                                <p>3. Adakah anda berpuas hati dengan sistem Pan-Da Learning?</p>
                                <input type="radio" name="ques3" value="Ya" required="required"> Ya<br>
                                <input type="radio" name="ques3" value="Tidak" required="required"> Tidak<br>
                                <input type="radio" name="ques3" value="Mungkin" required="required"> Mungkin<br><br>
                                
                                <p>4. Adakah anda mempunyai cadangan untuk memperbaiki sistem Pan-Da Learning?</p>
                                <textarea rows="4" cols="50" name="ques4" required="required"></textarea><br/>
                                <sub>**Tidak melebihi 250 perkataan.</sub><br/>
                                
                                <div class="text-center" >
                                    <input class="btn btn-primary" type="submit" value="Hantar" />
                                    <a class="btn btn-outline-primary" href="index.jsp" role="button">Batal</a>
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


