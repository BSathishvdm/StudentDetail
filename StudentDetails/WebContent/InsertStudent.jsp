<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Student Information</title>
<script>
		function nullCheck(){
				var name=document.InsertStudent.name.value;
				var age=document.InsertStudent.age.value;
				var email=document.InsertStudent.email.value;
				var phonenumber=document.InsertStudent.phonenumber.value;
		
				if(name==null||name==""){
					alert("name can't be blank");
					return false;
				}else if(age==null||age==""){
					alert("age can't be blank");
					return false;
				}else if(email=null||email==""){
					alert("Email can't be blank");
					return false;
				}else if(phonenumber==null||phonenumber==""){
					alert("PhoneNumber can't be blank");
					return false;
				}else if(phonenumber.length<10){
					alert("Please enter valid phonenumber");
					return false;
				}else if(name.length<3){
					alert("name can be atleast 3 character");	
					return false;
					}
		}
		function validate(obj,event){
			var inp=obj.name;
			if(inp=="name"){
				var k=event.keyCode;
				if((k>33 && k<64)||(k>=91 && k<=96)){
					alert("Number and special character not allow");
					return false;
				}
			}else if(inp=="phonenumber"){
				var k=event.keyCode;
				if(k>31 && (k<48||k>57)){
				alert("alpha and special character not allow");
				return false;
				}
				if(k==32|| (k>=42 && k<=47)){
				alert("Special character not allow");
				return false;
				}
			}else if(inp=="age"){
				var k=event.keyCode;
				if(k>31 && (k<48||k>57)){
				alert("alpha and special character not allow");
				return false;
				}
				if(k==32|| (k>=42 && k<=47)){
				alert("Special character not allow");
				return false;
				}
			}
		}		
		function CheckEmail(){
			var email=document.InsertStudent.email.value;
			var mail=/^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
			if(!email.match(mail)){
				alert("Email must contain @ and .");
				return false;
			}
		}	
		function Validatesubmit(){
			var retvalue;
			retvalue=nullCheck();
			if(retvalue==false){return retvalue;}
			
			retvalue=CheckEmail();
			if(retvalue==false){return retvalue;}
			
		}		
		</script>
</head>
<body align="center">
<h1>Insert New Student
</h1><br>
<h2>Student Form</h2><br>
<form action="addStudent" method="post">
Name:<input type="text" name="name" onkeypress="return validate(this,event)"/><br>
Age:<input type="text" name="age" maxlength="2" onkeypress="return validate(this,event)"/><br>
Email:<input type="text" name="email" maxlength="25"/><br>
PhoneNumber :<input type="text" name="phonenumber" maxlength="10" onkeypress="return validate(this,event)"/><br>
Date of Join(format:"01-JAN-2002"):<input type="text" name="date"/><br>
<input type="submit" value="Submit" onclick="return Validatesubmit()"/>
</form>
</body>
</html>