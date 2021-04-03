<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Custom Login Page</title>

		<style>
			.failed {
				color: red;
			}
		</style>
	</head>
	<body>
		<h1>My Custom Login Page</h1>

		<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
					method="POST">

				<!-- Check for login error -->
				<c:if test="${param.error != null}" >
					<i class="failed">Sorry! You entered invalid username/password.</i>
				</c:if>

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
