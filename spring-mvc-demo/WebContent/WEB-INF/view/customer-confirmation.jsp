<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Customer Confirmation</title>
</head>
<body>
	
	<p>The customer is confirmed: ${customer.firstName} ${customer.lastName}</p>
	<p>Free passes: ${customer.freePasses}</p>
	<p>Postal code: ${customer.postalCode}</p>
	<p>Course code: ${customer.courseCode}</p>
</body>
</html>