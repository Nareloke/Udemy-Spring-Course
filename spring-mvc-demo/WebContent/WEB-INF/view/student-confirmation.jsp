<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Student Confirmation</title>
</head>
<body>

	<p> The student is confirmed: ${student.firstName} ${student.lastName}
	<p> Country: ${student.country} </p>
	<p> Favorite Language: ${student.favoriteLanguage} </p>
	<p> Operating Systems: </p>
	<ul>
		<c:forEach var="temp" items="${student.operatingSystems}" >
			<li> ${temp} </li>
		</c:forEach>
	</ul>
	
</body>
</html>