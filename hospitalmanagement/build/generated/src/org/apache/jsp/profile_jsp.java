package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/headerprofile.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      response.setContentType("text/html");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>Profile Page</title>\n");
      out.write("     <link href=\"https://fonts.googleapis.com/css2?family=Ubuntu:wght@300;400;500;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/bootstrap.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\" />\n");
      out.write("\t<link href=\"//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\"\n");
      out.write("\t    rel=\"stylesheet\">\n");
      out.write("\t<link href=\"//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\"\n");
      out.write("\t    rel=\"stylesheet\">\n");
      out.write("        <style>\n");
      out.write("             body {\n");
      out.write("            font-family: Arial, sans-serif;\n");
      out.write("            background-color: #f1f1f1;\n");
      out.write("            \n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .profile-container {\n");
      out.write("            max-width: 400px;\n");
      out.write("            margin: 0 auto;\n");
      out.write("            background-color: #fff;\n");
      out.write("            padding: 20px;\n");
      out.write("            border-radius: 8px;\n");
      out.write("            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .profile-image {\n");
      out.write("            max-width: 100%;\n");
      out.write("            height: 100px;\n");
      out.write("            border-radius: 50%;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .upload-button {\n");
      out.write("            margin-top: 10px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        input[type=\"file\"] {\n");
      out.write("            display: none;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .profile-details {\n");
      out.write("            margin-top: 20px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        input[type=\"text\"], input[type=\"email\"] {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 10px;\n");
      out.write("            margin-bottom: 10px;\n");
      out.write("            border: 1px solid #ccc;\n");
      out.write("            border-radius: 4px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        .update-button {\n");
      out.write("            background-color: lightblue;\n");
      out.write("            color: white;\n");
      out.write("            border: none;\n");
      out.write("            padding: 10px 20px;\n");
      out.write("            border-radius: 4px;\n");
      out.write("            cursor: pointer;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");

    if(session.getAttribute("name")==null)
    {
    response.sendRedirect("login.jsp");
}


      out.write("\n");
      out.write("\n");
      out.write("\t\n");
      out.write("\n");
      out.write("\t<!-- header 2 -->\n");
      out.write("\t<div id=\"home\">\n");
      out.write("\t\t<!-- navigation -->\n");
      out.write("\t\t<div class=\"main-top py-1\">\n");
      out.write("\t\t\t<nav class=\"navbar navbar-expand-lg navbar-light fixed-navi\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<!-- logo -->\n");
      out.write("\t\t\t\t\t<h1>\n");
      out.write("\t\t\t\t\t\t<a class=\"navbar-brand font-weight-bold font-italic\" href=\"index.jsp\">\n");
      out.write("\t\t\t\t\t\t\t<span>M</span>edic\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fas fa-syringe\"></i>\n");
      out.write("\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t</h1>\n");
      out.write("\t\t\t\t\t<!-- //logo -->\n");
      out.write("\t\t\t\t\t<button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\"\n");
      out.write("\t\t\t\t\t    aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("\t\t\t\t\t\t<span class=\"navbar-toggler-icon\"></span>\n");
      out.write("\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t<div class=\"collapse navbar-collapse text-center\" id=\"navbarSupportedContent\">\n");
      out.write("\t\t\t\t\t\t<ul class=\"navbar-nav ml-lg-auto\">\n");
      out.write("\t\t\t\t\t\t\t<li class=\"nav-item active mt-lg-0 my-3\">\n");
      out.write("\t\t\t\t\t\t\t\t<a class=\"nav-link\" href=\"index.jsp\">Home\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"sr-only\">(current)</span>\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("                                                        ");
 if(session.getAttribute("name")==null){
      out.write("\n");
      out.write("                            <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"login.jsp\">Login</a>\n");
      out.write("                            </li>\n");
      out.write("                             <li class=\"nav-item\">\n");
      out.write("                                <a class=\"nav-link\" href=\"register.jsp\">Register</a>\n");
      out.write("                            </li>\n");
      out.write("                        ");
 }
                        else{
      out.write("\n");
      out.write("                          \n");
      out.write("                        ");
}
                        
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<li class=\"nav-item mx-lg-4 my-lg-0 my-3\">\n");
      out.write("\t\t\t\t\t\t\t\t<a class=\"nav-link\" href=\"appointment.jsp\">Appointment</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("                                                        <li class=\"nav-item dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t<a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\"\n");
      out.write("\t\t\t\t\t\t\t\t    aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("\t\t\t\t\t\t\t\t\tServices\n");
      out.write("\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"lab.jsp\">Laboratory</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"dropdown-divider\"></div>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a class=\"dropdown-item\" href=\"medical.jsp\">Medical Treatment</a>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("                                                        </li>\n");
      out.write("                                                        <li class=\"nav-item mx-lg-4 my-lg-0 my-3\">\n");
      out.write("\t\t\t\t\t\t\t\t<a class=\"nav-link\" href=\"logout.jsp\">Logout</a>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("                                                       \n");
      out.write("                                                      <li class=\"nav-item\">\n");
      out.write("                            <a class=\"nav-link\" href=\"profile.jsp\"><span   class=\"fa fa-user-circle\" aria-hidden=\"true\"></span></a>\n");
      out.write("                        </li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</nav>\n");
      out.write("\t\t</div>\n");
      out.write("                                             \n");
      out.write("\t\t\n");
      out.write("\t</div>\n");
      out.write("\t<!-- //header 2 -->\n");
      out.write("\n");
      out.write("    <!-- banner 2 -->\n");
      out.write("\t<div class=\"inner-banner-w3ls\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<!-- //banner 2 -->\n");
      out.write("\t</div>\n");
      out.write("\t<!-- page details -->\n");
      out.write("\t<div class=\"breadcrumb-agile\">\n");
      out.write("\t\t<div aria-label=\"breadcrumb\">\n");
      out.write("\t\t\t<ol class=\"breadcrumb\">\n");
      out.write("\t\t\t\t<li class=\"breadcrumb-item\">\n");
      out.write("\t\t\t\t\t<a href=\"index.html\">Home</a>\n");
      out.write("\t\t\t\t</li>\n");
      out.write("\t\t\t\t<li class=\"breadcrumb-item active\" aria-current=\"page\">Patient Profile</li>\n");
      out.write("\t\t\t</ol>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("    <div class=\"profile-container\">\n");
      out.write("        <center>\n");
      out.write("            <form class=\"login-form\">\n");
      out.write("        <h1>Your Profile</h1>\n");
      out.write("        <br>\n");
      out.write("        <img src=\"images/avtar.jpeg\" alt=\"Profile Picture\" class=\"profile-image\" id=\"profile-image\">\n");
      out.write("        <div class=\"upload-button\">\n");
      out.write("            <label for=\"image-upload\" class=\"update-button\">Upload Image</label>\n");
      out.write("            <input class=\"profile-image\" type=\"file\" id=\"image-upload\" accept=\"image/*\">\n");
      out.write("        </div>\n");
      out.write("        </center>\n");
      out.write("        <div class=\"profile-details\">\n");
      out.write("            <strong> <label for=\"name\">Name:</label> </strong>\n");
      out.write("           \n");
      out.write("            ");

                                     if(session.getAttribute("name")!=null){
                         out.print(session.getAttribute("name").toString());
                         
                        }
                                     
      out.write("\n");
      out.write("                                     <br>\n");
      out.write("                                     <br>\n");
      out.write("                                     <strong>  <label for=\"email\">Email:</label> </strong>\n");
      out.write("             ");

                                     if(session.getAttribute("name")!=null){
                         out.print(session.getAttribute("email").toString());
                         
                        }
                                     
      out.write("\n");
      out.write("                                     <br>\n");
      out.write("                                     <br>\n");
      out.write("          <strong>  <label for=\"name\">Hospital Name:</label> </strong>\n");
      out.write("            Medic\n");
      out.write("            <br>\n");
      out.write("            <br>\n");
      out.write("           <strong> <label for=\"email\">Hospital Address:</label> </strong>\n");
      out.write("           The Hospital name Lorem ipsum dolor,New York,Morris Park.\n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("                                     <br>\n");
      out.write("                                     <center>                    \n");
      out.write("                                         <input class=\"update-button\" type=\"submit\" name=\"update\" value=\"Update Profile\"></input>\n");
      out.write("                                          \n");
      out.write("                                     </center>\n");
      out.write("                                     ");
 
                                           if(request.getParameter("update")!=null){
                                               response.sendRedirect("userlogin.jsp");
                                           }
                                           
      out.write("\n");
      out.write("                                          \n");
      out.write("             </form>\n");
      out.write("    </div>\n");
      out.write("                                           <br>\n");
      out.write("    ");
      out.write("<footer>\n");
      out.write("\t\t<div class=\"w3ls-footer-grids pt-sm-4 pt-3\">\n");
      out.write("\t\t\t<div class=\"container py-xl-5 py-lg-3\">\n");
      out.write("\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t<div class=\"col-md-4 w3l-footer\">\n");
      out.write("\t\t\t\t\t\t<h2 class=\"mb-sm-3 mb-2\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"index.jsp\" class=\"text-white font-italic font-weight-bold\">\n");
      out.write("\t\t\t\t\t\t\t\t<span>M</span>edic\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fas fa-syringe ml-2\"></i>\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</h2>\n");
      out.write("\t\t\t\t\t\t<p>Hospital is a place where sick and injured people are treated. People suffering from diseases go to hospitals and come back after recovering. Some hospitals are either government or non-government. It is an institution which deals with health care activities.</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-md-4 w3l-footer my-md-0 my-4\">\n");
      out.write("\t\t\t\t\t\t<h3 class=\"mb-sm-3 mb-2 text-white\">Address</h3>\n");
      out.write("\t\t\t\t\t\t<ul class=\"list-unstyled\">\n");
      out.write("\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fas fa-location-arrow float-left\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t<p class=\"ml-4\">The company name\n");
      out.write("\t\t\t\t\t\t\t\t\t<span>Lorem ipsum dolor,</span>New York,Morris Park. </p>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"my-3\">\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fas fa-phone float-left\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t<p class=\"ml-4\">1234567890</p>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"far fa-envelope-open float-left\"></i>\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"mailto:info@example.com\" class=\"ml-3\">mail@example.com</a>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"col-md-4 w3l-footer\">\n");
      out.write("\t\t\t\t\t\t<h3 class=\"mb-sm-3 mb-2 text-white\">Quick Links</h3>\n");
      out.write("\t\t\t\t\t\t<div class=\"nav-w3-l\">\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"list-unstyled\">\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"index.jsp\">Home</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"mt-2\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"about.jsp\">About Us</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"mt-2\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"gallery.jsp\">Gallery</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"mt-2\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"appointment.jsp\">Appointment</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li class=\"mt-2\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"contact.jsp\">Contact Us</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"border-top mt-5 pt-lg-4 pt-3 pb-lg-0 pb-3 text-center\">\n");
      out.write("\t\t\t\t\t<p class=\"copy-right-grids mt-lg-1\">© 2018 Medic. All Rights Reserved | Design by\n");
      out.write("\t\t\t\t\t\t<a href=\"https://w3layouts.com/\" target=\"_blank\">Developer</a>\n");
      out.write("\t\t\t\t\t</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</footer>\n");
      out.write("\t<!-- //footer -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<!-- Js files -->\n");
      out.write("\t<!-- JavaScript -->\n");
      out.write("\t<script src=\"js/jquery-2.2.3.min.js\"></script>\n");
      out.write("\t<!-- Default-JavaScript-File -->\n");
      out.write("\n");
      out.write("\t<!-- banner slider -->\n");
      out.write("\t<script src=\"js/responsiveslides.min.js\"></script>\n");
      out.write("\t<script>\n");
      out.write("\t\t$(function () {\n");
      out.write("\t\t\t$(\"#slider4\").responsiveSlides({\n");
      out.write("\t\t\t\tauto: true,\n");
      out.write("\t\t\t\tpager: true,\n");
      out.write("\t\t\t\tnav: true,\n");
      out.write("\t\t\t\tspeed: 1000,\n");
      out.write("\t\t\t\tnamespace: \"callbacks\",\n");
      out.write("\t\t\t\tbefore: function () {\n");
      out.write("\t\t\t\t\t$('.events').append(\"<li>before event fired.</li>\");\n");
      out.write("\t\t\t\t},\n");
      out.write("\t\t\t\tafter: function () {\n");
      out.write("\t\t\t\t\t$('.events').append(\"<li>after event fired.</li>\");\n");
      out.write("\t\t\t\t}\n");
      out.write("\t\t\t});\n");
      out.write("\t\t});\n");
      out.write("\t</script>\n");
      out.write("\t<!-- //banner slider -->\n");
      out.write("\n");
      out.write("\t<!-- fixed navigation -->\n");
      out.write("\t<script src=\"js/fixed-nav.js\"></script>\n");
      out.write("\t<!-- //fixed navigation -->\n");
      out.write("\n");
      out.write("\t<!-- smooth scrolling -->\n");
      out.write("\t<script src=\"js/SmoothScroll.min.js\"></script>\n");
      out.write("\t<!-- move-top -->\n");
      out.write("\t<script src=\"js/move-top.js\"></script>\n");
      out.write("\t<!-- easing -->\n");
      out.write("\t<script src=\"js/easing.js\"></script>\n");
      out.write("\t<!--  necessary snippets for few javascript files -->\n");
      out.write("\t<script src=\"js/medic.js\"></script>\n");
      out.write("\n");
      out.write("\t<script src=\"js/bootstrap.js\"></script>\n");
      out.write("\t<!-- Necessary-JavaScript-File-For-Bootstrap -->\n");
      out.write("\n");
      out.write("\t<!-- //Js files -->\n");
      out.write("\n");
      out.write("\n");
      out.write("      <script>\n");
      out.write("       \n");
      out.write("        document.getElementById('image-upload').addEventListener('change', function () {\n");
      out.write("            const image = document.getElementById('profile-image');\n");
      out.write("            const file = this.files[0];\n");
      out.write("            if (file) {\n");
      out.write("                const reader = new FileReader();\n");
      out.write("                reader.onload = function (e) {\n");
      out.write("                    image.src = e.target.result;\n");
      out.write("                };\n");
      out.write("                reader.readAsDataURL(file);\n");
      out.write("            }\n");
      out.write("        });\n");
      out.write("        \n");
      out.write("    </script>\n");
      out.write("</body>\n");
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
