
<%@page import="pranjal.org.models.mylib "%>
<%@page import="java.sql.*" %>
<%@include file="usersession.jsp" %>
<%
String bookid=request.getParameter("H1");
mylib obj=new mylib();
Class.forName(obj.getDriver());
Connection cn=DriverManager.getConnection(obj.getConnectionString(),obj.getUserName(),obj.getPassword());

String sql="insert into cart values(?,?,?,?,?)";
PreparedStatement p1=cn.prepareStatement(sql);
int cartid=obj.generateId("cart", 1);
int bid=Integer.parseInt(bookid);
java.sql.Date dt=new java.sql.Date(new java.util.Date().getTime());

p1.setInt(1, cartid);
p1.setInt(2, bid);
p1.setDate(3, dt);
p1.setInt(4, 0);
p1.setString(5, e1);
p1.executeUpdate();

 sql="select * from bookdata where book_id="+bookid;
    ResultSet r1=obj.fetchData(sql);
    if(r1.next())
    {
        String name,author,subject,publisher,isbn,price,book_desc,qty;
        name=r1.getString(2);
        author=r1.getString(3);
        subject=r1.getString(4);
        publisher=r1.getString(5);
        isbn=r1.getString(6);
        price=r1.getString(7);
        book_desc=r1.getString(8);
        qty=r1.getString(9);
        String book_id=r1.getString(1);
		%>
                <h3>Book Name : <%= name %>
                    Book ID : <%= bookid %>
</h3>
<p>Subject : <%= subject %></p>
        <p>Author : <%= author %></p>
        <p>Publisher : <%= publisher %></p>
        <p>ISBN : <%= isbn %></p>
        <p>Price : <%= price %></p>
        <p>Description : <%= book_desc %></p>
        <p>Quantity	:	<%= qty %></p>
        <p style="width:200px; height:auto;">
        <%
		String photo=obj.getPhoto(Integer.parseInt(bookid));
                %>
                <img src="../admin/photos/<%= photo %>" width="150" height="150" />
               
        </p>
        
        <h1>Book Added to Cart Successfully</h1>
        <p><a href="showbooks.jsp">Continue Shopping</a></p>
        <p><a href="showcart.jsp">Show cart</a></p>

        
        <%
                  %>
                <%
                
		%>
        
        
        <hr />
        <%
    }
    %>
        