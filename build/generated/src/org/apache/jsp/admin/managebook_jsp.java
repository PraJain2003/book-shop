package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class managebook_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');

    //load driver for mysql-connetivity with java
    Class.forName("com.mysql.jdbc.Driver");
    
    //Create conection
    String dbpath="jdbc:mysql://localhost:3306/bookshop";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
    
    //Create sql command
    String sql="select * from bookdata ";
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql);
    
    //Fetch data
    ResultSet r1=p1.executeQuery();
    
    
    while(r1.next())
    {
        String a,b,c,d,e,f,g,h;
        a=r1.getString("name");
        b=r1.getString("author");
        c=r1.getString("subject");
        d=r1.getString("publisher");
        e=r1.getString("isbn");
        f=r1.getString("unit_price");
        g=r1.getString("book_desc");
        h=r1.getString("qty");

        
        
      out.write("\n");
      out.write("        <h3>");
      out.print( c );
      out.write("</h3>\n");
      out.write("        <p>\n");
      out.write("           name: ");
      out.print( a );
      out.write("<br/>\n");
      out.write("            \n");
      out.write("           author : ");
      out.print( b );
      out.write("<br/>\n");
      out.write("            publisher :");
      out.print( d );
      out.write("<br/>\n");
      out.write("            isbn: ");
      out.print( e );
      out.write("<br/>\n");
      out.write("            unit_price : ");
      out.print( f );
      out.write("<br/>\n");
      out.write("                        book_desc: ");
      out.print( g );
      out.write("<br/>\n");
      out.write("            qty : ");
      out.print( h );
      out.write("<br/>\n");
      out.write("\n");
      out.write("            \n");
      out.write("        </p>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <form method=\"post\" action=\"editbook.jsp\">\n");
      out.write("            <input type=\"hidden\" name=\"H1\" value=\"");
      out.print( f);
      out.write("\" />\n");
      out.write("            <input type=\"submit\" name=\"B1\" class=\"btn1\" value=\"Edit\" />\n");
      out.write("        </form>\n");
      out.write("            <form method=\"post\" action=\"deletebook.jsp\">\n");
      out.write("            <input type=\"hidden\" name=\"H1\" value=\"");
      out.print( f );
      out.write("\" />\n");
      out.write("            <input type=\"submit\" name=\"B1\"  class=\"btn1\"value=\"Delete\" />\n");
      out.write("        </form>\n");
      out.write("   \n");
      out.write("\n");
      out.write("        ");

    }
    

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
