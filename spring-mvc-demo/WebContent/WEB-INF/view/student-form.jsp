<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Student Registration Form</title>
</head>
<body>

	<form:form action="processForm" modelAttribute="student" >
		
		<div> First name: <form:input path="firstName" /> </div>
		<div> Last Name: <form:input path="lastName" /> </div>
		<div> Country: 
			<form:select path="country">
				<form:options items="${student.countryOptions}" />
			</form:select>
		</div>
		
		<div>
			Favorite Language:
			Java <form:radiobutton path="favoriteLanguage" value="Java" />
			C# <form:radiobutton path="favoriteLanguage" value="C#" />
			PHP <form:radiobutton path="favoriteLanguage" value="PHP" />
			Ruby <form:radiobutton path="favoriteLanguage" value="Ruby" />
		</div>
		
		<div>
			Operating Systems:
			Linux <form:checkbox path="operatingSystems" value="Linux" />
			Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
			MS Windows <form:checkbox path="operatingSystems" value="MS Windows" />
		</div>
		
		<input type="submit" value="Submit" />
	</form:form>
	
	
</body>
</html>