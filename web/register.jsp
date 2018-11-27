<%-- 
    Document   : register
    Created on : Nov 27, 2018, 12:02:23 PM
    Author     : USER
--%>

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
        <form action="RegisterUser" method="post">
            <div class="form-group form-horizontal col-sm-6">
                <label for="name">Name : </label>
                <input type="text" class="form-control" id="name" name="name" required="">
            </div>
            <br>
            <br>
            <div class="form-group col-sm-6 ">
                <label for="age">Age : </label>
                <input type="text" class="form-control" id="age" name="age" required="" maxlength="2">
            </div>
            <br>
            <br>
            <div class="form-group col-sm-6">
                <label for="email">Email : </label>
                <input type="email" class="form-control" id="email" name="email" required="">
            </div>
            <br>
            <br>
            <div class="form-group col-sm-6">
                <label for="phone">Phone : </label>
                <input type="text" class="form-control" id="phone" name="phone" required="" maxlength="10">
            </div>
            <br>
            <br>
            <button type="submit" class="btn btn-info">Submit</button>
        </form>

    </body>
</html>
