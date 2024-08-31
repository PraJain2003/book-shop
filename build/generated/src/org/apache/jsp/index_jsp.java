package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/home.jsp");
    _jspx_dependants.add("/general.jsp");
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Untitled Document</title>\n");
      out.write("<link href=\"stATIC/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<script src=\"stATIC/JQUERY/jquery.js\"></script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("<nav class=\"navbar navbar-expand-md bg-success navbar-dark\" >\n");
      out.write("<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"50\" height=\"40\" fill=\"currentColor\" class=\"bi bi-bootstrap-fill\" viewBox=\"0 0 16 16\">\n");
      out.write("  <path d=\"M6.375 7.125V4.658h1.78c.973 0 1.542.457 1.542 1.237 0 .802-.604 1.23-1.764 1.23H6.375zm0 3.762h1.898c1.184 0 1.81-.48 1.81-1.377 0-.885-.65-1.348-1.886-1.348H6.375v2.725z\"/>\n");
      out.write("  <path d=\"M4.002 0a4 4 0 0 0-4 4v8a4 4 0 0 0 4 4h8a4 4 0 0 0 4-4V4a4 4 0 0 0-4-4h-8zm1.06 12V3.545h3.399c1.587 0 2.543.809 2.543 2.11 0 .884-.65 1.675-1.483 1.816v.1c1.143.117 1.904.931 1.904 2.033 0 1.488-1.084 2.396-2.888 2.396H5.062z\"/>\n");
      out.write("</svg>\n");
      out.write("\t<a href=\"#\" class=\"navbar-brand text-light font-weight-bold\">BookShop</a>\n");
      out.write("\t<button class=\"navbar-toggler\" id=\"b1\">\n");
      out.write("    \t<span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"collnav\">\n");
      out.write("\n");
      out.write("    \t<ul class=\"navbar-nav text-center\">\n");
      out.write("            <li class=\"nav-item\"><a href=\"home.jsp\" class=\"nav-link active\">Home</a></li>\n");
      out.write("            <li class=\"nav-item\"><a href=\"about.jsp\" class=\"nav-link active\">About</a></li>\n");
      out.write("            <li class=\"nav-item\"><a href=\"contact.jsp\" class=\"nav-link active\">Contact</a></li>\n");
      out.write("           \n");
      out.write("            \n");
      out.write("            <li class=\"nav-item\"><a href=\"login.jsp\" class=\"nav-link active \">Login</a></li>\n");
      out.write("        <li class=\"nav-item\"><a href=\"logout.jsp\" class=\"nav-link active \">Logout</a></li>\n");
      out.write("\n");
      out.write("           \n");
      out.write("        </ul>\n");
      out.write("        </div>\n");
      out.write("\t\n");
      out.write("\t\t\t\n");
      out.write("   \n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("\t$(document).ready(function(e) {\n");
      out.write("        $(\"#c1\").click(function(e) {\n");
      out.write("            $(\"#dd1\").slideToggle(1000);\n");
      out.write("        });\n");
      out.write("\n");
      out.write("\t$(\"#b1\").click(function(e) {\n");
      out.write("            $(\"#collnav\").slideToggle(1000);\n");
      out.write("        });\n");
      out.write("    });\n");
      out.write("\t\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
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
