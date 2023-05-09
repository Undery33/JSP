<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("user_id");
	String pw = request.getParameter("user_pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 결과</title>
</head>
<body>
	<h1>로그인 결과 출력</h1>
	<% 
		if(id.length() == 0 || id == null) { 
	%>
		아이디를 입력하세요. <br>
		<a href="/Chapter12/login.html">로그인하기</a>
	<% 
		} else { // 아이디를 입력한 경우 		
			if(id.equals("admin")) {	// admin 계정 입력 시
	%>
			<h1>관리자로 로그인 하였습니다!</h1>
	<%
			} else { 
	%>
			<h2><%=id %>님 환영합니다!</h2>
	<%
			}
		} 
	%>
</body>
</html>