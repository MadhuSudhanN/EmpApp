<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
background-position:centee;
	background-image: url('x2.jpeg');
	/* Replace 'background-image.jpg' with your background image */
	background-size: cover;
	font-family: Arial, sans-serif;
}


.login-container {
color:black;
	width: 600px;
	margin: 0 auto;
	border:10px solid black;
background-color:orange;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 2, 0, 0.3);
}

h1 {
	color: yellow;
}

.login-container h2 {
	text-align: center;
}

.login-container input[type="text"], .login-container input[type="password"]
	{
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: none;
	border-radius: 5px;
}

.login-container input[type="submit"] {
	position:center;
	padding: 10px;
	margin: 10px 0;
	background: #007BFF; /* Button color */
	border: none;
	border-radius: 5px;
	color: #fff;
	cursor: pointer;
}

.login-container input[type="submit"]:hover {
	background: #0056b3; /* Hover color */
}
</style>
</head>
<body>
	<br>
	<br>
	<fieldset
		style="margin: 20px solid; background-color: gray; margin-left: 150px; margin-right: 150px;">
		<h1>
			<center>EMPLOYEE DATABASE MANAGEMAENT</center>
		</h1>
	</fieldset>
	<br>
	<br>
	<div class="login-container">
		<h2>CHECK DATABASE</h2>
		<form action="Sort.jsp" method="post">
	<strong>SORT :</strong>&nbsp&nbsp&nbsp&nbsp
			<input type="radio" name="sort" value="name" required> <label >Name</label>

			<input type="radio" name="sort"  value="deptName" required> <label >Department</label>

			<input type="radio"  name="sort" value="email" required> <label >Email</label>&nbsp&nbsp&nbsp&nbsp
			<input type="submit"
				value="CLICK">	
				</form>
		<br>
			
	   <form action="App1" method="POST">
			<input type=submit style="border:4px solid black;border-radius:15px;padding-bottom:8px; padding-Top:8px; gray;color:Blue ;text:bold paddin-topg:200px ;font-size: 20px"> 
	
		</form>
	</div>
	<br>
	<div class="login-container">
		<h2>ADD EMPLOYEE</h2>
		<form action="Save.jsp" method="POST">
			<input type=submit style="border:4px solid black;border-radius:15px;padding-bottom:8px; padding-Top:8px; gray;color:Blue ;text:bold paddin-topg:200px ;font-size: 20px"> 
	
		</form>
	</div>
	<br>
	<div class="login-container">
		<h2>DELETE EMPLOYEE</h2>
		<form action="App3" method="POST">
			<center>
				Enter Id:<input type="number" name="id" required>
			</center>
			<input type=submit style="border:4px solid black;border-radius:15px;padding-bottom:8px; padding-Top:8px; gray;color:Blue ;text:bold paddin-topg:200px ;font-size: 20px"> 
	
		</form>
	</div>
	<br>
	<div class="login-container">
		<h2>UPDATE EMPLOYEE</h2>
		<form action="Update.jsp" method="POST">

			<input type=submit style="border:4px solid black;border-radius:15px;padding-bottom:8px; padding-Top:8px; gray;color:Blue ;text:bold paddin-topg:200px ;font-size: 20px"> 
	
		</form>
	</div>
	
	<br>
	<div class="login-container">
		<h2>SPECIFIC EMPLOYEE</h2>
		<form action="Display.jsp" method="POST">
			<center>Enter Id:<input type="number" name="id" required> 	</center>
			<input type=submit style="border:4px solid black;border-radius:15px;padding-bottom:8px; padding-Top:8px; gray;color:Blue ;text:bold paddin-topg:200px ;font-size: 20px"> 

		</form>
	</div>
	<br>
	<br>
</body>

</html>

