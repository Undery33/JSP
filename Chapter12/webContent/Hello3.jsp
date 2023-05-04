<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
<!-- 선언문 작성 -->
<%!	
	String name = "홍태의";
	public String getName(){
		return name;
	}
%>

<!-- 스크립트 작성 -->
<%
	String age = request.getParameter("age");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문 연습 - 홍태의</title>
</head>
<body>
			<!-- 표현식 -->
	<h1>안녕하세요.	  <%=name %> 님!</h1>
	<h2>당신의 나이는 <%=age %> 살 입니다.</h2>
	<h1>키는 <%=172 %>cm 입니다.</h1>
	<h1>나이 + 10은 <%=Integer.parseInt(age) + 10%>살 입니다.</h1>
</body>
</html>