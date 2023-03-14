<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Associated CSS links -->
<%@include file="style_links.jsp" %>
<title>Hello, world!</title>
</head>
<body>
	<nav>
		<%@include file="navbar.jsp"%>
	</nav>
	<main>
		<div class="card py-3">
			<img src="img/note_img.png" class="img-fluid mx-auto" style="max-width: 400px"/>
			<h1 class="text-primary text-center text-uppercase mt-3">Start taking your notes</h1>
			<div class="container text-center">
				<a class="btn btn-outline-primary text-center" href="add_notes.jsp">Start here</a>
			</div>
		</div>
	</main>
	
<!-- Associated JS links -->
<%@include file="js_links.jsp" %>
</body>
</html>