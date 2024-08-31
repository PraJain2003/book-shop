<%@include file="a1.jsp" %>

<%@page import="java.sql.*" %>
<%@page import="pranjal.org.models.mylib" %>
<%
    String i=request.getParameter("c1");
    mylib obj=new mylib();
Class.forName(obj.getDriver());
    Connection cn=DriverManager.getConnection(obj.getConnectionString(),obj.getUserName(),obj.getPassword());    
    String s1="update bookdata set photo=? where book_id=?";
    PreparedStatement p1=cn.prepareStatement(s1);
    p1.setString(1, "no");
        p1.setString(2, i);
        int a=p1.executeUpdate();
            String msg="";
        if(a==1) 
        {

            msg="photo delete succesfully";
            
        }
        else
        {
            msg="photo not deleted";
        }
    %>
    <h3><%=msg%></h3>
    <a href="managebook.jsp">show manage books</a>