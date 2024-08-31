<%@page import="java.lang.String"%>
<%@page import="pranjal.org.models.mylib"%>
<%@page import="java.sql.* "%>
<%@include file="adminsession.jsp" %>
<%@include file="a1.jsp" %>

<%
        String orderid = request.getParameter("t1");
        mylib obj=new mylib();
        Class.forName(obj.getDriver());
        Connection cn=DriverManager.getConnection(obj.getConnectionString(),obj.getUserName(),obj.getPassword());
                
        String sql="update book_orders set del_date=?, del_status=1 where orderid=?";
        PreparedStatement p1=cn.prepareStatement(sql);
        java.sql.Date dt=new java.sql.Date(new java.util.Date().getTime());
        p1.setDate(1, dt);
        p1.setInt(2,Integer.parseInt(orderid));
        p1.executeUpdate();
        p1.close();
        cn.close();
    %>
    <p>Confirmation Completed</p>
