<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%
	// getAttribute()로 바인딩 값 가져옴.
	String name = (String)session.getAttribute("name");
	String address = (String)application.getAttribute("address");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 스코프 테스트2</title>
</head>
<body>
	<h1>이름은 <%=name %> 입니다.</h1>
	<h1>주소는 <%=address %> 입니다.</h1>
</body>
</html>