

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/deletePage")
 public class deletePage extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
 private static final long serialVersionUID = 1L;
	public deletePage() {
		super();
	}   	

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String name=req.getParameter("name");
		deleteNew n=new deleteNew();
		n.setName(name);
		deleteAction da=new deleteAction();
		boolean status=da.deleteDetials(n);
		if(status){
			RequestDispatcher r=getServletContext().getRequestDispatcher("/deleteStudentSuccess.jsp");
			r.forward(req, res);
		}
		else res.sendRedirect("deleteStudentUnsuccess.jsp");
	}   	  	    
}