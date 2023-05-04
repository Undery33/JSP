<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
<!-- 선언문 작성 -->
<%!	
	String name = "홍태의";
	public String getName(){
		return name;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언문 연습 - 홍태의</title>
</head>
<body>
			<!-- 표현식 -->
	<h1>안녕하세요.	  <%=name %> 님!</h1>\
</body>
</html>