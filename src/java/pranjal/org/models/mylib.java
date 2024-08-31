/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pranjal.org.models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Pranjal
 */
public class mylib {
    public String getDatabaseName()
    {
            return "bookshop";
    }
    public String getPassword()
    {
            return "";
    }
    public String getUserName()
    {
            return "root";
    }
    public String getDriver()
    {
            return "com.mysql.jdbc.Driver";
    }
    public String getConnectionString()
    {
            return "jdbc:mysql://localhost:3306/"+getDatabaseName();
    }
      public String getPhoto(int bookid)
    {
        String photo="";
        try
        {
            String sql="select photo from bookdata where book_id="+bookid;
            ResultSet r1=fetchData(sql);
            if(r1.next())
            {
                photo=r1.getString(1);
            }
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return photo;
    }
 public int generateId(String tableName,int startvalue)
    {
            int id=startvalue;
            try
            {

                    Class.forName(getDriver()).newInstance();
                    Connection cn=DriverManager.getConnection(getConnectionString(),getUserName(),getPassword());
                    String sql="select * from " + tableName;
                    PreparedStatement pst=cn.prepareStatement(sql);

                    ResultSet rs=pst.executeQuery();

                    if(rs.next())
                    {
                            while(rs.next())
                            {
                                    id=rs.getInt(1);
                            }
                            id=id+1;
                    }
            }
            catch(Exception e)
            {
                    System.out.println(e);
            }
            return id;
    }
 public ResultSet fetchData(String sql)
    {
            ResultSet rs=null;
            try
            {

                    Class.forName(getDriver()).newInstance();
                    Connection cn=DriverManager.getConnection(getConnectionString(),getUserName(),getPassword());
                    PreparedStatement pst=cn.prepareStatement(sql);
                    rs=pst.executeQuery();
            }
            catch(Exception e)
            {
                    System.out.println(e);
            }
            return rs;
    }
  public void updateOrderInCart(String cartid)
    {
        try
            {

                    Class.forName(getDriver()).newInstance();
                    Connection cn=DriverManager.getConnection(getConnectionString(),getUserName(),getPassword());
                    PreparedStatement pst=cn.prepareStatement("update cart set order_status=1 where cartid="+cartid);
                    pst.executeUpdate();
                    cn.close();
                    pst.close();
            }       

            catch(Exception e)
            {
                System.out.println(e);
            }
    }
 
}
