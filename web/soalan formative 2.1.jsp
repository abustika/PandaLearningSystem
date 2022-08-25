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
                            <h5 class="m-0 font-weight-bold text-primary text-left">Penilaian Formatif: 2.1 Pangkalan Data</h5>
                        </div>
                        <div class="card-body">
                            
                            <form method="post" action="formative21servlet">
                                <p>1. Pilihkan entiti yang bersesuaian untuk pangkalan data dalam persekitaran sekolah.</p>
                                <p>i.  guru<br>
                                ii.  murid<br>
                                iii. mata pelajaran<br>
                                iv.  doktor</p>
                                <input type="radio" name="ques1" value="A. i dan ii" required="required"> A. i dan ii<br>
                                <input type="radio" name="ques1" value="B. i,ii dan iii" required="required"> B. i,ii dan iii<br>
                                <input type="radio" name="ques1" value="C. i dan iv" required="required"> C. i dan iv<br>
                                <input type="radio" name="ques1" value="D. semua di atas" required="required"> D. semua di atas<br><br>
                                
                                <p>2. Pilihkan jawapan yang bersesuaian. Entiti subjek boleh mempunyai dua ‘induk’ iaitu entiti Kelas dan Murid. Pencarian semua Subjek dan Kelas tertentu boleh dibuat secara terus berbanding dengan model Hierarki. Apakah hubungan antara Murid dan Subjek?</p>
                                <input type="radio" name="ques2" value="A. Banyak ke banyak" required="required"> A. Banyak ke banyak<br>
                                <input type="radio" name="ques2" value="B. Banyak ke satu" required="required"> B. Banyak ke satu <br>
                                <input type="radio" name="ques2" value="C. Satu ke satu" required="required"> C. Satu ke satu<br>
                                <input type="radio" name="ques2" value="D. Tiada jawapan" required="required"> D. Tiada jawapan<br><br>
                                
                                <p>3. Diberikan nama murid seperti Arumugam, Boh Leng, Che Siti dan Iking. Pilihkan simbol entiti yang bersesuaian.</p>
                                <input type="radio" name="ques3" value="A. Bujur, Murid" required="required"> A. Bujur, Murid<br>
                                <input type="radio" name="ques3" value="B. Bujur, Arumugam" required="required"> B. Bujur, Arumugam<br>
                                <input type="radio" name="ques3" value="C. Segi empat tepat, Boh Leng" required="required"> C. Segi empat tepat, Boh Leng <br>
                                <input type="radio" name="ques3" value="D. Segi empat tepat, Murid" required="required"> D. Segi empat tepat, Murid<br><br>
                                
                                <p>4. Hubungan satu entiti dengan lebih daripada satu entiti yang lain. Pilihkan situasi yang sesuai bagi kerkardinalan tersebut.</p>
                                <input type="radio" name="ques4" value="A. Seorang warganegara mempunyai satu kad pengenalan sahaja." required="required"> A. Seorang warganegara mempunyai satu kad pengenalan sahaja.<br>
                                <input type="radio" name="ques4" value="B. Ramai pelanggan bagi sebuah pasar raya membeli pelbagai jenis barangan." required="required"> B. Ramai pelanggan bagi sebuah pasar raya membeli pelbagai jenis barangan.<br>
                                <input type="radio" name="ques4" value="C. Seorang murid boleh menyertai lebih daripada satu kelab di sekolah" required="required"> C. Seorang murid boleh menyertai lebih daripada satu kelab di sekolah.<br>
                                <input type="radio" name="ques4" value="D. Seorang doktor merawat seorang penyakit." required="required"> D. Seorang doktor merawat seorang penyakit.<br><br>
                                
                                <p>5. Pilihkan jawapan yang sesuai untuk situasi berikut. Tan mencatat nombor-nombor telefon pelanggannya di dalam dua buah buku iaitu diari dan buku nota secara berasingan. Sekiranya nombor telefon pelanggannya bertukar, Tan perlu mengemaskinikan nombor tersebut pada kedua-dua buah buku yang digunakannya. Apakah yang terjadi sekiranya Tan hanya mengemaskinikan nombor telefon pelanggan yang berubah hanya pada sebuah buku sahaja?</p>
                                <input type="radio" name="ques5" value="A. Data nombor telefon tersebut tidak akan hilang ketekalannya." required="required"> A. Data nombor telefon tersebut tidak akan hilang ketekalannya.<br>
                                <input type="radio" name="ques5" value="B. Data nombor telefon tersebut hilang ketekalannya." required="required"> B. Data nombor telefon tersebut hilang ketekalannya.<br>
                                <input type="radio" name="ques5" value="C. Tiada jawapan" required="required"> C. Tiada jawapan<br><br>
                                
                                
                                
                                
                                <div class="text-center" >
                                    <input class="btn btn-primary" type="submit" value="Hantar" />
                                    <a class="btn btn-outline-primary" href="2.1 uji diri.jsp" role="button">Batal</a>
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

