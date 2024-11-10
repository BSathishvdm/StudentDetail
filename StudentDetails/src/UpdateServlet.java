

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/UpdateServlet")
 public class UpdateServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
  private static final long serialVersionUID = 1L;

	public UpdateServlet() {
		super();
	}   	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String  age = request.getParameter("age");
		String email = request.getParameter("email");
		String phonenumber = request.getParameter("phonenumber");
		String date = request.getParameter("date");
		StudentBean b=new StudentBean();
		b.setName(name);
		b.setAge(age);
		b.setEmail(email);
		b.setPhonenumber(phonenumber);
		b.setDate(date);
		
		UpdateAction ra=new UpdateAction();
		boolean status = ra.StudenttDetail(b);
		
		if(status){
			//forward()
			RequestDispatcher r=getServletContext().getRequestDispatcher("/fetchAllStudent.jsp");
			r.forward(request,response);
		}
		else{
			//sendRedirect()
			response.sendRedirect("updateStudent.jsp");
		}
	}  	  	  	    
}