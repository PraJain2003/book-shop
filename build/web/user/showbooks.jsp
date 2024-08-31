<%@page import="pranjal.org.models.mylib "%>
<%@page import="java.sql.*" %>
<%@include file="usersession.jsp" %>
<%
    mylib obj=new mylib();
    String sql="select * from bookdata";
    ResultSet r1=obj.fetchData(sql);
    while(r1.next())
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
        String bookid=r1.getString(1);
		%>
   

<p style="margin-top:0px;">
		Subject :<%= subject %><br />
        Author :<%= author %><br />
        Publisher : <%= publisher %><br />
        ISBN : <%= isbn %><br />
        Price : <%= price %><br />
        Description : <%= book_desc %><br />
        Available Quantity	:	<%= qty %><br />
       <p style="width:200px; height:150; ">
        <%
		String photo=obj.getPhoto(Integer.parseInt(bookid));
                %>
                <img src="../admin/photos/<%= photo %>" width="150" height="150" />
                <%
                
		%>
        </p>
        
<form method="post" action="addtocart.jsp">
            <input type="hidden" name="H1" value="<%= bookid%>" />
            <input type="submit" name="B1" class="btn1" value="ADD to cart" />
        </form>
        <%
    }
    %>