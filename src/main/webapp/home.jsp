<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>User:Home</h1>
<c:if test="${not empty userobj }">
<h2>Name:${userobj.name }</h2>
<h2>Email:${userobj.email }</h2>

</c:if>
</body>
</html>