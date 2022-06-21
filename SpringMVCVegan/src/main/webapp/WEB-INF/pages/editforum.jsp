<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <jsp:useBean id="now" class="java.util.Date"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add forum</title>
</head>
<body>
<h3>add forum</h3>
		<form action="edit/{id}" method="GET">

		<input type="text" name="forumId" /><br/>
		<input type="text" name="forumTitle" /><br/>
		<input type="text" name="forumContent" /><br/>
		<input type="text" name="forumDate" /><br/>
		</form>
</body>
</html>