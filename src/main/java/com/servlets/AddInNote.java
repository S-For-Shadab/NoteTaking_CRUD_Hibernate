package com.servlets;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

 
public class AddInNote extends HttpServlet {
	private static final long serialVersionUID = 1L;
        
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String title=request.getParameter("title");
		 String desc=request.getParameter("desc");
		 SessionFactory factory=FactoryProvider.getFactory();
		 Session sess=factory.openSession();
		 Note note=new Note(title,desc);
 		  Transaction tx=sess.beginTransaction();
 		  sess.save(note);
 		  tx.commit();
 		  sess.close();
 		  response.sendRedirect("index.jsp?msg=inserted successfully ");
 		  
		 
	} 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
