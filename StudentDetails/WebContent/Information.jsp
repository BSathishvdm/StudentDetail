<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Information</title>
<style>
#body{
background-image:url('D:\Images\main.png');
}
</style>
</head>

<body style="background-image:url('main.png');">

	<form >
		<input type="button" name="add" value="Add Student" onclick="window.location='InsertStudent.jsp'"><br>
		<input type="button" name="update" value="UpdateStudent Detials" onclick="window.location='updateStudent.jsp'"><br>
		<input type="button" name="fetch" value="Fetch Student" onclick="window.location='fetchStudent.jsp'"><br>
		<input type="button" name="fetchAll" value="Fetch All Students" onclick="window.location='fetchAllStudent.jsp'">
	</form>
</body>
</html>