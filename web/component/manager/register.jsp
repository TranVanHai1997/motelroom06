<%-- 
    Document   : register
    Created on : Oct 12, 2018, 9:50:52 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Đăng kí</title>
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
    
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
      <!--check mail-->
        <script type="text/javascript">
              $(document).ready(function () {
                   var x_timer;
                   $("#email").keyup(function (e) {
                        clearTimeout(x_timer);
                        var user_name = $(this).val();
                        x_timer = setTimeout(function () {
                            check_username_ajax(user_name);
                        }, 1000);
                        });

                   function check_username_ajax(username) {
                        $("#user-result").html('<img src="../../images/loader.gif" />');
                        $.post('CheckEmailServlet', {'username': username}, function (data) {
                            $("#user-result").html(data);
                         });
                   }
               });
        </script>
    </head>
    <body class="bg-dark">
        <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">
                    <a href="../../index.jsp">
                        <img class="align-content" src="../../images/logo.PNG" alt="">
                    </a>
                </div>
                <div class="login-form">
                    <form>
                        <div class="form-group">
                            <label>Tài khoản</label>
                            <input type="account" class="form-control" placeholder="Tên tài khoản">
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ email</label>
                            <input type="email" id="email" name="email" class="form-control" placeholder="Nhập email">
                            <span id="user-result"></span>
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu</label>
                            <input type="password" class="form-control" placeholder="Nhập mật khẩu">
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Tôi đồng ý với các điều khoản và chính sách
                            </label>
                        </div>
                        <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30">Đăng ký</button>
<!--                        <div class="social-login-content">
                            <div class="social-button">
                                <button type="button" class="btn social facebook btn-flat btn-addon mb-3"><i class="ti-facebook"></i>Đăng nhập bằng facebook</button>
                                <button type="button" class="btn social twitter btn-flat btn-addon mt-2"><i class="ti-twitter"></i>Đăng nhập bằng twitter</button>
                            </div>
                        </div>-->
                        <div class="register-link m-t-15 text-center">
                            <p>Đã có tài khoản ? <a href="#"> Đăng nhập</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="../../js/vendor/jquery-2.1.4.min.js" type="text/javascript"/>
    <script src="../../js/popper.min.js" type="text/javascript" />
    <script src="../../js/plugins.js" type="text/javascript" />
    <script src="../../js/main.js" type="text/javascript" />
    </body>
</html>
