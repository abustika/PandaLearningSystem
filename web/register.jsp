<%-- 
    Document   : register
    Created on : Dec 15, 2020, 8:02:02 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Pan-Da Learning - Register</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">
    <div class="container">
        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block">
                         <img src="img/Panda Logo.png" width="600" height="500" class="bg-image">
                    </div> 
                   
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4"><b>Daftar Akaun!</b></h1>
                            </div>
                            <form method="POST" class="register-form" id="register-form" action="registrationServlet">
                                    <div class="form-group">
                                        <div class="mb-3 mb-sm-0">
                                            <label for="name">Nama</label>
                                            <input type="text" class="form-control" id="name" name="name" required>
                                        </div>
                                    </div>
                                 <div class="form-group">
                                    <div class="mb-3 mb-sm-0">
                                        <label for="email">E-mel</label>
                                        <input type="email" class="form-control" id="email" name="email" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mb-3 mb-sm-0">
                                        <label for="birthday">Tarikh Lahir</label>
                                        <input type="date" class="form-control" id="birthday" name="birthday" required>
                                    </div>  
                                </div>
                                <div class="form-group">
                                    <div class="mb-3 mb-sm-0">
                                        <label for="gender">Jantina</label><br>
                                        <input type="radio" id="male" name="gender" value="Lelaki">
                                        <label for="Lelaki">Lelaki</label>
                                        <input type="radio" id="female" name="gender" value="Perempuan">
                                        <label for="Perempuan">Perempuan</label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="mb-3 mb-sm-0">
                                        <label for="password">Kata Laluan</label>
                                        <input type="password" class="form-control" id="password" name="password" pattern=".{6,}" title="Enam perkataan dan ke atas">
                                    </div>  
                                </div>
                                <center>
                                   <input type="submit" class="btn btn-primary btn-user" value="Daftar Akauan" />
                                   <input type="reset" class="btn btn-primary btn-user " value="Tetapkan semula">
                                </center>

                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="login.jsp">Sudah ada akaun? Daftar Masuk!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>