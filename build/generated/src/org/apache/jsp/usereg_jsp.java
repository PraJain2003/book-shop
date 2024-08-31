package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class usereg_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<h1>user Data Register</h1>\n");
      out.write("\n");
      out.write("<form method=\"post\" action=\"userreg1.jsp\">\n");
      out.write("    <p>name<input type=\"text\" name=\"t1\" id=\"txt1\"</p>\n");
      out.write("    <p>address:<input type=\"text\" name=\"t2\" id=\"txt2\"</p>\n");
      out.write("    <p>city<input type=\"text\" name=\"t3\" id=\"txt3\"</p>\n");
      out.write("    <p>state<input type=\"text\" name=\"t4\" id=\"txt4\"</p>\n");
      out.write("    <p>pin<input type=\"text\" name=\"t5\" id=\"txt5\"</p>\n");
      out.write("    <p>mobile<input type=\"text\" name=\"t6\" id=\"txt6\"</p>\n");
      out.write("    <p>email<input type=\"text\" name=\"t7\" id=\"txt7\"</p>\n");
      out.write("     <p>password<input type=\"text\" name=\"t8\" id=\"txt8\"</p>\n");
      out.write("    <p>confirm password<input type=\"text\" name=\"t9\" id=\"txt9\"</p>\n");
      out.write("    <p><button type=\"submit\"class=\"btn1\">register</button></p>\n");
      out.write("    </form>\n");
      out.write("\n");
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
