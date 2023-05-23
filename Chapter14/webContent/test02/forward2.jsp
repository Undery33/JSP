<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="sec01.ex01.*"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
	
	// MemberBean 객체 생성하여 회원 정보를 속성에 설정
	MemberBean member = new MemberBean("lee", "1234", "이순신", "lee@test.com");
	request.setAttribute("member", member);

%>

<html>
	<head>
	   <meta charset=”UTF-8">
	   <title>forward2</title>
	</head>
	<body>
		<!-- 포워딩 -->
	    <jsp:forward page="member2.jsp" />
	</body>
</html>