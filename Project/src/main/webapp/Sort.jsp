<%@page import="com.Service.Sort"%>
<%@page import="com.DAO.EmailSort"%>
<%@page import="com.DAO.DeptSort"%>
<%@page import="com.DAO.NameSort"%>
<%@page import="java.util.Collections"%>
<%@page import="com.Service.Featch"%>
<%@page import="com.DAO.EmpEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Colorful Table</title>
  <style>
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th, td {
      padding: 15px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #4CAF50;
      color: white;
    }

    tr:nth-child(even) {
      background-color: #f2f2f2;
    }

    tr:hover {
      background-color: #ddd;
    }
  </style>
</head>
<body style="margin-left:100px;margin-right:100px">
<h1><CENTER><i> EMPLOYEE DATABASE</i></CENTER></h1><form action="Index.jsp"><input type=submit value="Go to Home Page" style="border:4px solid black;border-radius:15px;padding-bottom:8px; padding-Top:8px; gray;color:Blue ;text:bold paddin-topg:200px ;font-size: 20px"> 
		</form><br>


		<form action="Search.jsp">
		<input type="search" name="name" placeholder="Search by name">
		</form>
		<table border=10px style="padding-right: 200px;padding-left: 200px">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Email</th>
				<th>DeptName</th>
				<th>PhoneNum</th>

			</tr>
			
			<%
			
			String sort=request.getParameter("sort");
			List<EmpEntity> list = Sort.ms();
			if(sort.equals("name")) {
				Collections.sort(list,new NameSort());
				}
				else if(sort.equals("deptName"))
				{
					Collections.sort(list,new DeptSort());
				}
				else if(sort.equals("email"))
				{
					Collections.sort(list,new EmailSort());
				}
			for (EmpEntity x : list) {
			%>
			<tr>
				<td><%=x.getId()%></td>
				<td><%=x.getName()%></td>
				<td><%=x.getEmail()%></td>
				<td><%=x.getDeptName()%></td>
				<td><%=x.getPhoneNum()%></td>

			</tr>
			<%}%>
		</table><br>
		
	
		
	</body>
</html>
