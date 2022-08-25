<%-- 
    Document   : Header
    Created on : Dec 17, 2020, 11:44:50 PM
    Author     : amiru
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
<%String getEmail = (String) session.getAttribute("email");%>
<%

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * from user where email='"+getEmail+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

               <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
<!--                               <span class="mr-2 d-none d-lg-inline text-gray-600 small">Kitaa Agency</span>-->
                               <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=resultSet.getString("name") %></span>
                                <img class="img-profile rounded-circle"
                                    src="img/profileicon.png">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="profile.jsp">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profil
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="LogoutServlet?read_page=readpage" onclick="readpageFunction()" id="read_page">
                                    Log Keluar
                                </a>
                                
                                 <script>
                                    function readpageFunction() {
                                        var x = document.URL;
                                        document.getElementById("read_page").innerHTML = x;
                            //            document.getElementById("demo").href.replace("read_page","sapatu");
                                         $('a').each(function(){
                                        this.href = this.href.replace ('readpage', x);
                                         });
                                    }
                                </script>
    
    
                            </div>
                        </li>

                    </ul>
                
                </nav>
               <% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</html>
