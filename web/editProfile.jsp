<%-- 
    Document   : profile
    Created on : Dec 8, 2020, 2:28:44 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    String id = request.getParameter("userId");
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "pandasystem";
    String userId = "root";
    String password = "";

    try {
    Class.forName(driverName);
    } catch (ClassNotFoundException e) {
    e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
  <html>
  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Pan-Da Learning - Profil</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <style>
    img {
      display: block;
      margin-left: auto;
      margin-right: auto;
    }
    div.b {
      text-align: left;
    }
    </style>
</head>

<body class="bg-gradient-primary">
    <%
        String getEmail = (String) session.getAttribute("email");

        try{ 
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        String sql ="SELECT * from user where email='"+getEmail+"'";

        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
    %>

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-12 col-md-9">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        
                        <!-- Nested Row within Card Body -->
                        <br><img src="img/profileicon.png" alt="profileicon" style="width:20%;">
                        <center><%=resultSet.getString("name") %> </center><hr>
                        <center>
                            <form method="POST" class="edit-form" id="edit-form" action="editProfileServlet">
                                <table>
                                    <tr>
                                        <td>Nama</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td><input type="text" id="name" name="name" value=" <%=resultSet.getString("name") %>"></td>
                                    </tr>
                                    <tr><td><br></td></tr>
                                    <tr>
                                        <td>Jantina</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td>
                                            <input type="radio" id="male" name="gender" value="Lelaki">
                                            <label for="Lelaki">Lelaki</label>
                                            <input type="radio" id="female" name="gender" value="Perempuan" checked>
                                            <label for="Perempuan">Perempuan</label>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr>
                                    <tr>
                                        <td>E-mel</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td><input type="email" id="email" name="email" value=" <%=resultSet.getString("email") %>" disabled></td>
                                    </tr>
                                    <tr><td><br></td></tr>
                                    <tr>
                                        <td>Tarikh Lahir</td>
                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                        <td><input type="date" id="birthday" name="birthday" required></td>
                                    </tr>
                                    <tr><td><br></td></tr>
                                    <tr>
                                        <td colspan="2"><center><a class="btn btn-outline-primary" href="index.jsp">Balik Halaman Utama</a></center></td>
                                        <td><center><input style="width: 90%;" class="btn btn-primary" type="submit" value="Simpan"></center></td>
                                    </tr>
                                </table>
                            </form><br>
                        </center>
                    </div>
                </div>
            </div>
        </div>       
    </div>
    <% 
        }

        } catch (Exception e) {
        e.printStackTrace();
        }
    %>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>
</html>
