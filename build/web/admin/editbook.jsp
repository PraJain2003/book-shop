<%@page import="java.sql.* "%>
<%@include file="a1.jsp" %>

<center>
<h1>Edit and Save</h1>
</center>
<%
    String book_id=request.getParameter("H1");
    if(book_id==null)
        
    {
        %>
        <h3><a href="adminhome.jsp">Select record</a></h3>
        <%
    }
    else
    {
        Class.forName("com.mysql.jdbc.Driver");
    
        //Create conection
        String dbpath="jdbc:mysql://localhost:3306/bookshop";
        String dbuser="root";
        String dbpass="";

        Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);

        //Create sql command
        String sql="select * from bookdata where book_id=?";
        //create statement
        PreparedStatement p1=cn.prepareStatement(sql);
        p1.setString(1,book_id);
        //Fetch data
        ResultSet r1=p1.executeQuery();

     if(r1.next())
        {
            String a,b,c,d,e,f,g,h,i;
            a=r1.getString("name");
            b=r1.getString("author");
            c=r1.getString("subject");
            d=r1.getString("publisher");
            e=r1.getString("isbn");
            f=r1.getString("unit_price");
            g=r1.getString("book_desc");
            h=r1.getString("qty");
            i=r1.getString("book_id");


%>

           
<center>
    <form method="post" action="editbook1.jsp">

    <p>name <input value="<%= a %>" type="text" name="t1" id="txt1" /></p>
    <p>author <input value="<%= b %>" type="text" name="t2" id="txt2" /></p>
    <p>subject<input value="<%= c %>" type="text" name="t3" id="txt3" /></p>
    <p>publisher<input  value="<%= d %>" type="text" name="t4" id="txt4" /></p>
        <p>isbn<input  value="<%= e%>" type="text" name="t5" id="txt5" /></p>
    <p>unit_price<input  value="<%= f %>" type="text" name="t6" id="txt6" /></p>
    <p>book_desc<input  value="<%= g %>" type="text" name="t7" id="txt7" /></p>
    <p>qty<input value="<%= h %>" type="text" name="t8" id="txt8" /></p>
    <p>book_id<input readonly value="<%= i %>" type="text" name="t9" id="txt9" /></p>

    
    <button type="submit" id="btn" class="btn1">Save </button> 
</form>
<%
        }//end of if r1.next
        else
        {
            %>
            <h3>Error : No data found</h3>
            <%
        }
    }//end of if in which we sent request to edit       }
%>
<h3><a href="adminhome.jsp">Back</a></h3>
</center>