<%@page import="java.sql.ResultSet"%>
<%@page import="data.ConnectionDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Quản lý phòng trọ</title>
        <meta name="description" content="Sufee Admin - HTML5 Admin Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="apple-icon.png">
        <link rel="shortcut icon" href="../../images/home.png">

        <link rel="stylesheet" href="../../css/normalize.css">
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/font-awesome.min.css">
        <link rel="stylesheet" href="../../css/themify-icons.css">
        <link rel="stylesheet" href="../../css/flag-icon.min.css">
        <link rel="stylesheet" href="../../css/cs-skin-elastic.css">
        <link rel="stylesheet" href="../../css/lib/datatable/dataTables.bootstrap.min.css">
        <link rel="stylesheet" href="../../scss/style.css">

        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
   </head>
    <body>
       
        <!-- Left Panel -->
        <aside id="left-panel" class="left-panel">
            <nav class="navbar navbar-expand-sm navbar-default">

                <div class="navbar-header">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="../../images/logo.PNG" alt="Logo"></a>
                    <a class="navbar-brand hidden" href="./"><img src="../../images/logo2.png" alt="Logo"></a>
                </div>

                <div id="main-menu" class="main-menu collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="index.html"> <i class="menu-icon fa fa-dashboard"></i>Tổng quan</a>
                        </li>
                        <!-- information -->
                        <h3 class="menu-title">Quản lý thông tin cá nhân</h3><!-- /.menu-title -->
                        <li >
                            <a href="information.html"><i class="menu-icon fa fa-user"></i>Thay đổi thông tin</a>
                        </li>
                        <li>
                            <a href="resetPassword.html"><i class="menu-icon fa fa-unlock-alt"></i>Đổi mật khẩu</a>
                        </li>
                        <!--  -->
                        <h3 class="menu-title">Quản lý tin đăng</h3><!-- /.menu-title -->

                        <li>
                            <a href="newsPost.html"> <i class="menu-icon fa fa-edit"></i>Đăng tin cho thuê</a>
                        </li>
                        <li>
                            <a href="managerPost.html"> <i class="menu-icon fa fa-folder"></i>Quản lý tin cho thuê</a>
                        </li>
                        <!--  -->
                        <h3 class="menu-title">Quản lý TT phòng trọ</h3><!-- /.menu-title -->

                        <li>
                            <a href="newsMotel.html"> <i class="menu-icon fa fa-edit"></i>Thêm mới phòng trọ</a>
                        </li>
                        <li>
                            <a href="managerMotel.html"> <i class="menu-icon fa fa-folder"></i>Quản lý phòng trọ</a>
                        </li>
                        <!--  -->
                        <h3 class="menu-title">Quản lý người dùng</h3><!-- /.menu-title -->

                        <li>
                            <a href="managerAccount.html"> <i class="menu-icon fa fa-legal"></i>Quản lý quyền</a>
                        </li>
                        <li>
                            <a href="managerUser.html"> <i class="menu-icon fa fa-users"></i>Quản lý người dùng</a>
                        </li>

                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>
        </aside><!-- /#left-panel -->
 
        <!-- Right Panel -->>
    <div id="right-panel" class="right-panel">

        <!-- Header-->
        <header id="header" class="header">
            <div class="header-menu">
                <div class="col-sm-7">
                    <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                    <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-sm-5">
                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="../../images/admin.jpg" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                            <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                            <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </header><!-- /header -->
        <!-- Header-->

        <div class="breadcrumbs">
            <div class="col-sm-4">
                <div class="page-header float-left">
                    <div class="page-title">
                        <h1>Bảng tin cho thuê</h1>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">
                  <div class="col-md-12">
                      <div class="card">
                          <div class="card-body">
                              <% ConnectionDB conn = new ConnectionDB();
                                ResultSet rs = conn.getDataFromTable("select * from tblroom");
                              %>
                              <table id="bootstrap-data-table" class="table table-striped table-bordered text-center">
                                <thead>
                                  <tr>
                                    <th>ID</th>
                                    <th>Tên phòng</th>
                                    <th>Diện tích</th>
                                    <th>Giá phòng</th>
                                    <th>Tình trạng</th>
                                    <th>Anh</th>
                                    <th>Mô tả</th>
                                    <th>Thành phố</th>
                                    <th>Quận/huyện</th>
                                    <th>Phường/xã</th>
                                    <th>Đường/Ngõ</th>
                                    <th>Mặt tiền</th>
                                    <th>Gía điện</th>
                                    <th>Ngày thuê</th>
                                    <th>Ngày hết</th>
                                    <th>Gía nước</th>
                                    <th>Hướng nhà</th>
                                    <th>Chỉ dẫn</th>
                                    <th>Nội thất</th>
                                    <th>Ngày tạo</th>
                                    <th>Ngày cập nhật</th>
                                    <th>User id</th>
                                    <th>Sửa</th>
                                    <th>Xóa</th>
                                  </tr>
                                </thead>
                                <tbody>
                                  <%
                                    while(rs.next()){
                                    %>
                                    <tr> 
                                            <td><%=rs.getString(1) %></td> 
                                            <td><%=rs.getString(2) %></td> 
                                            <td><%=rs.getInt(3) %></td> 
                                            <td><%=rs.getInt(4) %></td>
                                            <td><%=rs.getString(5) %></td> 
                                            <td><%=rs.getString(6) %></td>
                                            <td><%=rs.getString(7) %></td> 
                                            <td><%=rs.getString(8) %></td>
                                            <td><%=rs.getString(9) %></td> 
                                            <td><%=rs.getString(10) %></td> 
                                            <td><%=rs.getString(11) %></td> 
                                            <td><%=rs.getInt(12) %></td> 
                                            <td><%=rs.getInt(13) %></td> 
                                            <td><%=rs.getString(14) %></td> 
                                            <td><%=rs.getString(15) %></td> 
                                            <td><%=rs.getInt(16) %></td> 
                                            <td><%=rs.getString(17) %></td> 
                                            <td><%=rs.getString(18) %></td>
                                            <td><%=rs.getString(19) %></td> 
                                            <td><%=rs.getString(20) %></td> 
                                            <td><%=rs.getString(21) %></td>
                                            <td><%=rs.getString(22) %></td>
                                            <td><a href="SuaTK?stt=<%=rs.getString(1)%>">
                                                    <button class="btn btn-primary">Sửa</button>
                                                </a>
                                            </td>
                                            <td><a href="XoaTK?stt=<%=rs.getString(1)%>">
                                                    <button class="btn btn-warning">Xóa</button>
                                                </a>
                                            </td>
                                    </tr> 
                                    <%
                                    }
                                    %>
                                </tbody>
                            </table>
                          </div>
                      </div>
                  </div>
                </div>
            </div><!-- .animated -->
        </div><!-- .content -->
    </div><!-- /#right-panel -->
    <!-- Right Panel -->
    
    <script src="../../js/vendor/jquery-2.1.4.min.js"></script>
    <script src="../../js/popper.min.js"></script>
    <script src="../../js/plugins.js"></script>
    <script src="../../js/main.js"></script>


    <script src="../../js/lib/data-table/datatables.min.js"></script>
    <script src="../../js/lib/data-table/dataTables.bootstrap.min.js"></script>
    <script src="../../js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="../../js/lib/data-table/buttons.bootstrap.min.js"></script>
    <script src="../../js/lib/data-table/jszip.min.js"></script>
    <script src="../../js/lib/data-table/pdfmake.min.js"></script>
    <script src="../../js/lib/data-table/vfs_fonts.js"></script>
    <script src="../../js/lib/data-table/buttons.html5.min.js"></script>
    <script src="../../js/lib/data-table/buttons.print.min.js"></script>
    <script src="../../js/lib/data-table/buttons.colVis.min.js"></script>
    <script src="../../js/lib/data-table/datatables-init.js"></script>


    <script type="text/javascript">
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
        } );
    </script>
    </body>
</html>
