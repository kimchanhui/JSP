<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="../resources/css/bootstrap.min.css" />
<title>상품 수정</title>
</head>
<body>
	<jsp:include page="../menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">정보수정</h1>
		</div>
	</div>
	<%@ include file="../dbconn.jsp"%>
	<%
		String id= request.getParameter("id");

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String sql = "select * from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<form name="newMember" action="./processUpdateMember.jsp"
					class="form-horizontal" method="post" >
					<div class="form-group row">
						<label class="col-sm-2"> 이름</label>
						<div class="col-sm-3">
							<input type="text" id="name" name="name"
								class="form-control" value='<%=rs.getString("name")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">비밀번호</label>
						<div class="col-sm-3">
							<input type="text" id="password" name="password"
								class="form-control" value=<%=rs.getString("password")%>>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">주소</label>
						<div class="col-sm-3">
							<textarea name="address" cols="50" rows="2"
								class="form-control"><%=rs.getString("address")%></textarea>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">생일</label>
						<div class="col-sm-3">
							<input type="text" id="birth" class="form-control"
								value='<%=rs.getString("birth")%>'>
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">전화번호</label>
						<div class="col-sm-3">
							<input type="text" name="phone" class="form-control"
								value='<%=rs.getString("phone")%>'>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<input type="submit" class="btn btn-primary" value="등록">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<%
		}

		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	%>
</body>
</html>











