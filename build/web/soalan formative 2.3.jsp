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
                            <h5 class="m-0 font-weight-bold text-primary text-left">Penilaian Formatif: 2.3 Pembangunan Pangkalan Data Hubungan</h5>
                        </div>
                        <div class="card-body">
                            
                            <form method="post" action="formative23servlet">
                                <p>1. Susunkan urutan untuk mencipta jadual hubungan.</p>
                                <p>i. Cipta jadual baharu<br>
                                ii. Set kunci primer<br>
                                iii. Set jenis data<br>
                                iv. Membina hubungan antara jadual-jadual</p>
                                <input type="radio" name="ques1" value="A. i, ii, iii, iv" required="required"> A. i, ii, iii, iv<br>
                                <input type="radio" name="ques1" value="B. iv, iii, ii, i" required="required"> B. iv, iii, ii, i<br>
                                <input type="radio" name="ques1" value="C. i, iii, ii, iv" required="required"> C. i, iii, ii, iv<br>
                                <input type="radio" name="ques1" value="D. i, iii, iv, ii" required="required"> D. i, iii, iv, ii<br><br>
                                
                                <p>2. Daripada kenyataan–kenyataan yang diberi, pilihkan kenyataan yang salah bagi kegunaan borang yang berkaitan dengan kandungan jadual dalam pangkalan data.</p>
                                <input type="radio" name="ques2" value="A. Memaparkan data daripada setiap rekod dalam jadual pangkalan data melalui susun atur yang lebih mudah difahami oleh pengguna." required="required"> A. Memaparkan data daripada setiap rekod dalam jadual pangkalan data melalui susun atur yang lebih mudah difahami oleh pengguna.<br>
                                <input type="radio" name="ques2" value="B. Mengutip data untuk disimpan sebagai rekod dalam susun atur yang lebih mudah difahami oleh pengguna." required="required"> B. Mengutip data untuk disimpan sebagai rekod dalam susun atur yang lebih mudah difahami oleh pengguna. <br>
                                <input type="radio" name="ques2" value="C. Mengesahkan data melalui ciri2 borang." required="required"> C. Mengesahkan data melalui ciri-ciri borang.<br>
                                <input type="radio" name="ques2" value="D. Borang Pinjaman dihasilkan daripada atribut2 dalam jadual Pinjaman." required="required"> D. Borang Pinjaman dihasilkan daripada atribut-atribut dalam jadual Pinjaman.<br><br>
                                
                                <p>3. Pilihkan kenyataan yang benar tentang ‘split form’.</p>
                                <input type="radio" name="ques3" value="A. Mempamerkan borang dan jadual dalam Design view." required="required"> A. Mempamerkan borang dan jadual dalam “Design view”.<br>
                                <input type="radio" name="ques3" value="B. Mempamerkan beberapa rekod jadual dalam satu borang." required="required"> B. Mempamerkan beberapa rekod jadual dalam satu borang.<br>
                                <input type="radio" name="ques3" value="C. Membolehkan borang direka cipta khusus dengan menentukan rekod2 yang ingin dipamerkan daripada satu atau lebih jadual dalam pangkalan data." required="required"> C. Membolehkan borang direka cipta khusus dengan menentukan rekod-rekod yang ingin dipamerkan daripada satu atau lebih jadual dalam pangkalan data.<br>
                                <input type="radio" name="ques3" value="D. Menggubal borang Pinjaman." required="required"> D. Menggubal borang Pinjaman.<br><br>
                                
                                <p>4. Daripada pilihan jawapan yang diberikan, pilihkan jawapan yang bukan langkah untuk menggunakan Query Wizard.</p>
                                <input type="radio" name="ques4" value="A. Daripada tab Create, klik ikon Query Wizard untuk memulakan proses bagi menghasilkan query." required="required"> A. Daripada tab “Create”, klik ikon “Query Wizard” untuk memulakan proses bagi menghasilkan query.<br>
                                <input type="radio" name="ques4" value="B. Pada tab Borang Pinjaman, klik kanan dan pilih Close untuk menutup borang." required="required"> B. Pada tab Borang Pinjaman, klik kanan dan pilih “Close” untuk menutup borang.<br>
                                <input type="radio" name="ques4" value="C. Simpan kombinasi atribut2 sebagai query." required="required"> C. Simpan kombinasi atribut-atribut sebagai query.<br>
                                <input type="radio" name="ques4" value="D. Pilih atribut2 dalam jadual terlibat." required="required"> D. Pilih atribut-atribut dalam jadual terlibat.<br><br>
                                
                                <p>5. Query boleh digunakan untuk menjana laporan. Laporan menerbitkan data dalam format yang lebih mudah difahami supaya dapat ______________.</p>
                                <p>i. menghasilkan laporan untuk mesyuarat.<br>
                                ii. membantu organisasi membuat keputusan.<br>
                                iii. membantu dalam penerbitan.</p>
                                <input type="radio" name="ques5" value="A. i sahaja" required="required"> A. i sahaja<br>
                                <input type="radio" name="ques5" value="B. i dan ii" required="required"> B. i dan ii<br>
                                <input type="radio" name="ques5" value="C. ii dan iii" required="required"> C. ii dan iii<br>
                                <input type="radio" name="ques5" value="D. Semua di atas." required="required"> D. Semua di atas.<br><br>
                                
                                <div class="text-center" >
                                    <input class="btn btn-primary" type="submit" value="Hantar" />
                                    <a class="btn btn-outline-primary" href="2.3 uji diri.jsp" role="button">Batal</a>
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


