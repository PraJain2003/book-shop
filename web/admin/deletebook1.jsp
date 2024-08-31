<%@page import="java.sql.*" %>
<%@include file="a1.jsp" %>

<center>
<h1>Delete and Save</h1>
</center>
<%
    //Receive form data
     String name,author,subject,publisher,isbn,unit_price,book_desc,qty,book_id;
    name=request.getParameter("t1");
    author=request.getParameter("t2");
    subject=request.getParameter("t3");
    publisher=request.getParameter("t4");
    isbn=request.getParameter("t5");
    unit_price=request.getParameter("t6");
    book_desc=request.getParameter("t7");
    qty=request.getParameter("t8");
     book_id=request.getParameter("t9");
    
    //load driver for mysql-connetivity with java
    Class.forName("com.mysql.jdbc.Driver");
    
    //Create conection
    String dbpath="jdbc:mysql://localhost:3306/bookshop";
    String dbuser="root";
    String dbpass="";
    
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
    
    //Create sql command
    String sql="delete from bookdata where book_id=?";
    
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql);
    
    //Replace ? with data
    p1.setString(1, book_id);
    //send data to table
    int a=p1.executeUpdate();
    String msg="";
    if(a==1)
    {
        msg="Data is deleted successfully";
    }
    else
    {
        msg="Error : cannot delete data";
    }
    
%>
<center>
    <h3><%= msg%></h3>
    <h3><a href="managebook.jsp">Continue</a></h3> 
</center>