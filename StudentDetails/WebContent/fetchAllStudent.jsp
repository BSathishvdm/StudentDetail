<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "oracle.jdbc.driver.OracleDriver";
String connectionUrl = "jdbc:oracle:thin:@localhost:1521:XE";
String userid = "sathish";
String password = "sathish";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<head>
 <link rel="stylesheet" href="style.css">
</head>
<body>
<div id="fet">
<h1>All Student Informations</h1>
<table border="1" align="center" style="color:blue">
<tr id="head">
<td>Name</td>
<td>Age</td>
<td>Email</td>
<td>Phone Number</td>
<td>Join Date</td>
<td>Action</td>
<td>Action</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from stud";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr id="res">
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("age") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phonenumber") %></td>
<td><%=resultSet.getString("doj") %></td>
<td><a href="updateStudent.jsp" value="<%resultSet.getString("name");%>">Update</a></td>
<td><a href="deleteStudent.jsp">Delete</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

<h3>Go to main page </h3><a href="Information.jsp">click here</a>
<h3>Do you want to insert a new record</h3><a href="InsertStudent.jsp">Insert here</a>
</div>
</body>
</html>