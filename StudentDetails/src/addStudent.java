

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addStudent")

public class addStudent extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   private static final long serialVersionUID = 1L;

	public addStudent() {
		super();
	}   	

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			String name=req.getParameter("name");
			String age=req.getParameter("age");
			String email=req.getParameter("email");
			String phonenumber=req.getParameter("phonenumber");
			String date=req.getParameter("date");
			NewStudent n=new NewStudent();
			n.setName(name);
			n.setAge(age);
			n.setEmail( email);
			n.setPhonenumber(phonenumber);
			n.setDate(date);
			addAction aa=new addAction();
			boolean status=aa.addDetials(n);
			if(status){
				RequestDispatcher r=getServletContext().getRequestDispatcher("/addStudentSuccess.jsp");
				r.forward(req, res);
			}
			else res.sendRedirect("addStudentUnsuccess.jsp");
	}   	  	    
}