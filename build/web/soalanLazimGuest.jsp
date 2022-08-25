
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

        <%@include file= "Asset/NavbarGuest.jsp"%>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content" >
                <%@include file= "Asset/HeaderGuest.jsp"%>
                <!-- Begin Page Content -->
                <br><br>
                <div class="container-fluid">
                   <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h2 class="m-0 font-weight-bold text-primary text-center">Soalan Lazim</h2>
                        </div>
                        <div class="card-body">
                            <h6><strong>1. Apa yang perlu saya lakukan untuk mencuba penilaian?</strong></h6><br>
                            <h6>- Anda dikehendaki log masuk dalam sistem untuk mencuba penilaian. Jika tidak ada akaun, anda perlu daftar akaun baru.</h6><br>
                            <h6><strong>2. Berapa kali saya boleh mencuba penilaian formatif dan sumatif?</strong></h6><br>
                            <h6>- Semua penilaian terhad kepada 3 cubaan sahaja. Anda tidak boleh mencuba lebih daripada 3 kali.</h6><br>
                            <h6><strong>3. Saya sudah mencuba penilaian tetapi saya belum bersedia untuk menjawab dan saya mahu menyemak subtopik semula. Apa yang boleh saya lakukan?</strong></h6><br>
                            <h6>- Di halaman penilaian terdapat butang untuk batal penilaian. Anda boleh klik butang batal dan anda akan diarahkan ke halaman penilaian.</h6><br>
                            <h6><strong>4. Di manakah saya boleh menyemak jawapan untuk penilaian yang saya sudah mencuba?</strong></h6><br>
                            <h6>- Anda boleh menymak jawapan untuk penilaian yang sudah mencuba di halaman prestasi.</h6><br>
                            <h6><strong>5. Apakah perbezaan antara penilaian formatif dan penilaian sumatif?</strong></h6><br>
                            <h6>- Penilaian formatif adalah seperti kuiz untuk setiap subtopik. Tetapi penilaian sumatif adalah seperti peperiksaan untuk semua subtopik.</h6><br>
                            
                        </div>
                   </div>
                </div
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