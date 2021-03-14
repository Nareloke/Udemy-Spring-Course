<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Customer Registration Form</title>
	<style>
		.error {
			color: red
		}
	</style>
</head>
<body>

<i>Fill out the form. Asterisk (*) means required.</i>
	<form:form action="processForm" modelAttribute="customer">

		<div> First name: <form:input path="firstName" /> </div>
		<div> Last name (*): <form:input path="lastName" /> </div>
		<form:errors path="lastName" cssClass="error" />
		
		<div> Free passes: <form:input path="freePasses" /> </div>
		<form:errors path="freePasses" cssClass="error" />

		<div> Postal Code: <form:input path="postalCode" /> </div>
		<form:errors path="postalCode" cssClass="error" />

		<div> Course Code: <form:input path="courseCode" /> </div>
		<form:errors path="courseCode" cssClass="error" />

		<input type="submit" value="Submit" />
	</form:form>

</body>
</html>