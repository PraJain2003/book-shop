<%@include file="a1.jsp" %>

<%@page import="pranjal.org.models.mylib"%>
<%@page import="java.sql.*"%>

<%
    //load driver for mysql-connetivity with java
        mylib obj=new mylib();

    //Create sql command
    String sql="select * from bookdata ";
    //create statement
    
    //Fetch data
    ResultSet r1=obj.fetchData(sql);
    
    
    while(r1.next())
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
        <h3><%= i %></h3>
        <p>
           name: <%= a %><br/>
            
           author : <%= b %><br/>
           subject:<%= c %><br/>
            publisher :<%= d %><br/>
            isbn: <%= e %><br/>
            unit_price : <%= f %><br/>
             book_desc: <%= g %><br/>
            qty : <%= h %><br/>
            
        </p>
         <%
		String photo=obj.getPhoto(Integer.parseInt(i));
                if(photo.equalsIgnoreCase("no"))
                {
                    %>
                    <form method="post" enctype="multipart/form-data" action="uploadphoto.jsp?book_id=<%=i%>" >
        			  <p>Photo 
        			    <label for="F1"></label>
        			<input type="file" name="F1" id="F1" />
        			  </p>
        			  <p>
        			    <input type="submit" name="B1" id="B1" value="Upload Photo" />
                      </p>
        			</form>
                    
                    <%
                }
                else
                {
                    %>
                    <img src="photos/<%= photo %>" width="250" height="180" />
                    <form method="post" action="deletephoto1.jsp" >
        			  
        			  <p>
        			    <input type="hidden" name="c1" id="c1" value="<%= i %>" />
                                    <input type="submit" value="delete photo"/>
                      </p>
        			</form>
                <%
                }
		%>
        
        <form method="post" action="editbook.jsp">
            <input type="hidden" name="H1" value="<%= i%>" />
            <input type="submit" name="B1" class="btn1" value="Edit" />
        </form>
            <form method="post" action="deletebook.jsp">
            <input type="hidden" name="H1" value="<%= i %>" />
            <input type="submit" name="B1"  class="btn1" value="Delete" />
        </form>
   

        <%
    }
    
%>
5