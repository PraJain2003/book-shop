<%@include file="a1.jsp" %>

<%@page import="java.sql.* "%>

<%
    //recieve form data
    String name,author,subject,publisher,isbn,unit_price,book_desc,qty;
    name=request.getParameter("t1");
    author=request.getParameter("t2");
    subject=request.getParameter("t3");
    publisher=request.getParameter("t4");
    isbn=request.getParameter("t5");
    unit_price=request.getParameter("t6");
    book_desc=request.getParameter("t7");
     qty=request.getParameter("t8");

    String usertype = "admin";
    
    
    //load driever with mysql connectivity
    Class.forName("com.mysql.jdbc.Driver");
    //create connection with mysql
    String dbpath="jdbc:mysql://localhost:3306/bookshop";
    String dbuser="root";
    String dbpass="";
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
    //create sql command
    String sql="insert into bookdata values(0,?,?,?,?,?,?,?,?,?)";
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql);
    // replace ? with data
    p1.setString(1,name);
    p1.setString(2,author);
    p1.setString(3,subject);
    p1.setString(4,publisher);
    p1.setString(5,isbn);
    p1.setString(6,unit_price);
    p1.setString(7,book_desc);
    p1.setString(8,qty);
    p1.setString(9,"no");
   
   
    //senddata to table
    int a=p1.executeUpdate();
    String msg="";
    if(a==1)
    {
        msg="Data is saved successfully";
    }
    else
    {
        msg="error:cannot save data";
    }
    
    
    
%>
<center>
<h3><%=msg%></h3>
<p><a href="bookupload.jsp">Add More books</a></p>
<h3><a href="managebook.jsp">Showdata</a></h3>
