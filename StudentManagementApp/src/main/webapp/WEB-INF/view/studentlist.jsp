<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Stylesheet (CSS) & JSP Tag
     Library -->
<!DOCTYPE html>
<html>
<head>
<title>Student List</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<style>
h3 {
	text-align: center;
}
</style>
</head>
<body>
	<div class="container">
		<h3>Student List</h3>
		<div class="text-center">
			<a href="/StudentManagementApp/student/add"
				class="btn btn-primary btn-sm mb-3">Add Student</a>
		</div>
		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>Name</th>
					<th>Department</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${studentModel}" var="studentModel">
					<tr>
						<td><c:out value="${studentModel.name}"></c:out></td>
						<td><c:out value="${studentModel.department}"></c:out></td>
						<td><c:out value="${studentModel.country}"></c:out></td>
						<td><a
							href="/StudentManagementApp/student/update?id=${studentModel.id}"
							class="btn btn-info btn-sm">Update</a> <a
							href="/StudentManagementApp/student/delete?id=${studentModel.id}"
							class="btn btn-danger btn-sm"
							onclick="if(!(confirm('Are you sure to delete this student?'))) return false">Delete</a>
						</td>
					</tr>
				</c:forEach>
				<!-- Tag lib For loop -->
			</tbody>
		</table>
	</div>
</body>
</html>







