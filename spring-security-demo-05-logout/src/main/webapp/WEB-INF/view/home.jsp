<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Company Home Page</title>
	</head>
	<body>
		<h1>Company Home Page</h1>

		<p>Welcome to the company home page!</p>

		<!-- Add a logout button -->
		<form:form action="${pageContext.request.contextPath}/logout" 
				method="POST">
			<input type="submit" value="Logout" />
		</form:form>
	</body>
</html>