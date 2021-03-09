<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Student Registration Form</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student" >
		
		First name: <form:input path="firstName" />
		Last Name: <form:input path="lastName" />
		
		<input type="submit" value="Submit" />
	</form:form>
	
	
</body>
</html>