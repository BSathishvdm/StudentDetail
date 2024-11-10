import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class fetchAction {
	public boolean fetchDetials(fetchNew n){
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
