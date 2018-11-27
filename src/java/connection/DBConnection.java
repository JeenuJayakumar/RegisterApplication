/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

import bean.UserBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author USER
 */
public class DBConnection {
     Connection con;
    PreparedStatement pr;
     ResultSet rs;
    Statement st;
    
    
      public DBConnection() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register", "root", "root");
    }
      
       public int insert(UserBean b) throws SQLException{
        int result=0;
        String query="insert into userdetails values(0,?,?,?,?)";
        pr=con.prepareStatement(query);
     
        pr.setString(1, b.getName());
        pr.setInt(2,b.getAge());
        pr.setString(3,b.getEmail());
        pr.setLong(4,b.getPhone());
        result=pr.executeUpdate();
        return result;
      
       }
       
       
         public ArrayList<UserBean>getDetails() throws SQLException{
        ArrayList<UserBean> list=new ArrayList<UserBean>();
        String query2="select * from userdetails";
        pr=con.prepareStatement(query2);
        rs=pr.executeQuery();
        while(rs.next()){
            UserBean b=new UserBean();
            b.setId(rs.getInt(1));
            b.setName(rs.getString(2));
            b.setAge(rs.getInt(3));
            b.setEmail(rs.getString(4));
            b.setPhone(rs.getLong(5));
            list.add(b);
        }
        return list;
    }
         
          public ArrayList<UserBean>get_edit(int id) throws SQLException{
        ArrayList<UserBean> list=new ArrayList<UserBean>();
        String query3="select * from userdetails where id=?";
        pr=con.prepareStatement(query3);
        pr.setInt(1,id);
        rs=pr.executeQuery();
        while(rs.next()){
            UserBean b=new UserBean();
            b.setId(rs.getInt(1));
            b.setName(rs.getString(2));
            b.setAge(rs.getInt(3));
            b.setEmail(rs.getString(4));
            b.setPhone(rs.getLong(5));
            list.add(b);
        }
        return list;
    }
          
          
           public int update(int id,String name,int age,String email,long phone) throws SQLException{
        int result=0;
        String query4="update userdetails set name=?,age=?,email=?,phone=? where id=?";
        pr=con.prepareStatement(query4);
        pr.setString(1,name);
        pr.setInt(2,age);
        pr.setString(3, email);
         pr.setLong(4, phone);
          pr.setInt(5, id);
         result=pr.executeUpdate();
        return result;
    }
}
