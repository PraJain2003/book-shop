<%@page import="pranjal.org.models.mylib"%>
<%@page import="java.sql.*" %>
<%@include file="usersession.jsp" %>
<%
    mylib obj=new  mylib();
    String sql="select * from my_cart where order_status=0 and  email='"+e1+"'";
    ResultSet r1=obj.fetchData(sql);
    
    int f=0;
    while(r1.next())
    {
        f=1;
        String name,author,subject,publisher,isbn,price,cartid;
        name=r1.getString("name");
        author=r1.getString("author");
        subject=r1.getString("subject");
        publisher=r1.getString("publisher");
        isbn=r1.getString("isbn");
        price=r1.getString("unit_price");
        cartid=r1.getString("cartid");
        String bookid=r1.getString("bookid");
        
		%>
                <h3>Book Name : <%= name %> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Book ID : <%= bookid %>
</h3>
<p>Subject : <%= subject %></p>
        <p>Author : <%= author %></p>
        <p>Publisher : <%= publisher %></p>
        <p>ISBN : <%= isbn %></p>
        <p>Price : <%= price %></p>
         <div style="width:200px; height:auto; ">
        <%
		String photo=obj.getPhoto(Integer.parseInt(bookid));
                %>
                <img src="../admin/photos/<%= photo %>" width="150" height="150" />
                <%
                
		%>
        </div>
        <p><a href="orderbook.jsp?bookid=<%= bookid %>&amp;cartid=<%= cartid %>&amp;price=<%= price %>">Make Final Order</a></p>

                <%
    }
    %>