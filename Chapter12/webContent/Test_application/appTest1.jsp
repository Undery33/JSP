<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%
	// session과 application 내장 객체에 바인딩
	session.setAttribute("name", "홍태의");
	application.setAttribute("address", "부산광역시 사상구");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 스코프 테스트1</title>
</head>
<body>
	<h1>이름과 주소를 저장합니다.</h1>
	<a href=appTest2.jsp>두 번째 웹 페이지로 이동</a>
</body>
</html>