<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>회원가입</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
<script type="text/javascript" src="./resources/js/validation.js"></script>
</head>
<body>
	<jsp:include page="../menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h3 class="display-3">회원가입</h3>
		</div>
	</div>
	<%@ include file="../dbconn.jsp"%>

	<div class="container">
		<form name="addMember" action="./processAddMember.jsp"
			class="form-horizontal" method="post" >
			<div class="form-group row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text" id="id" name="id" class="form-control"
						maxlength="10" size="10">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" id="password" name="password"
						class="form-control" maxlength="10" size="10">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">이름</label>
				<div class="col-sm-3">
					<input type="text" id="name" name="name" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">성별</label>
				<div class="col-sm-3">
					<input type="radio" name="gender" value="남"> 남 <input
						type="radio" name="gender" value="여"> 여
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">생년월일</label>
				<div class="col-sm-3">
					<input type="text" id="birth" name="birth" class="form-control" placeholder="yyyy.mm.dd">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-3">
					<input type="email" id="mail" name="mail" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">전화</label>
				<div class="col-sm-3">
					<input type="tel" id="phone" name="phone" class="form-control" placeholder="000-0000-0000">
				</div>
			</div>

			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<textarea name="address" rows="2" cols="50" class="form-control"></textarea>
				</div>
			</div>
			
<!-- 			<div class="form-group row"> -->
<!-- 				<label class="col-sm-2">등록일</label> -->
<!-- 				<div class="col-sm-5"> -->
<!-- 					<input type="text" id="memberRegist_day" name="memberRegist_day" -->
<!-- 						class="form-control"> -->
<!-- 				</div> -->

				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-primary" value="등록")">
					</div>
				</div>
		</form>
	</div>

</body>
</html>












