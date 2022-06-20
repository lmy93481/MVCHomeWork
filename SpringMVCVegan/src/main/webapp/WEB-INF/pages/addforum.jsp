<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add forum</title>
</head>
<body>
<h3>add forum</h3>
		<form action="add.controller" method="get">
				<p>title</p>
				<input type="text" name="forumTitle" /><br/>
				<p>Content</p>
				<input type="text" name="forumContent" /><br/>
				<p>Date</p>
				<input type="text" name="forumDate" /><br/>
		
		<input type="submit" value="Send"/>
</form>
</body>
</html>