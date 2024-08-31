<%@include file="a1.jsp" %>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pranjal.org.models.mylib"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.DataInputStream"%>
<% 		
            String book_id=request.getParameter("book_id");
            String saveFile="";
            String contentType = request.getContentType();
            if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
                    DataInputStream in = new DataInputStream(request.getInputStream());
                    int formDataLength = request.getContentLength();
            byte dataBytes[] = new byte[formDataLength];
            int byteRead = 0;
            int totalBytesRead = 0;
            while (totalBytesRead < formDataLength) {
            byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
            totalBytesRead += byteRead;
            }
            String file = new String(dataBytes);
            saveFile = file.substring(file.indexOf("filename=\"") + 10);
            saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
            saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
            int lastIndex = contentType.lastIndexOf("=");
            String boundary = contentType.substring(lastIndex + 1,contentType.length());
            int pos;
            pos = file.indexOf("filename=\"");
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            pos = file.indexOf("\n", pos) + 1;
            int boundaryLocation = file.indexOf(boundary, pos) - 4;
            int startPos = ((file.substring(0, pos)).getBytes()).length;
            int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
			
			
			saveFile=book_id+"_"+saveFile;
			File f = new File("C:/Users/1/Documents/NetBeansProjects/bookshopp/web/admin/photos/" +saveFile);
            FileOutputStream fileOut = new FileOutputStream(f);
            fileOut.write(dataBytes, startPos, (endPos - startPos));
            fileOut.flush();
            fileOut.close();

            
            //Send page details in table
            mylib obj=new mylib();
            
Class.forName(obj.getDriver());
Connection cn=DriverManager.getConnection(obj.getConnectionString(), obj.getUserName(), obj.getPassword());
String sql="update bookdata set photo=? where book_id=?";
PreparedStatement p1=cn.prepareStatement(sql);
p1.setString(1,saveFile);
p1.setInt(2,Integer.parseInt(book_id));
p1.executeUpdate();
            }
            %>
            <h2>Photo Uploaded</h2>
            <p><a href="managebook.jsp" >Continue</a></p>