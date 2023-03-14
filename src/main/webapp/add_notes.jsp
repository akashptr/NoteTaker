<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Associated CSS links -->
<%@include file="style_links.jsp"%>
<title>Add Notes</title>
</head>
<body>
	<nav>
		<%@include file="navbar.jsp"%>
	</nav>
	<main>
		<div class="container">
			<h1 class="my-3">Please fill the note details</h1>
			<form action="SaveNoteServlet" method="post">
				<div class="form-group">
					<label for="title">Note title</label>
					<input
						name="title"
						type="text" 
						class="form-control" 
						id="title"
						placeholder="Enter note title here"
						required>
				</div>
				<div class="form-group">
					<label for="content">Note content</label>
					<textarea
						name="content"
						class="form-control" 
						id="content"
						rows="10"
						placeholder="Enter note content here"></textarea>
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Add</button>
				</div>
			</form>
		</div>
	</main>

	<!-- Associated JS links -->
	<%@include file="js_links.jsp"%>
</body>
</html>