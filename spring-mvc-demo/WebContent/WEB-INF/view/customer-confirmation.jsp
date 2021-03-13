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
</body>
</html>