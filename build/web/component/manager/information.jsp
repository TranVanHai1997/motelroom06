<%-- 
    Document   : information
    Created on : Oct 12, 2018, 9:28:28 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Cập nhật thông tin cá nhân</title>
        <!--<meta name="description" content="Sufee Admin - HTML5 Admin Template">-->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="apple-icon.png">
        <link rel="shortcut icon" href="../../images/home.png">

        <link rel="stylesheet" href="../../css/normalize.css">
        <link rel="stylesheet" href="../../css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/font-awesome.min.css">
        <link rel="stylesheet" href="../../css/themify-icons.css">
        <link rel="stylesheet" href="../../css/flag-icon.min.css">
        <link rel="stylesheet" href="../../css/cs-skin-elastic.css">
        <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
        <link rel="stylesheet" href="../../scss/style.css">

        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">

            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html"><img src="../../images/logo.png" alt="Logo"></a>
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
                        <a href="information.html"><i class="menu-icon fa fa-user"></i>Cập nhật thông tin</a>
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

    <!-- Right Panel -->

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
                        <h1>Cập nhật thông tin cá nhân</h1>
                    </div>
                </div>
            </div>
        </div>

        <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Thông tin cá nhân</strong>
                            </div>
                            <!-- Credit Card -->
                            <div id="pay-invoice">
                                <div class="card-body">
                                    <form action="" method="post" novalidate="novalidate">
                                        <div class="form-group">
                                            <label for="cc-payment" class="control-label mb-1">Họ và tên</label>
                                            <input id="cc-pament" name="cc-payment" type="text" class="form-control" aria-required="true" aria-invalid="false">
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="cc-name" class="control-label mb-1">Ngày sinh</label>
                                            <input id="cc-name" name="cc-name" type="date" class="form-control cc-name valid" data-val="true" data-val-required="Please enter the birthday" autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name-error">
                                            <span class="help-block field-validation-valid" data-valmsg-for="cc-name" data-valmsg-replace="true"></span>
                                        </div>
                                        <div class="row form-group">
                                        <div class="col col-md-3"><label class=" form-control-label">Giới tính</label></div>
                                        <div class="col col-md-9">
                                            <div class="form-check">
                                            <div class="radio">
                                                <label for="radio1" class="form-check-label ">
                                                <input type="radio" id="radio1" name="radios" checked="true" value="option1" class="form-check-input">Nam
                                                </label>
                                            </div>
                                            <div class="radio">
                                                <label for="radio2" class="form-check-label ">
                                                <input type="radio" id="radio2" name="radios" value="option2" class="form-check-input">Nữ
                                                </label>
                                            </div>
                                            </div>
                                        </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="cc-address" class="control-label mb-1">Địa chỉ</label>
                                            <input id="cc-address" name="cc-address" type="text" class="form-control" aria-required="true" aria-invalid="false">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div> <!-- .card -->
                    </div>
                    <!-- sấ -->
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Thông tin liên lạc</strong>
                            </div>
                            <!-- Credit Card -->
                            <div id="pay-invoice">
                                <div class="card-body">
                                    <form action="" method="post" novalidate="novalidate">
                                        <div class="form-group">
                                            <label for="hr-phoneNumber" class="control-label mb-1">Số điện thoại</label>
                                            <input id="hr-phoneNumber" name="hr-phoneNumber" type="text" class="form-control" aria-required="true" aria-invalid="false">
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="cc-name" class="control-label mb-1">Email</label>
                                            <input id="hr-email" name="hr-email" type="email" class="form-control" aria-required="true" aria-invalid="false">
                                        </div>
                                        <div class="form-group">
                                            <label for="hr-facebook" class="control-label mb-1">FaceBook</label>
                                            <input id="hr-facebook" name="hr-facebook" type="text" class="form-control" aria-required="true" aria-invalid="false">
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3"><label for="file-image" class=" form-control-label">Chọn ảnh</label></div>
                                            <div class="col col-md-9">
                                                <input id="file-image" name="file-image" type="file"/>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="card-footer d-flex justify-content-end">
                                    <button type="reset" class="btn btn-danger btn-sm mr-2">
                                        <i class="fa fa-ban"></i> Hủy
                                    </button>
                                    <button type="submit" class="btn btn-primary btn-sm">
                                        <i class="fa fa-check"></i> Xác nhận
                                    </button>
                                </div>
                            </div>
                        </div> <!-- .card -->
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
    </body>
</html>
