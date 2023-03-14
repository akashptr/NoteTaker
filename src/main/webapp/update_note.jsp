<!doctype html>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Associated CSS links -->
<%@include file="style_links.jsp" %>
<title>Update note</title>
</head>
<body>
<%
long noteId = Long.parseLong(request.getParameter("note_id").trim());
Session hibSession = FactoryProvider.getFactory().openSession();
Note note = hibSession.get(Note.class, noteId);
hibSession.close();
%>
	<nav>
		<%@include file="navbar.jsp"%>
	</nav>
	<main>
		<div class="container">
			<h1 class="my-3">Update the note details</h1>
			<form action="UpdateNoteServlet?note_id=<%= noteId %>" method="post">
				<div class="form-group">
					<label for="title">Note title</label>
					<input
						name="title"
						type="text" 
						class="form-control" 
						id="title"
						placeholder="Enter note title here"
						required
						value="<%= note.getTitle() %>">
				</div>
				<div class="form-group">
					<label for="content">Note content</label>
					<textarea
						name="content"
						class="form-control" 
						id="content"
						rows="10"
						placeholder="Enter note content here"><%= note.getContent() %></textarea>
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Update</button>
				</div>
			</form>
		</div>
	</main>
<!-- Associated JS links -->
<%@include file="js_links.jsp" %>
</body>
</html>