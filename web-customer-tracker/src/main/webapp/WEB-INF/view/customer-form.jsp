<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Save Customer</title>

		<!-- reference our style sheet -->
		<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css" />
			
		<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/add-customer-style.css" />
	</head>
	<body>

		<div id="wrapper">
			<div id="header">
				<h2>CRM - Customer Relationship Manager</h2>
			</div>
		</div>

		<div id="container">
			<h3>Save Customer</h3>
			
			<form:form action="saveCustomer" modelAttribute="customer" method="POST">
				
				<table>
					<tbody>
						<tr>
							<td> <label>First Name: </label> </td>
							<td> <form:input path="firstName" /> </td>
						</tr>
					</tbody>
				</table>
				
			</form:form>
		</div>

	</body>
</html>