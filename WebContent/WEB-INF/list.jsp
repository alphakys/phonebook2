<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.*" %>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>전화번호 리스트</h1>
	
	<p>입력한 정보 내역입니다</p><br>
	
		<form>
			<c:forEach items="${ pList}" var="l">
			
		
			<table border='1'>
				<tr>
					<td>이름(name)</td>
					<td>${l.name }</td>
				</tr>
				
				<tr>
					<td>핸드폰(hp)</td>
					<td>${l.hp }</td>
				</tr>
				
				<tr>
					<td>회사(company)</td>
					<td>${l.company }</td>
				</tr>		
				<tr>
					<td><a href="pbc?action=delete&id=${l.personId }">삭제</a></td>
					<td><a href="pbc?action=updateForm&id=${l.personId }">수정</a></td>
				</tr>
			</table>
			<br>
		
		</form>
		
		
		</c:forEach>
		<a href="pbc?action=writeForm">추가등록</a>
		
</body>
</html>