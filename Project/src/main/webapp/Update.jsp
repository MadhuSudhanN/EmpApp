<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Four Side-by-Side Forms</title>
  <style>
    body {
     
     
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      display: flex;
      justify-content: space-around;
      align-items: center;
      height: 100vh;
    }
    h2{
    color:white;
    }

    .form-container {
      background-color: gray;
      border: 1px solid #ccc;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      width: 200px;
    }
    .form-container1 {
      background-color: orange;
   
      top=0;
      border-radius: 10px;
      
      width: 400px;
    }

    .form-container label {
      display: block;
      margin-bottom: 8px;
    }

    .form-container input {
    color:Blue;
      width: 100%;
      padding: 8px;
      margin-bottom: 16px;
      box-sizing: border-box;
       
    }

    .form-container button {
      background-color: #4caf50;
      color: #fff;
      padding: 10px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    .form {
      background-color: yellow;
      
    }
  </style>
</head>
<body style="background-color:meron;">

 <div class="form-container1"><h1><center>UPDATE EMPLOYEE DETAILS</center></h1></div>
  <div class="form-container">
     <h2>UPDATE NAME</h2>
    <form action="App4" method="post">
      <label >Enter Id:</label>
      <input type="number" name="id" required>

      <label >Enter Name:</label>
      <input type="text"  name="name" required><br><br>
      <input  class="form"type="submit" value="CLICK">
      
    </form>
  </div>

  <div class="form-container">
    <h2>UPDATE EMAIL</h2>
    <form action="App5" method="post">
      <label >Enter Id:</label>
      <input type="number" name="id" required>

      <label >Enter Email:</label>
      <input type="email"  name="email" required><br><br>
      <input  class="form"type="submit" value="CLICK">
      
    </form>
  </div>

  <div class="form-container">
    <h2>UPDATE DEPT NAME</h2>
    <form action="App6" method="post">
      <label for="name3">Enter Id:</label>
      <input type="number" name="id" required>

      <label for="email3">Enter Dept Name:</label>
      <input type="TEXT"  name="deptName" required><br><br>
      <input class="form" class type="submit" value="CLICK">
      
    </form>
  </div>

  <div class="form-container">
   <h2>UPDATE PHONE NUM</h2>
    <form action="App7" method="post">
      <label for="name3">Enter Id:</label>
      <input type="number" name="id" required>

      <label for="email3">Enter Phone Number:</label>
      <input type="text"  name="phNum" required><br><br>
      <input class="form"type="submit" value="CLICK" >
      
    </form>
  </div>
  <div><form action="Index.jsp"><input type=submit value="Go to Home Page" style="border:4px solid black;border-radius:15px;padding-bottom:8px; padding-Top:8px; gray;color:Red ;text:bold paddin-topg:200px ;font-size: 20px"> 
		</form><br>
		<form action="Featch.jsp"><input type=submit value="Check DataBase" style="border:4px solid black;border-radius:15px;padding-bottom:8px; padding-Top:8px; gray;color:Red ;text:bold paddin-topg:200px ;font-size: 20px"> 
		</form><br></div>
</body>

</html>




