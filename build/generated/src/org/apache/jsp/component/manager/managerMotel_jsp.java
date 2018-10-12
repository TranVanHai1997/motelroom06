package org.apache.jsp.component.manager;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import data.ConnectionDB;

public final class managerMotel_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <title>Quản lý phòng trọ</title>\n");
      out.write("        <meta name=\"description\" content=\"Sufee Admin - HTML5 Admin Template\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"apple-icon.png\">\n");
      out.write("        <link rel=\"shortcut icon\" href=\"../../images/home.png\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../css/normalize.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../css/font-awesome.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../css/themify-icons.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../css/flag-icon.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../css/cs-skin-elastic.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../css/lib/datatable/dataTables.bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../../scss/style.css\">\n");
      out.write("\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>\n");
      out.write("   </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Left Panel -->\n");
      out.write("        <aside id=\"left-panel\" class=\"left-panel\">\n");
      out.write("            <nav class=\"navbar navbar-expand-sm navbar-default\">\n");
      out.write("\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#main-menu\" aria-controls=\"main-menu\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                        <i class=\"fa fa-bars\"></i>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"index.html\"><img src=\"../../images/logo.PNG\" alt=\"Logo\"></a>\n");
      out.write("                    <a class=\"navbar-brand hidden\" href=\"./\"><img src=\"../../images/logo2.png\" alt=\"Logo\"></a>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div id=\"main-menu\" class=\"main-menu collapse navbar-collapse\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li class=\"active\">\n");
      out.write("                            <a href=\"index.html\"> <i class=\"menu-icon fa fa-dashboard\"></i>Tổng quan</a>\n");
      out.write("                        </li>\n");
      out.write("                        <!-- information -->\n");
      out.write("                        <h3 class=\"menu-title\">Quản lý thông tin cá nhân</h3><!-- /.menu-title -->\n");
      out.write("                        <li >\n");
      out.write("                            <a href=\"information.html\"><i class=\"menu-icon fa fa-user\"></i>Thay đổi thông tin</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"resetPassword.html\"><i class=\"menu-icon fa fa-unlock-alt\"></i>Đổi mật khẩu</a>\n");
      out.write("                        </li>\n");
      out.write("                        <!--  -->\n");
      out.write("                        <h3 class=\"menu-title\">Quản lý tin đăng</h3><!-- /.menu-title -->\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"newsPost.html\"> <i class=\"menu-icon fa fa-edit\"></i>Đăng tin cho thuê</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"managerPost.html\"> <i class=\"menu-icon fa fa-folder\"></i>Quản lý tin cho thuê</a>\n");
      out.write("                        </li>\n");
      out.write("                        <!--  -->\n");
      out.write("                        <h3 class=\"menu-title\">Quản lý TT phòng trọ</h3><!-- /.menu-title -->\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"newsMotel.html\"> <i class=\"menu-icon fa fa-edit\"></i>Thêm mới phòng trọ</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"managerMotel.html\"> <i class=\"menu-icon fa fa-folder\"></i>Quản lý phòng trọ</a>\n");
      out.write("                        </li>\n");
      out.write("                        <!--  -->\n");
      out.write("                        <h3 class=\"menu-title\">Quản lý người dùng</h3><!-- /.menu-title -->\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"managerAccount.html\"> <i class=\"menu-icon fa fa-legal\"></i>Quản lý quyền</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"managerUser.html\"> <i class=\"menu-icon fa fa-users\"></i>Quản lý người dùng</a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div><!-- /.navbar-collapse -->\n");
      out.write("            </nav>\n");
      out.write("        </aside><!-- /#left-panel -->\n");
      out.write("    <!-- Right Panel -->\n");
      out.write("\n");
      out.write("    <div id=\"right-panel\" class=\"right-panel\">\n");
      out.write("\n");
      out.write("        <!-- Header-->\n");
      out.write("        <header id=\"header\" class=\"header\">\n");
      out.write("            <div class=\"header-menu\">\n");
      out.write("                <div class=\"col-sm-7\">\n");
      out.write("                    <a id=\"menuToggle\" class=\"menutoggle pull-left\"><i class=\"fa fa fa-tasks\"></i></a>\n");
      out.write("                    <div class=\"header-left\">\n");
      out.write("                        <button class=\"search-trigger\"><i class=\"fa fa-search\"></i></button>\n");
      out.write("                        <div class=\"form-inline\">\n");
      out.write("                            <form class=\"search-form\">\n");
      out.write("                                <input class=\"form-control mr-sm-2\" type=\"text\" placeholder=\"Search ...\" aria-label=\"Search\">\n");
      out.write("                                <button class=\"search-close\" type=\"submit\"><i class=\"fa fa-close\"></i></button>\n");
      out.write("                            </form>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-sm-5\">\n");
      out.write("                    <div class=\"user-area dropdown float-right\">\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                            <img class=\"user-avatar rounded-circle\" src=\"../../images/admin.jpg\" alt=\"User Avatar\">\n");
      out.write("                        </a>\n");
      out.write("\n");
      out.write("                        <div class=\"user-menu dropdown-menu\">\n");
      out.write("                            <a class=\"nav-link\" href=\"#\"><i class=\"fa fa- user\"></i>My Profile</a>\n");
      out.write("\n");
      out.write("                            <a class=\"nav-link\" href=\"#\"><i class=\"fa fa -cog\"></i>Settings</a>\n");
      out.write("\n");
      out.write("                            <a class=\"nav-link\" href=\"#\"><i class=\"fa fa-power -off\"></i>Logout</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </header><!-- /header -->\n");
      out.write("        <!-- Header-->\n");
      out.write("\n");
      out.write("        <div class=\"breadcrumbs\">\n");
      out.write("            <div class=\"col-sm-4\">\n");
      out.write("                <div class=\"page-header float-left\">\n");
      out.write("                    <div class=\"page-title\">\n");
      out.write("                        <h1>Bảng tin cho thuê</h1>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div class=\"content mt-3\">\n");
      out.write("            <div class=\"animated fadeIn\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                  <div class=\"col-md-12\">\n");
      out.write("                      <div class=\"card\">\n");
      out.write("                          <div class=\"card-body\">\n");
      out.write("                              ");
 ConnectionDB conn = new ConnectionDB();
                                ResultSet rs = conn.getDataFromTable("select * from tblroom");
                              
      out.write("\n");
      out.write("                              <table id=\"bootstrap-data-table\" class=\"table table-striped table-bordered text-center\">\n");
      out.write("                                <thead>\n");
      out.write("                                  <tr>\n");
      out.write("                                    <th>ID</th>\n");
      out.write("                                    <th>Tên phòng</th>\n");
      out.write("                                    <th>Diện tích</th>\n");
      out.write("                                    <th>Giá phòng</th>\n");
      out.write("                                    <th>Tình trạng</th>\n");
      out.write("                                    <th>Anh</th>\n");
      out.write("                                    <th>Mô tả</th>\n");
      out.write("                                    <th>Thành phố</th>\n");
      out.write("                                    <th>Quận/huyện</th>\n");
      out.write("                                    <th>Phường/xa</th>\n");
      out.write("                                    <th>Đường</th>\n");
      out.write("                                    <th>Mặt tiền</th>\n");
      out.write("                                    <th>Gía điện</th>\n");
      out.write("                                    <th>Ngày thuê</th>\n");
      out.write("                                    <th>Ngày hết</th>\n");
      out.write("                                    <th>Gía nước</th>\n");
      out.write("                                    <th>Hướng nhà</th>\n");
      out.write("                                    <th>Chỉ dẫn</th>\n");
      out.write("                                    <th>Nội thất</th>\n");
      out.write("                                    <th>Ngày tạo</th>\n");
      out.write("                                    <th>Ngày cập nhật</th>\n");
      out.write("                                    <th>User id</th>\n");
      out.write("                                    <th>Sửa</th>\n");
      out.write("                                    <th>Xóa</th>\n");
      out.write("                                  </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                <tbody>\n");
      out.write("                                  ");

                                    while(rs.next()){
                                    
      out.write("\n");
      out.write("                                    <tr> \n");
      out.write("                                            <td>");
      out.print(rs.getString(1) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getString(2) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getInt(3) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getInt(4) );
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(5) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getString(6) );
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(7) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getString(8) );
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(9) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getString(10) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getString(11) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getInt(12) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getInt(13) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getString(14) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getString(15) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getInt(16) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getString(17) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getString(18) );
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(19) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getString(20) );
      out.write("</td> \n");
      out.write("                                            <td>");
      out.print(rs.getString(21) );
      out.write("</td>\n");
      out.write("                                            <td>");
      out.print(rs.getString(22) );
      out.write("</td>\n");
      out.write("                                            <td><a href=\"SuaTK?stt=");
      out.print(rs.getString(1));
      out.write("\">\n");
      out.write("                                                    <button class=\"btn btn-primary\">Sửa</button>\n");
      out.write("                                                </a>\n");
      out.write("                                            </td>\n");
      out.write("                                            <td><a href=\"XoaTK?stt=");
      out.print(rs.getString(1));
      out.write("\">\n");
      out.write("                                                    <button class=\"btn btn-warning\">Xóa</button>\n");
      out.write("                                                </a>\n");
      out.write("                                            </td>\n");
      out.write("                                    </tr> \n");
      out.write("                                    ");

                                    }
                                    
      out.write("\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                          </div>\n");
      out.write("                      </div>\n");
      out.write("                  </div>\n");
      out.write("                </div>\n");
      out.write("            </div><!-- .animated -->\n");
      out.write("        </div><!-- .content -->\n");
      out.write("    </div><!-- /#right-panel -->\n");
      out.write("    <!-- Right Panel -->\n");
      out.write("    \n");
      out.write("    <script src=\"../../js/vendor/jquery-2.1.4.min.js\"></script>\n");
      out.write("    <script src=\"../../js/popper.min.js\"></script>\n");
      out.write("    <script src=\"../../js/plugins.js\"></script>\n");
      out.write("    <script src=\"../../js/main.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"../../js/lib/data-table/datatables.min.js\"></script>\n");
      out.write("    <script src=\"../../js/lib/data-table/dataTables.bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"../../js/lib/data-table/dataTables.buttons.min.js\"></script>\n");
      out.write("    <script src=\"../../js/lib/data-table/buttons.bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"../../js/lib/data-table/jszip.min.js\"></script>\n");
      out.write("    <script src=\"../../js/lib/data-table/pdfmake.min.js\"></script>\n");
      out.write("    <script src=\"../../js/lib/data-table/vfs_fonts.js\"></script>\n");
      out.write("    <script src=\"../../js/lib/data-table/buttons.html5.min.js\"></script>\n");
      out.write("    <script src=\"../../js/lib/data-table/buttons.print.min.js\"></script>\n");
      out.write("    <script src=\"../../js/lib/data-table/buttons.colVis.min.js\"></script>\n");
      out.write("    <script src=\"../../js/lib/data-table/datatables-init.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        $(document).ready(function() {\n");
      out.write("          $('#bootstrap-data-table-export').DataTable();\n");
      out.write("        } );\n");
      out.write("    </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
