<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Group Languages</title>
	</head>
	<body>
		<form:form action="/languages/edit/${lang.id}" method="POST" modelAttribute="language">
			<form:hidden path="id"/>
			<form:label path="name">Name: 
			<form:input type="text" path="name" value="${lang.name}"/><br></form:label>
			<form:label path="creator">Creator: 
			<form:input type="text" path="creator" value="${lang.creator}"/><br></form:label>
			<form:label path="version">Version: 
			<form:input type="text" path="version" value="${lang.version}"/><br></form:label>
			<input type="submit" value="Submit">
			<c:forEach items="${errors}" var="error">
				<p><c:out value="${error.getDefaultMessage()}"/></p>
			</c:forEach>
		</form:form>
	</body>
</html>