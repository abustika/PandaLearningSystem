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
                            <h5 class="m-0 font-weight-bold text-primary text-left">Penilaian Formatif: 2.2 Reka Bentuk Pangkalan Data Hubungan</h5>
                        </div>
                        <div class="card-body">
                            
                            <form method="post" action="formative22servlet">
                                <p>1. Susunkan urutan langkah-langkah untuk melukis ERD untuk kenyataan "Murid mengambil Peperiksaan".</p>
                                <p>i. Lukiskan simbol entiti dan hubungan yang mengaitkan kedua-dua entiti.<br>
                                ii. Kenal pasti entiti: Murid, Peperiksaan<br>
                                iii. Kenal pasti hubungan: mengambil</p>
                                <input type="radio" name="ques1" value="A. i, ii, iii" required="required"> A. i, ii, iii<br>
                                <input type="radio" name="ques1" value="B. iii, ii, i" required="required"> B. iii, ii, i<br>
                                <input type="radio" name="ques1" value="C. ii, i, iii" required="required"> C. ii, i, iii<br>
                                <input type="radio" name="ques1" value="D. ii, iii, i" required="required"> D. ii, iii, i<br><br>
                                
                                <p>2. Apakah fungsi kunci asing?</p>
                                <input type="radio" name="ques2" value="A. Untuk menghasilkan hubungan di antara dua jadual, jadual yang ingin mewujudkan hubungan akan menambahkan atribut kunci primer daripada jadual sasaran sebagai kunci asing." required="required"> A. Untuk menghasilkan hubungan di antara dua jadual, jadual yang ingin mewujudkan hubungan akan menambahkan atribut kunci primer daripada jadual sasaran sebagai kunci asing.<br>
                                <input type="radio" name="ques2" value="B. Untuk menghasilkan hubungan di antara dua jadual, jadual yang ingin mewujudkan hubungan akan menambahkan atribut kunci asing daripada jadual sasaran sebagai kunci primer." required="required"> B. Untuk menghasilkan hubungan di antara dua jadual, jadual yang ingin mewujudkan hubungan akan menambahkan atribut kunci asing daripada jadual sasaran sebagai kunci primer.<br>
                                <input type="radio" name="ques2" value="C. Memberikan identiti yang unik bagi setiap rekod yang disimpan di dalam pangkalan data." required="required"> C. Memberikan identiti yang unik bagi setiap rekod yang disimpan di dalam pangkalan data.<br>
                                <input type="radio" name="ques2" value="D. Mengelakkan berlakunya pertindihan data daripada rekod yang sama berulang-ulang disimpan di dalam pangkalan data. Seterusnya, dapat menjimatkan ruang stor komputer." required="required"> D. Mengelakkan berlakunya pertindihan data daripada rekod yang sama berulang-ulang disimpan di dalam pangkalan data. Seterusnya, dapat menjimatkan ruang stor komputer.<br><br>
                                
                                <p>3. Pilihkan kenyataan yang benar tentang entiti teguh.</p>
                                <input type="radio" name="ques3" value="A. Entiti ini bergantung pada entiti sama jenis yang lain." required="required"> A. Entiti ini bergantung pada entiti sama jenis yang lain.<br>
                                <input type="radio" name="ques3" value="B. Entiti yang terjadi bersama dengan satu atau banyak jenis entiti yang lain." required="required"> B. Entiti yang terjadi bersama dengan satu atau banyak jenis entiti yang lain.<br>
                                <input type="radio" name="ques3" value="C. Entiti ini wujud dengan tidak bergantung pada entiti yang lain." required="required"> C. Entiti ini wujud dengan tidak bergantung pada entiti yang lain.<br>
                                <input type="radio" name="ques3" value="D. Semua di atas." required="required"> D. Semua di atas.<br><br>
                                
                                <p>4. Pilihkan kenyataan yang benar tentang kebergantungan fungsi transitif.</p>
                                <input type="radio" name="ques4" value="A. Berlaku apabila atribut2 bergantung kepada atribut biasa yang lain dalam jadual." required="required"> A. Berlaku apabila atribut-atribut bergantung kepada atribut biasa yang lain dalam jadual.<br>
                                <input type="radio" name="ques4" value="B. Berlaku apabila atribut2 bergantung kepada salah satu daripada atribut kunci dalam jadual." required="required"> B. Berlaku apabila atribut-atribut bergantung kepada salah satu daripada atribut kunci dalam jadual.<br>
                                <input type="radio" name="ques4" value="C. Berlaku apabila atribut2 bergantung sepenuhnya kepada kesemua atribut kunci dalam jadual." required="required"> C. Berlaku apabila atribut-atribut bergantung sepenuhnya kepada kesemua atribut kunci dalam jadual.<br>
                                <input type="radio" name="ques4" value="D. Seorang doktor merawat seorang penyakit." required="required"> D. Seorang doktor merawat seorang penyakit.<br><br>
                                
                                <p>5. Pilihkan skema hubungan yang berada dalam 1NF.</p>
                                <input type="radio" name="ques5" value="A. PINJAMAN (Kod Buku , ID Murid , Tarikh Pinjam, Tarikh Hantar) BUKU (Kod Buku , Nama Buku, Pengarang) MURID (ID Murid , Nama Murid, No Telefon Bimbit)" required="required"> A. PINJAMAN (Kod Buku , ID Murid , Tarikh Pinjam, Tarikh Hantar) BUKU (Kod Buku , Nama Buku, Pengarang) MURID (ID Murid , Nama Murid, No Telefon Bimbit)<br>
                                <input type="radio" name="ques5" value="B. PINJAMAN (Kod Buku , ID Murid , Tarikh Pinjam, Tarikh Hantar) BUKU (Kod Buku , Nama Buku, Pengarang) MURID (ID Murid , No Telefon Bimbit ) TELEFON (No Telefon Bimbit , Nama Murid)" required="required"> B. PINJAMAN (Kod Buku , ID Murid , Tarikh Pinjam, Tarikh Hantar) BUKU (Kod Buku , Nama Buku, Pengarang) MURID (ID Murid , No Telefon Bimbit) TELEFON (No Telefon Bimbit , Nama Murid)<br>
                                <input type="radio" name="ques5" value="C. MURID (ID Murid , Nama Murid, No Telefon Bimbit)" required="required"> C. MURID (ID Murid , Nama Murid, No Telefon Bimbit)<br>
                                <input type="radio" name="ques5" value="D. BUKU PINJAMAN (Kod Buku , Nama Buku, Pengarang, (ID Murid , Nama Murid, No Telefon Bimbit), Tarikh Pinjam, Tarikh Hantar)" required="required"> D. BUKU PINJAMAN (Kod Buku , Nama Buku, Pengarang, (ID Murid , Nama Murid, No Telefon Bimbit), Tarikh Pinjam, Tarikh Hantar)<br><br>
                                
                                <div class="text-center" >
                                    <input class="btn btn-primary" type="submit" value="Hantar" />
                                    <a class="btn btn-outline-primary" href="2.2 uji diri.jsp" role="button">Batal</a>
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


