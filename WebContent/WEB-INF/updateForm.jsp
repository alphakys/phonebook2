<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.*" %>
<%	

PhoneVo pv = (PhoneVo)request.getAttribute("targetPerson"); 
int id = Integer.parseInt(request.getParameter("id"));

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<form action="pbc" method="get">
		
			이름 : <input type="text" name="name" value="<%=pv.name%>"><br>
			핸드폰 번호 : <input type="text" name="hp" value="<%=pv.hp%>"><br>
			회사 번호 : <input type="text" name="company" value="<%=pv.company%>"><br>
					<input type="hidden" name="action" value="update">
					<input type="hidden" name="id" value="<%=id%>">
			<button type="submit">수정</button>
			
		</form>
		<br>
		<a href= "pbc?action=list">리스트로 가기</a>
</body>
</html>