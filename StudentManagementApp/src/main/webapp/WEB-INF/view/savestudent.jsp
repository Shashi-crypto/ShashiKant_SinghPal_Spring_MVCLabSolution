<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Save Book</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
	
<style>
h3 {
	text-align: center;
}

.form-inline{
display: block;
}
</style>
</head>
<body>
	<div class="container">
		<h3>New Student Form</h3>
		<div class="text-center">
		<form action="/StudentManagementApp/student/save" method="post">
			<input type="hidden" name="id" value="${student.id}">
			<div class="form-inline">
				<input type="text" name="name" value="${student.name}"
					placeholder="Student Name" class="form-control mb-4 col-4">
			</div>
			<div class="form-inline">
				<input type="text" name="department" value="${student.department}"
					placeholder="Student department" class="form-control mb-4 col-4">
			</div>
			<div class="form-inline">
				<input type="text" name="country" value="${student.country}"
					placeholder="country" class="form-control mb-4 col-4">
			</div>
			<button type="submit" class="btn btn-info col-2">Submit</button>
		</form>

		<a href="/StudentManagementApp/student/list">Back to Student List</a></div>

	</div>
</body>
</html>