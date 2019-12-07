<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="dbconn.jsp"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<nav
	class="header navbar-expand navbar-dark bg-dark navbar navbar-default"
	role="banner">
	<div class="container">
		<div class="navbar-header">
		
			<a class="navbar-brand"
				href="http://localhost:8080/WebMarket/welcome.jsp">Shopping</a>
		</div>
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link"
				href="http://localhost:8080/WebMarket/products.jsp"
				style="color: darkgray">상품 목록</a></li>
			<li class="nav-item"><a class="nav-link"
				href="http://localhost:8080/WebMarket/addProduct.jsp">상품등록</a></li>
			<li class="nav-item"><a class="nav-link"
				href="http://localhost:8080/WebMarket/editProduct.jsp?edit=update">상품
					수정</a></li>
			<li class="nav-item"><a class="nav-link"
				href="http://localhost:8080/WebMarket/editProduct.jsp?edit=delete">상품
					삭제</a></li>
			<c:choose>
				<c:when test="${empty sessionId}">
					<li class="nav-item"><a class="nav-link"
						href="<c:url value ="http://localhost:8080/WebMarket/member/loginMember.jsp"/>">로그인</a></li>
					<li class="nav-item"><a class="nav-link"
						href='<c:url value ="http://localhost:8080/WebMarket/member/addMember.jsp"/>'>회원
							가입</a></li>
				</c:when>
				<c:otherwise>
					<li style="padding-top: 7px; color: white">[<%=sessionId%>님]
					</li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value = "http://localhost:8080/WebMarket/member/logoutMember.jsp"/>">로그아웃</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value = "http://localhost:8080/WebMarket/member/resultMember.jsp"/>">회원정보</a></li>
					<li class="nav-item"><a class="nav-link"
						href="<c:url value = "/BoardListAction.do?pageNum=1"/>">게시판</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</nav>




