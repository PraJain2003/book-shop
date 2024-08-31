package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contact_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("<div id=\"main\">\n");
      out.write("<div id=\"wrapper\">\n");
      out.write("\t<div id=\"banner\">\n");
      out.write("    \t\n");
      out.write("    </div>\n");
      out.write("    <div id=\"menu\">\n");
      out.write("    \n");
      out.write("    \t<!-- Start css3menu.com BODY section -->\n");
      out.write("<ul id=\"css3menu1\" class=\"topmenu\">\n");
      out.write("\t<li class=\"topmenu\"><a href=\"index.jsp\" style=\"height:32px;line-height:32px;\"><img src=\"styles/home.png\" alt=\"\"/>Home</a></li>\n");
      out.write("\t<li class=\"topmenu\"><a href=\"About.jsp\" style=\"height:32px;line-height:32px;\">About</a></li>\n");
      out.write("\t\n");
      out.write("\t<li class=\"topmenu\"><a href=\"Contact.jsp\" style=\"height:32px;line-height:32px;\">Contact</a></li>\n");
      out.write("\t\n");
      out.write("    <li class=\"topmenu\"><a href=\"UserReg.jsp\" style=\"height:32px;line-height:32px;\">Sign Up</a></li>\n");
      out.write("    \n");
      out.write("    <li class=\"topmenu\"><a href=\"LoginForm.jsp\" style=\"height:32px;line-height:32px;\">Sign In</a></li>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("</ul>\n");
      out.write("<!-- End css3menu.com BODY section -->\n");
      out.write("    \n");
      out.write("    </div><!-- end of menu div -->\n");
      out.write("    <div id=\"middle\">\n");
      out.write("    \t<div id=\"content\">\n");
      out.write("        <!-- InstanceBeginEditable name=\"kota\" -->\n");
      out.write("\n");
      out.write("        \t<h1>Contact Us</h1>\n");
      out.write("        <p><img class=\"strip_img\" src=\"images/blue_strip.jpg\" width=\"600\" height=\"4\" /></p>\n");
      out.write("        <p>Pranjal jain</p>\n");
      out.write("        <p>Email: pranjal@gmail.com </p>\n");
      out.write("        \n");
      out.write("        <p>&nbsp;</p>\n");
      out.write("        <p></p>\n");
      out.write("\t\t<!-- InstanceEndEditable -->        \n");
      out.write("        </div><!-- end of content -->\n");
      out.write("        <div id=\"ad\">\n");
      out.write("        \t<img src=\"images/ad2.jpg\" width=\"190\" height=\"400\"  />\n");
      out.write("            \n");
      out.write("        </div> <!-- end of ad div -->\n");
      out.write("    </div> <!-- End of middle -->\n");
      out.write("    <div id=\"bottom\"></div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
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
