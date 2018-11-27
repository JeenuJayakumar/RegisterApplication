<%-- 
    Document   : view
    Created on : Nov 27, 2018, 1:25:54 PM
    Author     : USER
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="bean.UserBean"%>
<%@page import="connection.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
          <%
            DBConnection db=new DBConnection();
            ArrayList<UserBean> list=db.getDetails();
            %>
            
            <table class="table table-bordered table-hover">
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Email</th>
                    <th>Phone</th>
                </tr>
                
                <%
            if(list.size()>0){
                for(UserBean b:list){
                    %>
                
                    
                    <tr>
                    <td><%=b.getId()%></td>
                    <td><%=b.getName()%></td>
                    <td><%=b.getAge()%></td>
                    <td><%=b.getEmail()%></td>
                    <td><%=b.getPhone()%></td>
                    <td><a href="update.jsp?id=<%=b.getId()%>" class="btn btn-primary">EDIT INFO</a></td>
                    </tr>
                    
                           <%   }
            }
        %>
                    
            </table>
            
    </body>
</html>
