package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;
public class DeleteNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteNoteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			long noteId = Long.parseLong(request.getParameter("note_id").trim());
			Session session = FactoryProvider.getFactory().openSession();
			Transaction transaction = session.beginTransaction();
			Note noteToDelete = (Note)session.get(Note.class, noteId);
			session.delete(noteToDelete);
			transaction.commit();
			session.close();
			response.sendRedirect("show_notes.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
