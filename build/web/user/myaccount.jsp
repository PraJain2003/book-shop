 <%@page import="pranjal.org.models.mylib"%>
<%@page import="java.sql.* "%>
<%@include file="usersession.jsp" %>
<%
    mylib obj=new mylib();
    String sql="select * from my_orders where email='"+e1+"'";
    ResultSet r1=obj.fetchData(sql);
	int f=0;
    while(r1.next())
    {
		f=1;
        String name,author,subject,publisher,isbn,unit_price,book_desc;
        name=r1.getString("name");
        author=r1.getString("author");
        subject=r1.getString("subject");
        publisher=r1.getString("publisher");
        isbn=r1.getString("isbn");
        unit_price=r1.getString("unit_price");
        book_desc=r1.getString("book_desc");
        //qty=r1.getString(9);
        String bookid=r1.getString("book_id");
        
        String orderid,del_date,del_status,order_date;
        orderid=r1.getString("orderid");
        order_date=r1.getString("order_date");
        del_date=r1.getString("del_date");
        del_status=r1.getString("del_status");
        int ds=Integer.parseInt(del_status);
		%>
    
    
        <h3>Book Name : <%= name %> 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        Book ID : <%= bookid %>
        </h3>
    <p>Subject : <%= subject %><br />
        Author : <%= author %><br />
        Publisher : <%= publisher %><br />
        ISBN : <%= isbn %><br />
        Price : <%= unit_price %><br />
        Description : <%= book_desc %>
    </p>
        <p>
            Order Id : <%= orderid %><br />
            Order Date : <%= order_date %><br />
            Delivery Date : <% if(del_date==null) out.println("Not Delivered"); else out.println(del_date); %><br />
            Delivery Status : <%
                if(ds==0) out.println("Not Delivered");
                else if(ds==1) out.println("Delivered");
                else out.println("Canceled of Returned");
            %>
        </p>  
       
      
        <%
    }
	if(f==0)
	{
		%>
		<h2>No orders placed</h2>
		<%
	}
    %>