<%@page import="java.sql.*" %>
<%@include file="a1.jsp" %>

<center>
<h1>Edit and Save</h1>
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
    String sql="update bookdata set name=?,author=?,subject=?,publisher=?,isbn=?,unit_price=?,book_desc=?,qty=? where book_id=?";
    
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql);
    
    //Replace ? with data
         p1.setString(9, book_id);
    p1.setString(1, name);
    p1.setString(2, author);
    p1.setString(3, subject);
    p1.setString(4, publisher);
    p1.setString(5, isbn);
       p1.setString(6,unit_price);
    p1.setString(7, book_desc);
    p1.setString(8, qty);

    
    //send data to table
    int a=p1.executeUpdate();
    String msg="";
    if(a==1)
    {
        msg="Data is saved successfully";
    }
    else
    {
        msg="Error : cannot save data";
    }
    
%>
<center>
    <h3><%=msg%></h3> 
            
    <h3><a href="managebook.jsp">Continue</a></h3> 