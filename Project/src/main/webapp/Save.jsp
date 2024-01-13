<%@ page import="java.lang.module.Configuration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Colorful Form</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin-: 0;
      padding-Top: 60px;
      display: flex;
      justify-content: center;
      align-items: center
     
    }

    form {
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    label {
      display: block;
      margin-bottom: 8px;
      color: #333;
    }

    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 16px;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    button {
      background-color: #4CAF50;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    button:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body >

 <div style="background-color:gray;border:5px solid black;border-radius:10px; padding-left: 5px;padding-right: 5px"> <form action="App2">
 
<div style="background-color:gray;border:5px solid black;border-radius:10px; padding-left: 5px;padding-right: 5px"><h1 style="color:orange ;padding-rigth:200px">ADD EMPLOYEE DETAILS</h1></div>
  <br><br>
    <label for="id">ID:</label>
    <input type="text" id="id" name="id" required>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>

    <label for="deptName">Department Name:</label>
    <input type="text" id="deptName" name="deptName" required>

    <label for="phonenum">Phone Number:</label>
    <input type="tel" id="phonenum" name="phnum" maxlength=10; required>

    <center><button type="submit">Submit</button></center>
  </form></div>

</body>
</html>
