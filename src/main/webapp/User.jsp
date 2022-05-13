<%@page import="com.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/User.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>User Management</h1>

				<form id="formUser" name="formUser" method="post" action="User.jsp">


					Account: <input id="uAccNo" name="uAccNo" type="text"
						class="form-control form-control-sm"> 
						
						<br>Name: <input id="name" name="name" type="text"
						class="form-control form-control-sm"> 
						
						<br> Address: <input id="address" name="address" type="text"
						class="form-control form-control-sm"> 
						
						<br> Phone: <input id="phoneNumber" name="phoneNumber" type="text"
						class="form-control form-control-sm"> 
						
						<br> Email: <input id="email" name="email" type="text"
						class="form-control form-control-sm"> 
						
						
						
						<br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidProjectIDSave" name="hidProjectIDSave" value="">
				</form>

				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>

				<br>
				<div id="divProjectGrid">
					<%
					User projectObj = new User();
						out.print(projectObj.readProject());
					%>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
