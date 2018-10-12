<%-- 
    Document   : newMotel
    Created on : Oct 12, 2018, 9:30:05 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Thêm phòng trọ</title>
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
        <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
        <link rel="stylesheet" href="../../scss/style.css">

        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <h1>Hello World!</h1> <aside id="left-panel" class="left-panel">
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
                        <h1>Thêm mới phòng trọ</h1>
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
                                <strong class="card-title">Thông tin phòng trọ</strong>
                            </div>
                            <!-- Credit Card -->
                            <div id="pay-invoice">
                                <div class="card-body">
                                    <form action="" method="post" novalidate="novalidate">
                                        <div class="form-group">
                                            <label for="fr-acreage" class="control-label mb-1">Diện tích</label>
                                            <input id="fr-acreage" name="fr-acreage" type="number" class="form-control" aria-required="true" aria-invalid="false">
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="fr-typeRoom" class="control-label mb-1">Loại phòng</label>
                                            <input id="fr-typeRoom" name="fr-typeRoom" type="text" class="form-control" data-val="true" data-val-required="Please enter the birthday" autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name-error">
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="fr-price" class="control-label mb-1">Giá phòng</label>
                                            <input id="fr-price" name="fr-price" type="number" class="form-control" >
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-2">
                                                <label for="selectStatus" class=" form-control-label">Tình trạng</label>
                                            </div>
                                            <div class="col col-md-4">
                                                <select name="selectStatus" id="select" class="form-control">
                                                    <option value="1">Trống</option>
                                                    <option value="2">Sắp hết hạn</option>
                                                    <option value="3">Hihi</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row form-group">
                                            <div class="col-md-2">
                                                <label for="selectProvince" class="control-label mb-1">Tỉnh/Thành phố</label>
                                            </div>
                                            <div class="col-md-4">
                                                <select name="selectProvince" id="select" class="form-control">
                                                    <option value="0">--Chọn tỉnh--</option>
                                                    <option value="1">Haha</option>
                                                    <option value="2">HUhu</option>
                                                    <option value="3">Hihi</option>
                                                </select>
                                            </div>
                                            <div class="col-md-2 pd-0">
                                                <label for="selectDistrict" class="control-label mb-1">Quận/  huyện</label>
                                                </div>
                                            <div class="col-md-4">
                                                <select name="selectDistrict" id="select" class="form-control">
                                                    <option value="0">--Chọn quận--</option>
                                                    <option value="1">Haha</option>
                                                    <option value="2">HUhu</option>
                                                    <option value="3">Hihi</option>
                                                </select>
                                                </div>
                                            </div>
                                            <div class="row form-group">
                                            <div class="col-md-2">
                                                <label for="selectCommune" class="control-label mb-1">Xã/phường</label>
                                            </div>
                                            <div class="col-md-4">
                                                <select name="selectCommune" id="select" class="form-control">
                                                <option value="0">--Chọn xã--</option>
                                                <option value="1">Haha</option>
                                                <option value="2">HUhu</option>
                                                <option value="3">Hihi</option>
                                                </select>
                                            </div>
                                            <div class="col-md-2">
                                                <label for="selectStreet" class="control-label mb-1">Đường/phố</label>
                                                </div>
                                            <div class="col-md-4">
                                                <select name="selectStreet" id="select" class="form-control">
                                                    <option value="0">--Chọn phố--</option>
                                                    <option value="1">Haha</option>
                                                    <option value="2">HUhu</option>
                                                    <option value="3">Hihi</option>
                                                </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="np-File" class=" form-control-label">Hình ảnh</label>
                                            </div>
                                            <div class="col col-md-9">
                                                    <input id="np-File" name="np-File" type="file">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div> <!-- .card -->
                    </div>
                    <!--/.col-->
                    <!-- khác -->
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Thông tin khác</strong>
                            </div>
                            <div id="pay-invoice">
                                <div class="card-body">
                                    <form action="" method="post" novalidate="novalidate">
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label for="fr-Cash" class="control-label mb-1">Mặt tiền(m)</label>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="fr-Cash" class="control-label mb-1">Giá điện</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <input id="fr-Cash" name="fr-Cash" type="number" class="form-control" aria-required="true" aria-invalid="false">
                                                </div>
                                                <div class="col-md-6">
                                                    <input id="fr-Cash" name="fr-Cash" type="number" class="form-control" aria-required="true" aria-invalid="false">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label for="fr-Cash" class="control-label mb-1">Ngày thuê</label>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="fr-Cash" class="control-label mb-1">Ngày hết hạn</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <input id="fr-Cash" name="fr-Cash" type="date" class="form-control" aria-required="true" aria-invalid="false">
                                                </div>
                                                <div class="col-md-6">
                                                    <input id="fr-Cash" name="fr-Cash" type="date" class="form-control" aria-required="true" aria-invalid="false">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label for="fr-price" class="control-label mb-1">Số tầng</label>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="fr-Cash" class="control-label mb-1">Giá nước</label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                        <input id="fr-price" name="fr-price" type="number" class="form-control" data-val="true">
                                                </div>
                                                <div class="col-md-6">
                                                    <input id="fr-Cash" name="fr-Cash" type="number" class="form-control" aria-required="true" aria-invalid="false">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group has-success">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <label for="selectDirection" class="control-label mb-1">Hướng nhà</label>
                                                    <select name="selectDirection" id="selectDirection" class="form-control">
                                                        <option value="0">Bắc</option>
                                                        <option value="1">Đông</option>
                                                        <option value="2">Tây</option>
                                                        <option value="3">Nam</option>
                                                        <option value="3">Tây Nam</option>
                                                        <option value="3">Đông Nam</option>
                                                        <option value="3">Đông Bắc</option>
                                                    </select>
                                                </div> 
                                                <div class="col-md-6">
                                                    <label for="selectAspect" class="control-label mb-1">Hướng phòng</label>
                                                    <select name="selectAspect" id="selectAspect" class="form-control">
                                                        <option value="0">Bắc</option>
                                                        <option value="1">Đông</option>
                                                        <option value="2">Tây</option>
                                                        <option value="3">Nam</option>
                                                        <option value="3">Tây Nam</option>
                                                        <option value="3">Đông Nam</option>
                                                        <option value="3">Đông Bắc</option>
                                                    </select>
                                                </div> 
                                            </div>                                            
                                        </div>
                                        
                                        <div class="form-group has-success">
                                            <label for="fr-Street" class="control-label mb-1">Chỉ đường</label>
                                            <input id="fr-Street" name="fr-Street" type="text" class="form-control" data-val="true" data-val-required="Please enter the birthday" autocomplete="cc-name" aria-required="true" aria-invalid="false" aria-describedby="cc-name-error">
                                        </div>
                                           
                                        <div class="form-group has-success">
                                            <form action="" method="post" novalidate="novalidate">
                                                <div class="col col-md-2 pl-0">
                                                    <label for="textarea-input" class=" form-control-label">Nội thất</label>
                                                </div>
                                                <div class="col-12 col-md-10 pl-0 pr-0 pb-3">
                                                    <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Nội dung..." class="form-control" ></textarea>
                                                </div>                
                                            </form>
                                        </div>     
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /khác -->
                    <!-- Mô tả -->
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Mô tả chi tiết</strong>
                            </div>
                            <div class="card-body">
                                <form action="" method="post" novalidate="novalidate">
                                    <div class="col col-md-2 pl-0">
                                        <label for="textarea-input" class=" form-control-label">Mô tả</label>
                                    </div>
                                    <div class="col-12 col-md-10 pl-0 pr-0">
                                        <textarea name="textarea-input" id="textarea-input" rows="9" placeholder="Nội dung..." class="form-control" ></textarea>
                                    </div>                
                                </form>
                            </div>
                        </div> <!-- .card -->
                    </div>
                    <!-- /mô tả -->
                    <!-- Liên hệ -->
                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Thông tin chủ trọ</strong>
                            </div>
                            <!-- Credit Card -->
                            <div id="pay-invoice">
                                <div class="card-body">
                                    <form action="" method="post" novalidate="novalidate">
                                        <div class="form-group">
                                            <label for="hr-name" class="control-label mb-1">Tên liên hệ</label>
                                            <input id="hr-name" name="hr-name" type="text" class="form-control" aria-required="true" aria-invalid="false">
                                        </div>
                                        <div class="form-group has-success">
                                            <label for="cc-name" class="control-label mb-1">Email</label>
                                            <input id="hr-email" name="hr-email" type="email" class="form-control" aria-required="true" aria-invalid="false">
                                        </div>
                                        <div class="form-group">
                                            <label for="np-phoneNumber" class="control-label mb-1">Số điện thoại</label>
                                            <input id="np-phoneNumber" name="np-phoneNumber" type="text" class="form-control" aria-required="true" aria-invalid="false">
                                        </div>
                                    </form>
                                </div>
                                <div class="card-footer d-flex justify-content-end">
                                    
                                    <button type="reset" class="btn btn-danger btn-sm">
                                        <i class="fa fa-ban"></i> Hủy
                                    </button>
                                    <button type="submit" class="btn btn-primary btn-sm ml-2">
                                        <i class="fa fa-check"></i> Tạo phòng
                                    </button>
                                </div>
                            </div>
                        </div> <!-- .card -->
                    </div>
                    <!-- /liên hê -->
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
