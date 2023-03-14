package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateNoteServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			long id = Long.parseLong(request.getParameter("note_id").trim());
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			Session hibSession = FactoryProvider.getFactory().openSession();
			Transaction transaction = hibSession.beginTransaction();
			Note noteToUpdate = hibSession.get(Note.class, id);
			noteToUpdate.setTitle(title);
			noteToUpdate.setContent(content);
			noteToUpdate.setAddedDate(new Date());
			transaction.commit();
			hibSession.close();
			response.sendRedirect("show_notes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
