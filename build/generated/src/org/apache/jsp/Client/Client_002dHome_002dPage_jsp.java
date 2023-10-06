package org.apache.jsp.Client;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Client_002dHome_002dPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Client/../Same-Code/Header-Client-Page.jsp");
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"utf-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<title>Pets Lovers</title>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../Home/index.css\">\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css\">\n");
      out.write("\t<link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\"\n");
      out.write("    integrity=\"sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT\" crossorigin=\"anonymous\" />\n");
      out.write("\t<script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\"\n");
      out.write("    integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\"\n");
      out.write("    crossorigin=\"anonymous\"></script>\n");
      out.write("</head>\n");
      out.write("<style>\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<body>\n");
      out.write("<html>\n");
      out.write("<style>\n");
      out.write(".Client-side-btn{\n");
      out.write("\tmargin-left: 5%;\n");
      out.write("}\n");
      out.write(".Client-side-btn li{\n");
      out.write("\twidth: 100%;\n");
      out.write("\tpadding: 0% 5%;\n");
      out.write("}\n");
      out.write(".Client-side-btn a{\n");
      out.write("\ttext-align: center;\n");
      out.write("\tcolor: white;\n");
      out.write("\tfont-family: cursive;\n");
      out.write("\tfont-size: 150%;\n");
      out.write("}\n");
      out.write(".Client-side-btn a:hover{\n");
      out.write("\tborder-radius: 10%;\n");
      out.write("\tbackground-color: lightblue;\n");
      out.write("\tcolor: black;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<body>\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-light bg-primary\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("\t<div class=\"navbar-brand\">\n");
      out.write("\t\t<a href=\"../Home/Home-Page.html\"><img src=\"../Home/logo.png\"></a>\n");
      out.write("\t</div>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNav\" aria-controls=\"navbarNav\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span> \n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse Client-side-btn\" id=\"navbarNav\">\n");
      out.write("      <ul class=\"navbar-nav\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"../Client/Client-ViewProduct.jsp\">Purchase</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"\">Cancel_Product</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link\" href=\"../Client/Client-Addtocart.jsp\">Add_Cart</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"\">Feedback</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link\" href=\"../Client/Form-Profile.jsp\">Profile</a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("</body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("    \n");
      out.write("<div id=\"carouselExampleIndicators\" class=\"carousel slide-bar\" data-bs-ride=\"carousel\">\n");
      out.write("\t<div class=\"carousel-inner images\">\n");
      out.write("\t\t<div class=\"carousel-item active\">\n");
      out.write("\t\t\t<img src=\"../Home/Both-Banner5.png\" class=\"d-block w-100\" alt=\"...\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"carousel-item\">\n");
      out.write("\t\t\t<img src=\"../Home/Both-Banner4.png\" class=\"d-block w-100\" alt=\"...\">\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<div class=\"carousel-item\">\n");
      out.write("\t\t\t<img src=\"../Home/Both-Banner6.png\" class=\"d-block w-100\" alt=\"...\">\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<button class=\"carousel-control-prev arrow\" type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide=\"prev\">\n");
      out.write("\t\t<span class=\"carousel-control-prev-icon\" aria-hidden=\"true\"></span>\n");
      out.write("\t\t<span class=\"visually-hidden\">Previous</span>\n");
      out.write("\t</button>\n");
      out.write("\t<button class=\"carousel-control-next arrow\" type=\"button\" data-bs-target=\"#carouselExampleIndicators\" data-bs-slide=\"next\">\n");
      out.write("\t\t<span class=\"carousel-control-next-icon\" aria-hidden=\"true\"></span>\n");
      out.write("\t\t<span class=\"visually-hidden\">Next</span>\n");
      out.write("\t</button>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"main-category\">\n");
      out.write("\t<p class=\"category-title\">Lets <b>Shop</b> by pet</p>\n");
      out.write("\t<div class=\"category-Both-Image\">\n");
      out.write("\t\t<a href=\"\"><img src=\"../Home/Dog.jpg\" class=\"rounded float-start\" alt=\"...\"></a>\n");
      out.write("\t\t<a href=\"\"><img src=\"../Home/Cat.jpg\" class=\"rounded float-start\" alt=\"...\"></a>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<p class=\"Best-Heading\">Best Selling Products</p>\n");
      out.write("\n");
      out.write("<div class=\"Main-Best-Sell\">\n");
      out.write("\t<div class=\"Product1\">\n");
      out.write("\t\t<img src=\"../Home/Product-1.png\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("\t\t<div class=\"title\">\n");
      out.write("\t\t\t<h5>Royal Canin Maxi Food 15Kg</h5>\n");
      out.write("\t\t\t<p>? 8,272</p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"Product2\">\n");
      out.write("\t\t<img src=\"../Home/Product-2.png\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("\t\t<div class=\"title\">\n");
      out.write("\t\t\t<h5>Automatic Drinkwell 7 litre</h5>\n");
      out.write("\t\t\t<p>? 15,299</p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"Product3\">\n");
      out.write("\t\t<img src=\"../Home/Product-3.png\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("\t\t<div class=\"title\">\n");
      out.write("\t\t\t<h5>Virbac Nutrich (60 Tablets)</h5>\n");
      out.write("\t\t\t<p>? 629</p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"Product4\">\n");
      out.write("\t\t<img src=\"../Home/Product-4.png\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("\t\t<div class=\"title\">\n");
      out.write("\t\t\t<h5>Winter Wear Maroon Jackets</h5>\n");
      out.write("\t\t\t<p>? 892</p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<div class=\"footer bg-primary\">\n");
      out.write("\t<table>\n");
      out.write("\t\t<tr>\n");
      out.write("    \t<td>\n");
      out.write("    \t\t<a href=\"\"><img src=\"logo.png\" class=\"card-img-top rounded\" alt=\"...\"></a>\n");
      out.write("    \t</td>\n");
      out.write("    \t<td>\n");
      out.write("    \t\t<h2><b>Contact Information</b></h2>\n");
      out.write("    \t\t<p><i class=\"fa-solid fa-phone\"></i> +91 99XXXXX909</p>\n");
      out.write("    \t</td>\n");
      out.write("\t\t</tr>\n");
      out.write("\t</table>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html> ");
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
