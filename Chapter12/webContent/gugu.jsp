<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	int dan = Integer.parseInt(request.getParameter("dan"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
</head>
<body>
	<table border="1" width="200">
		<tr align=center bgcolor="#FFFF66">
			<td colspan="2"><%=dan %>단 출력</td>
		</tr>
	<% 
		for(int i = 1; i <= 9; i++){
	%>
		<tr align="center">
			<td width="20">
				<%=dan %> * <%=i %>
			</td>
			<td width="20">
				<%=dan * i %>
			</td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>