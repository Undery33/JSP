<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");
  
  request.setAttribute("id", "hong");
  request.setAttribute("pwd", "1234");
  session.setAttribute("name", "홍길동");
  application.setAttribute("email", "hong@test.com");
  // 주소 정보 추가
  request.setAttribute("address", "부산광역시 사상구");
%>    

<html>
	<head>
	   <meta charset=”UTF-8" >
	   <title>forward1</title>
	</head>
	<body>
		<!-- 포워딩 -->
	    <jsp:forward page="member4.jsp" />
	</body>
</html>