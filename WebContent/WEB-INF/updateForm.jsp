<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="pbc" method="get">
		
			이름 : <input type="text" name="name" value="${targetPerson.name }"><br>
			핸드폰 번호 : <input type="text" name="hp" value="${targetPerson.hp }"><br>
			회사 번호 : <input type="text" name="company" value="${targetPerson.company }"><br>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="id" value="${param.id }">
			<button type="submit">수정</button>
			
		</form>
		<br>
		<a href= "pbc?action=list">리스트로 가기</a>
</body>
</html>