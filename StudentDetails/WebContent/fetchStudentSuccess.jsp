<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String name = request.getParameter("name");
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
<body align="center">

<h1>Student Details</h1>
<%
try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
resultSet =statement.executeQuery("select * from stud where name='"+name+"'");
while(resultSet.next()){
%>
Name: <%=resultSet.getString("name") %><br>
Age: <%=resultSet.getString("age") %><br>
Email: <%=resultSet.getString("email") %><br>
Phone Number: <%=resultSet.getString("phonenumber") %><br>
Date of Join: <%=resultSet.getString("doj") %><br>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
			<a href="fetchStudent.jsp">Fetch again</a><br>
			<a href="Information.jsp">Home</a>
</body>
</html>