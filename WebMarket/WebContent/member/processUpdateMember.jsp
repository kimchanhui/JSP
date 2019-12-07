<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ include file="../dbconn.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String address = request.getParameter("address");
	String birth = request.getParameter("birth");
	String phone = request.getParameter("phone");

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	String sql = "select * from member where id = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, id);
	rs = pstmt.executeQuery();

	if (rs.next()) {
		sql = "UPDATE member SET name=?, password=?, address=?, birth=?, phone=? WHERE id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, name);
		pstmt.setString(2, password);
		pstmt.setString(3, address);
		pstmt.setString(4, birth);
		pstmt.setString(5, phone);
		pstmt.setString(6, id);

		pstmt.executeUpdate();
	}
	if (rs != null)
		rs.close();
	if (pstmt != null)
		pstmt.close();

	response.sendRedirect("resultMember.jsp?id=" + id);
%>

























