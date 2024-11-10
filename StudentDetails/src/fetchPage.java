

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/fetchPage")
 public class fetchPage extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   private static final long serialVersionUID = 1L;
   
	public fetchPage() {
		super();
	}   	
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name=req.getParameter("name");
		fetchNew n=new fetchNew();
		n.setName(name);
		fetchAction fa=new fetchAction();
		boolean status=fa.fetchDetials(n);
		if(status){
			RequestDispatcher r=getServletContext().getRequestDispatcher("/fetchStudentSuccess.jsp");
			r.forward(req, res);
		}
		else res.sendRedirect("fetchStudentUnsuccess.jsp");
	}   	  	    
}