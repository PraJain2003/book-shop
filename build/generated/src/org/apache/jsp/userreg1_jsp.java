package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class userreg1_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("<h1>user registration</h1>\n");
      out.write("</center>\n");

    //recieve form data
    String name,address,city,state,pin,mobile,email,password,confirm;
    name=request.getParameter("t1");                    
    address=request.getParameter("t2");
    city=request.getParameter("t3");
    state=request.getParameter("t4");
    pin=request.getParameter("t5");
    mobile=request.getParameter("t6");
    email=request.getParameter("t7");
    password=request.getParameter("t8");
    confirm=request.getParameter("t9");
    
    
    //load driever with mysql connectivity
    Class.forName("com.mysql.jdbc.Driver");
    //create connection with mysql
    String dbpath="jdbc:mysql://localhost:3306/bookshop";
    String dbuser="root";
    String dbpass="";
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
    //create sql command
    String sql="insert into userdata values(?,?,?,?,?,?,?)";
    String s1="insert into logindata values(?,?,?)";
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql);
     PreparedStatement p2=cn.prepareStatement(s1);
    // replace ? with data
    p1.setString(1,name);
    p1.setString(2,address);
    p1.setString(3,city);
    p1.setString(4,state);
    p1.setString(5,pin);
    p1.setString(6,mobile);
    p1.setString(7,email);
    p2.setString(1,email);
    p2.setString(2,password);
       p2.setString(3,"user");

    //senddata to table
    int a=p1.executeUpdate();
    String msg="";
    if(a==1)
    {
        msg="data is saved successfully";
    }
    else
    {
        msg="error:cannot save data";
    }
    int b=p2.executeUpdate();
    
    String msga="";
    if(b==1)
    {
        msga="data is saved successfully";
    }
    else
    {
        msga="error:cannot save data";
    }
    
    

      out.write("\n");
      out.write("\n");
      out.write("<h3>");
      out.print(msg);
      out.write("</h3>\n");
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
