package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;

/**
 * Servlet implementation class UpdateInDb
 */
public class UpdateInDb extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateInDb() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String title = request.getParameter("title");
		String desc = request.getParameter("desc");
		String id = request.getParameter("id");
		String query = "UPDATE Note SET title = :title, content = :content WHERE id = :id";
		SessionFactory factory = FactoryProvider.getFactory();
		Session session = factory.openSession();
		Transaction transaction = session.beginTransaction();
		Query queryObj = session.createQuery(query);
		queryObj.setParameter("title", title);
		queryObj.setParameter("content", desc);
		queryObj.setParameter("id", Integer.parseInt(id));
		int rowCount = queryObj.executeUpdate();
		transaction.commit();
		session.close();
		response.sendRedirect("ShowNote");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
