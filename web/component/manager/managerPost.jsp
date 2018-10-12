<%-- 
    Document   : managerPost
    Created on : Oct 12, 2018, 9:29:28 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Quản lý tin đăng</title>
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
                                <table id="bootstrap-data-table" class="table table-striped table-bordered text-center">
                                    <thead>
                                      <tr>
                                        <th>STT</th>
                                        <th>Mã tin</th>
                                        <th>Tiêu đề</th>
                                        <th>Ngày bắt đầu</th>
                                        <th>Ngày hết hạn</th>
                                        <th>Thao tác</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr>
                                        <td>1</td>
                                        <td>a1</td>
                                        <td>Tiger Nixon</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>2</td>
                                        <td>a2</td>
                                        <td>Garrett Winters</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>3</td>
                                        <td>a3</td>
                                        <td>Ashton Cox</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>4</td>
                                        <td>a4</td>
                                        <td>Cedric Kelly</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>5</td>
                                        <td>a5</td>
                                        <td>Airi Satou</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>6</td>
                                        <td>a6</td>
                                        <td>Brielle Williamson</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>7</td>
                                        <td>a7</td>
                                        <td>Herrod Chandler</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>8</td>
                                        <td>a8</td>
                                        <td>Rhona Davidson</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>9</td>
                                        <td>a9</td>
                                        <td>Colleen Hurst</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>10</td>
                                        <td>a10</td>
                                        <td>Sonya Frost</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>11</td>
                                        <td>a11</td>
                                        <td>Jena Gaines</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>12</td>
                                        <td>a12</td>
                                        <td>Quinn Flynn</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>13</td>
                                        <td>a13</td>
                                        <td>Charde Marshall</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>14</td>
                                        <td>a14</td>
                                        <td>Haley Kennedy</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>15</td>
                                        <td>a15</td>
                                        <td>Tatyana Fitzpatrick</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>16</td>
                                        <td>a16</td>
                                        <td>Michael Silva</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>17</td>
                                        <td>a17</td>
                                        <td>Paul Byrd</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>18</td>
                                        <td>a18</td>
                                        <td>Gloria Little</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>19</td>
                                        <td>a19</td>
                                        <td>Bradley Greer</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>20</td>
                                        <td>a20</td>
                                        <td>Dai Rios</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>21</td>
                                        <td>a21</td>
                                        <td>Jenette Caldwell</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>22</td>
                                        <td>a22</td>
                                        <td>Yuri Berry</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>23</td>
                                        <td>a23</td>
                                        <td>Caesar Vance</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>24</td>
                                        <td>a24</td>
                                        <td>Doris Wilder</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>25</td>
                                        <td>a25</td>
                                        <td>Angelica Ramos</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>26</td>
                                        <td>a25</td>
                                        <td>Gavin Joyce</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>27</td>
                                        <td>a27</td>
                                        <td>Jennifer Chang</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>28</td>
                                        <td>a28</td>
                                        <td>Brenden Wagner</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>29</td>
                                        <td>a29</td>
                                        <td>Fiona Green</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>30</td>
                                        <td>a30</td>
                                        <td>Shou Itou</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>31</td>
                                        <td>a31</td>
                                        <td>Michelle House</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>32</td>
                                        <td>a32</td>
                                        <td>Suki Burks</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>33</td>
                                        <td>a33</td>
                                        <td>Prescott Bartlett</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>34</td>
                                        <td>a34</td>
                                        <td>Gavin Cortez</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>35</td>
                                        <td>a35</td>
                                        <td>Martena Mccray</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>36</td>
                                        <td>a36</td>
                                        <td>Unity Butler</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>37</td>
                                        <td>a37</td>
                                        <td>Howard Hatfield</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>38</td>
                                        <td>a38</td>
                                        <td>Hope Fuentes</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>39</td>
                                        <td>a39</td>
                                        <td>Vivian Harrell</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>40</td>
                                        <td>a40</td>
                                        <td>Timothy Mooney</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>41</td>
                                        <td>a41</td>
                                        <td>Jackson Bradshaw</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>42</td>
                                        <td>a42</td>
                                        <td>Olivia Liang</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>43</td>
                                        <td>a43</td>
                                        <td>Bruno Nash</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>44</td>
                                        <td>a44</td>
                                        <td>Sakura Yamamoto</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>45</td>
                                        <td>a45</td>
                                        <td>Thor Walton</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>46</td>
                                        <td>a46</td>
                                        <td>Finn Camacho</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>47</td>
                                        <td>a47</td>
                                        <td>Serge Baldwin</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>48</td>
                                        <td>a48</td>
                                        <td>Zenaida Frank</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>49</td>
                                        <td>a49</td>
                                        <td>Zorita Serrano</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>50</td>
                                        <td>a50</td>
                                        <td>Jennifer Acosta</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>51</td>
                                        <td>a51</td>
                                        <td>Cara Stevens</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>52</td>
                                        <td>a52</td>
                                        <td>Hermione Butler</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>53</td>
                                        <td>a53</td>
                                        <td>Lael Greer</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>54</td>
                                        <td>a54</td>
                                        <td>Jonas Alexander</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>55</td>
                                        <td>a55</td>
                                        <td>Shad Decker</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>56</td>
                                        <td>a56</td>
                                        <td>Michael Bruce</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
                                      <tr>
                                        <td>57</td>
                                        <td>a57</td>
                                        <td>Donna Snider</td>
                                        <td>27/10/2018</td>
                                        <td>27/10/2018</td>
                                        <td>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-pencil"></i></a>
                                          </div>
                                          <div class="col-md-6">
                                            <a href="#"> <i class="fa fa-trash-o"></i></a>
                                          </div>
                                        </td>
                                      </tr>
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
