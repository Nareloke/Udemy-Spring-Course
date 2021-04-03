<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Custom Login Page</title>
	</head>
	<body>
		<h1>My Custom Login Page</h1>

		<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
					method="POST">
				<div>
					<label for="username">User name: </label>
					<input id="username" type="text" name="username" />
				</div>	

				<div>
					<label for="password">Password: </label>
					<input id="password" type="text" name="password" />
				</div>	

				<input type="submit" value="Login" />
		</form:form>
	</body>
</html>
