<%@page import="pranjal.org. models.mylib"%>
<%@page import="java.sql.*" %>
<%@include file="usersession.jsp" %>
<%
String cartid,bookid,price;
cartid=request.getParameter("cartid");
bookid=request.getParameter("bookid");
price=request.getParameter("price");
mylib obj=new mylib();
Class.forName(obj.getDriver());
Connection cn=DriverManager.getConnection(obj.getConnectionString(),obj.getUserName(),obj.getPassword());

String sql="insert into book_orders(orderid,bookid,cartid,amount,order_date,email,del_status) values(?,?,?,?,?,?,?)";
PreparedStatement p1=cn.prepareStatement(sql);
int orderid=obj.generateId("book_orders", 1);
java.sql.Date dt=new java.sql.Date(new java.util.Date().getTime());
p1.setInt(1, orderid);
p1.setInt(2, Integer.parseInt(bookid));
p1.setInt(3, Integer.parseInt(cartid));
p1.setInt(4, Integer.parseInt(price));
p1.setDate(5,dt);
p1.setString(6, e1);
p1.setInt(7,0);
p1.executeUpdate();
cn.close();
p1.close();
obj.updateOrderInCart(cartid);
%>
<h2>Order Completed and Book will be sent to following address in 4-5 days.</h2>

<%
sql="select * from userdata where email='"+e1+"'";
ResultSet r1=obj.fetchData(sql);
if(r1.next())
{
    String name,address,city,state,pin,mobile;
    name=r1.getString(1);
    address=r1.getString(2);
    city=r1.getString(3);
    state=r1.getString(4);
    pin=r1.getString(5);
    mobile=r1.getString(6);
    %>
    <h3>Name : <%= name %></h3>
    <p>Address : <%= address %></p>
    <p>City : <%= city %></p>
    <p>State : <%= state %></p>
    <p>PIN : <%= pin %></p>
    <p>Mobile Number : <%= mobile %></p>
<%
}
%>
<h2>Cash on Delivery : INR <%= price %></h2>
<h3>Thankyou for shopping</h3>
<p><a href="showbooks.jsp">Continue Shopping</a></p>