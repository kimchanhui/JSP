<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import ="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<title>회원 상세 정보</title>
</head>
<body>
	<jsp:include page="../menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 정보</h1>
		</div>
	</div>
	
	<div class="container">
	<%@include file ="../dbconn.jsp" %>
	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("password");
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, (String)session.getAttribute("sessionId"));
		rs = pstmt.executeQuery();
		while(rs.next()){
		
	%>
		<div class="row">
			<div class="col-md-6">
				<h3>아이디 :<%=rs.getString("id")%></h3>
				<p><b>이름 : </b><%=rs.getString("name")%></span>
				<p><b>성별</b> : <%=rs.getString("gender")%>
				<p><b>메일</b> : <%=rs.getString("mail")%>
				<p><b>주소</b> : <%=rs.getString("address")%>
				<p><b>생일</b> : <%=rs.getString("birth") %>
				<p><b>전화번호</b> : <%=rs.getString("phone") %> </p>				
			
				<a href="updateMember.jsp?id=<%=rs.getString("id")%>"
						class="btn btn-secondary" role="button"> 정보 수정 &raquo;</a>
				<a href="deleteMember.jsp?id=<%=rs.getString("id")%>"
						class="btn btn-secondary" role="button"> 회원 탈퇴 &raquo;</a>
			
			</div>
		</div>
		<%
			}
			if (rs != null) 
				rs.close();
			if(pstmt != null)
				pstmt.close();
			if(conn != null)
				conn.close();
		%>
		<hr>
	</div>
</body>
</html>