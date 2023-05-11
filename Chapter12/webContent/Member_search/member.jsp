<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*"
    import="sec02.ex01.*"
    pageEncoding="UTF-8"
%>
<!-- 검색된 멤버를 출력하기 위한 JSP -->
<%
	// utf-8 형식으로 인코딩
   request.setCharacterEncoding("utf-8");
	// name 변수를 get 방식으로 _name 변수에 저장
   String _name = request.getParameter("name");
	// MemberVO 클래스 메모리 업로드
   MemberVO memberVO = new MemberVO();
	// memberVO에 있는 setName에 name을 넘겨줌
   memberVO.setName(_name);
	// MemberDAO 클래스 메모리 업로드
   MemberDAO dao=new MemberDAO();
   // MemberVO를 MemberDAO 내 listMembers 메소드에 넘겨준 뒤 memberList 리스트 형식으로 저장
   List membersList=dao.listMembers(memberVO);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원 정보 출력창</title>
		
		<!-- 회원 정보를 회원이 보기 좋게 출력하기 위해 style 지정 -->
		<style>
			h1 {
				text-align: center;
			}
			table {
				width: 80%;
				border:1px solid black;
				border-collapse:collapse;
				margin-left: auto;
				margin-right: auto;
				border-spacing: 0px;
			}
			td, th {
				border:1px solid gray;
				padding:10px;
				vertical-align: top;
				text-align: center;
			}
			thead, th {
				background:#eee;
			}
		</style>
	</head>
	
	<body>
		<!-- search 내 name을 입력받아 같은 값인 멤버를 출력 -->
		<h1>회원 정보 출력</h1>		
		 <table border='1' width='800' align='center'>
		 <thead>
		 	<tr> 
			     <th>아이디</th>
			     <th>비밀번호</th>
			     <th>이름</th>
			     <th>이메일</th>
			     <th>가입일자</th>
			</tr>
		</thead>
		<%	
			// for 문으로 검색된 멤버 리스트 사이즈만큼 출력
			// MemberVO 내 메소드로 값을 가져옴
			for (int i = 0; i < membersList.size(); i++) {
				MemberVO vo = (MemberVO)membersList.get(i);
				String id = vo.getId();
				String pwd = vo.getPwd();
				String name = vo.getName();
				String email = vo.getEmail();
				Date joinDate = vo.getJoinDate();
		%>
				<tr>
					<!-- MemberVO에서 가져와 따로 저장해둔 변수 출력 -->
					<td><%= id %></td>
					<td><%= pwd %></td>
					<td><%= name %></td>
					<td><%= email %></td>
					<td><%= joinDate %></td>
				</tr>		   
		<%		
			}
		%>	
		</table>
	</body>
</html>