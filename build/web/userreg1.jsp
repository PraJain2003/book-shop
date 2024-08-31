<%@page import="pranjal.org.models.mylib"%>
<%@page import="java.sql.* "%>


<center>
<h1>user registration</h1>
</center>
 <%
                    String name,address,city,state,pin,mobile,email,password;
                    name=request.getParameter("t1");
                    address=request.getParameter("t2");
                    city=request.getParameter("t3");
                    state=request.getParameter("t4");
                    pin=request.getParameter("t5");
                    mobile=request.getParameter("t6");
                    email=request.getParameter("t7");
                    password=request.getParameter("t8");
                  Class.forName("com.mysql.jdbc.Driver");
                    //create connection with mysql
                    String dbpath="jdbc:mysql://localhost:3306/bookshop";
                    String dbuser="root";
                    String dbpass="";
                    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
                    //create sql command
                    String sql="insert into userdata values(?,?,?,?,?,?,?)";
                    String sql1="insert into logindata values(?,?,?)";
                    
                    PreparedStatement p1=cn.prepareStatement(sql);
                    PreparedStatement p2=cn.prepareStatement(sql1);
                    
                    p1.setString(1, name);
                    p1.setString(2, address);
                    p1.setString(3, city);
                    p1.setString(4, state);
                    p1.setString(5, pin);
                    p1.setString(6, mobile);
                    p1.setString(7, email);
                    
                    p2.setString(1, email);
                    p2.setString(2, password);
                    p2.setString(3, "user");
                    
                    p1.executeUpdate();
                    p2.executeUpdate();
                    
                    cn.close();
                    p1.close();
                    p2.close();
		%>
                <p><a href="login.jsp">Go To Login</a></p>


