<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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

		<hr>

		<!-- Display user name and role -->
		<div> User: <security:authentication property="principal.username" /> </div>
		<div> Role (s): <security:authentication property="principal.authorities" /> </div>

		<hr>

		<!-- Add a link to point to / leaders .. this is for the managers -->

		<p>
			<a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
			(Only for Manager peeps)
		</p>

		<!-- Add a link to point to /systems ... this is for the admin -->

		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
			(Only for Admin peeps)
		</p>

		<hr>

		<!-- Add a logout button -->
		<form:form action="${pageContext.request.contextPath}/logout" 
				method="POST">
			<input type="submit" value="Logout" />
		</form:form>
	</body>
</html>