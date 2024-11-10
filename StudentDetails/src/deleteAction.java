import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class deleteAction {
	public boolean deleteDetials(deleteNew n){
		boolean status=false;
		String name=n.getName();
		Connection con=null;
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		try{
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sathish","sathish");
			Statement s=con.createStatement();
			ResultSet r=s.executeQuery("select * from stud where name='"+name+"'");
			if(r.next()){
				s.executeQuery("delete from stud where name='"+name+"'");
				status=true;
			}else{
				status=false;
			}
		}catch(SQLException e){
			e.printStackTrace();
		}
		return status;
}
}
