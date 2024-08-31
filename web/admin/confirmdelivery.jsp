 <%@page import="pranjal.org.models.mylib"%>
<%@page import="java.sql.* "%>
<%@include file="a1.jsp" %>

<%@include file="adminsession.jsp" %><%
            mylib obj=new mylib();
    String sql="select * from my_orders where del_status=0";
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
        cartid=r1.getString("book_desc");
        String bookid=r1.getString("book_id");
        String orderid=r1.getString("orderid");
        String user_email=r1.getString("email");
        ResultSet ur1=obj.fetchData("select * from userdata where email='"+user_email+"'");
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
        <%
        if(ur1.next())
        {
            String uname,address,city,state,pin,mobile_no;
            uname=ur1.getString("name");
            address=ur1.getString("address");
            city=ur1.getString("city");
            state=ur1.getString("state");
            pin=ur1.getString("pin");
            mobile_no=ur1.getString("mobile");
            %>
            <p>
                Name : <%= uname %><br/>
                Address : <%= address %><br/>
                City : <%= city %><br/>
                State : <%= state %><br/>
                PIN : <%= pin %><br/>
                Mobile : <%= mobile_no %><br/>
                Email : <%= user_email %>
            </p>
            <%
        }
        %>
        <form method="post" action="confirmdelivery1.jsp">
            <input type="hidden" name="t1" value="<%= orderid %>" />
            <input type="submit" name="B1" value="Confirm" />
        </form>
    
        
        
        
        <%
    }
    if(f==0)
    {
        %>
        <h2>No Books in Cart Continue Shopping</h2>
        <%
    }
    %>
            
            