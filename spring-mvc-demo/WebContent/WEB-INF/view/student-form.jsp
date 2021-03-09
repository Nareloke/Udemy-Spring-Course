<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Student Registration Form</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student" >
		
		<p> First name: <form:input path="firstName" /> </p>
		<p> Last Name: <form:input path="lastName" /> </p>
		<p> Country: </p>
		<form:select path="country">
			<form:option value="Brazil" label="Brazil" />
			<form:option value="France" label="France" />
			<form:option value="Germany" label="Germany" />
			<form:option value="India" label="India" />
		</form:select>
		
		<input type="submit" value="Submit" />
	</form:form>
	
	
</body>
</html>