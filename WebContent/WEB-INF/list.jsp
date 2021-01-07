<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.*" %>



<%
	List<PhoneVo> pList = (List<PhoneVo>)request.getAttribute("pList");

	
%>

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
	
			<%for(int i=0; i<pList.size(); i++){ %>
		
			<table border='1'>
				<tr>
					<td>이름(name)</td>
					<td><%=pList.get(i).name %></td>
				</tr>
				
				<tr>
					<td>핸드폰(hp)</td>
					<td><%=pList.get(i).hp %></td>
				</tr>
				
				<tr>
					<td>회사(company)</td>
					<td><%=pList.get(i).company %></td>
				</tr>		
				<tr>
					<td><a href="pbc?action=delete&id=<%=pList.get(i).personId%>">삭제</a></td>
					<td><a href="pbc?action=updateForm&id=<%=pList.get(i).personId%>">수정</a></td>
				</tr>
			</table>
			<br>
			<%} %>
			
		</form>
		
		<a href="pbc?action=writeForm">추가등록</a>
		
</body>
</html>