<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>My JSP Page</title>
 
</head>
<body style="background-color:powderblue;">

	<header>
        <h1>Akash bookstore</h1>
        <p>Your friendly book store.</p>
    </header>
    <hr> <hr>

    
    <b>  Input the value <b>
    <br> <br>
    <form action="addUsers">
    <label for="ID number">ID no:</label>
    <input type="text" name="id"><br>
    <label for="Name">Name:</label>
    <input type="text" name="name"><br>
    <label for="Book name">Book name:</label>
    <input type="text" name="book_name"><br>
    <input type="submit"><br>
    </form>
    <hr>
    
    <b>  Search for the value with id <b>
        <br> <br>
    <form action="getUsers">
    <label for="ID number">Enter ID no:</label>
    <input type="text" name="id"><br>
    <input type="submit"><br>
    </form>
    
    <hr>
    

     
</body>
</html>
