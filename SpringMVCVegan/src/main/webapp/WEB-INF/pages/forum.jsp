<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forum</title>
<script type="text/javascript">
  function confirmDelete(id){
	  var result = confirm("確定刪除此筆記錄(帳號:" + id.trim() + ")?");
	  if (result) {
		  document.forms[0].putOrDelete.name = "_method";
		  document.forms[0].putOrDelete.value = "DELETE";
	      return true;
	  }
	  return false;
  }
  function confirmUpdate(id){
	  var result = confirm("確定送出此筆記錄(帳號:" + id.trim() + ")?");
	  if (result) {
// 		  document.forms[0].putOrDelete.name = "_method";
// 		  document.forms[0].putOrDelete.value = "PUT";
	      return true;
	  }
	  return false;
  }
</script>
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
				<th width='60' >標題</th>
				<th width='160'>留言</th>
				<th width='160'>日期</th>
			</tr>
			
					<c:forEach var='forums' items="${forums}">
						
						<tr>
							<td align='center'><c:out value="${forums.forumTitle}"/></td>
							<td align='center'><c:out value="${forums.forumContent}"/></td>
							<td align='center'><c:out value="${forums.forumDate}"/></td>
							<td><a href="<c:url value='/insert'></c:url>">更新留言</a></td>
							<td><input type='submit' value='刪除' name='deleteBtn' onclick="return confirmDelete('${forum.forumid}');" ></td>
							
						</tr>
					</c:forEach>
				
		</table>
</form>
		<a href="<c:url value="/insert"></c:url>">新增留言</a>
</body>
</html>