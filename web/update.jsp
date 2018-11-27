<%-- 
    Document   : update
    Created on : Nov 27, 2018, 2:52:01 PM
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
            DBConnection db = new DBConnection();
            int id = Integer.parseInt(request.getParameter("id"));
            ArrayList<UserBean> list = db.get_edit(id);
            for (UserBean b : list) {
        %>


        <div class="panel panel-primary col-sm-7 col-sm-offset-2">
            <div class="panel-heading">Update Details</div>
            <div class="panel-body">

                <form class="form-horizontal" action="UpdateUser" method="post">
                    <input type="hidden" value="<%=b.getId()%>"  name="id">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="name">Name : </label>
                        <div class="col-sm-6">
                            <input type="text" value="<%=b.getName()%>" class="form-control" id="name" name="name" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="age">Age : </label>
                        <div class="col-sm-6">
                            <input type="text" value="<%=b.getAge()%>" name="age" class="form-control" id="age">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Email:</label>
                        <div class="col-sm-6">
                            <input type="text" value="<%=b.getEmail()%>" name="email" class="form-control" id="email" >
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="phone">Phone : </label>
                        <div class="col-sm-6"> 
                            <input type="text" value="<%=b.getPhone()%>" name="phone" class="form-control" id="phone">
                        </div>
                    </div>
                    <div class="form-group"> 
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>





        <%
            }
        %>
    </body>
</html>
