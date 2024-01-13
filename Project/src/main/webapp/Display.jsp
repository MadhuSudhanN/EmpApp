<%@page import="java.util.List"%>
<%@page import="com.DAO.EmpEntity"%>
<%@page import="com.Service.Display"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="Invalid.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Colorful Table</title>
<style>
table {
	
	align-content:center;
	margin-top: 80px;
	
}

th, td {
padding:15px;
	text-align:center;
	
	border-bottom: 1px solid #ddd;
}

th {
	background-color:meron;
	color: black;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}
</style>
</head>
<body>

	<%
	int id = Integer.parseInt(request.getParameter("id"));
	Display d= new Display();
	EmpEntity emp =d.ms(id);
	
	%>
	<br><br>
	<h1>
		<CENTER style="color:red;">EMPLOYEE DETAILS</CENTER>
	</h1>
<center>
	<table border=10px ">
		<tr>
			<th>ID:</th>
			<td><%=emp.getId()%>
		</tr>

		<tr>
			<th>NAME:</th>
			<td><%=emp.getName()%></td>
		</tr>
		<tr>
			<th>EMAIL:</th>
			<td><%=emp.getEmail()%>
		</tr>
		<tr>
			<th>DEPARTMENT NAME:</th>
			<td><%=emp.getDeptName()%></td>
		</tr>
		<tr>
			<th>PHONE NUMBER:</th>
			<td><%=emp.getPhoneNum()%></td>
		</tr>
		



	</table>
	<br>

	<form action="Index.jsp"><input type=submit value="Go to Home Page" style="border:4px solid black;border-radius:15px;padding-bottom:8px; padding-Top:8px; gray;color:Blue ;text:bold paddin-topg:200px ;font-size: 20px"> 
		</form>
</center>


</body>
</html>