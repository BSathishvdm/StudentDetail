<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="UpdateServlet" method="Post">
<h1>Update student</h1><br>
<h2>student Form</h2>

Name:<input type="text" name="name"/><br>
Age:<input type="text" name="age"/><br>
E-mail:<input type="text"name="email"/><br>
phone number:<input type="text" name="phonenumber"/><br>
Date of Join:<input type="text" name="date"/><br>

<input type="submit" value="UpdateStudent">
</form> 
</body>
</html>