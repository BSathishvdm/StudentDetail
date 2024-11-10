import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class addAction {
public boolean addDetials(NewStudent n){
	boolean status=false;
	String name=n.getName();
	String age=n.getAge();
	String email=n.getEmail();
	String phonenumber=n.getPhonenumber();
	String date=n.getDate();
	Connection con=null;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
	}catch(ClassNotFoundException e){
		e.printStackTrace();
	}
	try{
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sathish","sathish");
		Statement s=con.createStatement();
		ResultSet r=s.executeQuery("select * from stud where name='"+name+"' and email='"+email+"'");
		if(r.next()){
			status=false;
		}else{
			int i=s.executeUpdate("insert into stud(name,age,email,phonenumber,doj) values('"+name+"','"+age+"','"+email+"','"+phonenumber+"','"+date+"')");
			if(i>0){
				status=true;
			}
		}
	}catch(SQLException e){
		e.printStackTrace();
	}
	return status;
}
}
