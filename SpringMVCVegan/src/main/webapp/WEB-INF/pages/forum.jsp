<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forum</title>
</head>
<body>
<h2>Forum</h2>
<%-- 	<jsp:useBean id="vge" class="vegan.model.Forum" scope="session" /> --%>
<%-- 		<form action="list" method=Post>	 --%>
<%-- 		<c:forEach var="forums" items="${forumBeanList}"> --%>
<%-- 				<h2>${forums.forumTitle}</h2> --%>
				
<%-- 				<p class="ellipsis">${forums.forumContent}</p>  --%>
<%-- 				<div align="right" >${forums.forumDate}</div> --%>
<%-- 		</c:forEach> --%>
<%-- 		</form> --%>
<form action="list" method="GET">
<table border='1'>
			<tr>
				<th width='60'>標題</th>
				<th width='160'>留言</th>
				<th width='160'>日期</th>
			</tr>
			
					<c:forEach var='f' items="${model}">
						<tr>
							<td align='center'><c:out value="${f.forumTitle}"/></td>
							<td align='center'><c:out value="${f.forumContent}"/></td>
							<td align='center'><c:out value="${f.forumDate}"/></td>
						</tr>
					</c:forEach>
				
		</table>
</form>
		<a href="<c:url value="/add.controller"></c:url>">新增留言</a>
</body>
</html>