<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.Note"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="style_links.jsp"%>
</head>
<body>
	<%
	Session hibSession = FactoryProvider.getFactory().openSession();
	Query query = hibSession.createQuery("from Note");
	pageContext.setAttribute("allNotes", query.list());
	hibSession.close();
	%>
	<nav>
		<%@include file="navbar.jsp"%>
	</nav>
	<main class="m-3">
		<div class="container">
			<h1 class="my-3">All notes</h1>
			<c:forEach var="note" items="${allNotes}">
				<div class="row">
					<div class="col-12">
						<div class="card mt-3">
							<img style="max-width: 100px" class="card-img-top m-3 mx-auto"
								src="img/note_img.png" alt="Card image cap">
							<div class="card-body">
								<h5 class="card-title">
									<c:out value="${note.getTitle()}" />
								</h5>
								<p class="card-text">
									<c:out value="${note.getContent()}" />
								</p>
								<div class="container text-center">
									<a href="DeleteNoteServlet?note_id=${note.getId()}" class="btn btn-danger">Delete</a>
									<a href="update_note.jsp?note_id=${note.getId()}"	class="btn btn-primary">Update</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</main>


	<!-- Associated JS links -->
	<%@include file="js_links.jsp"%>
</body>
</html>