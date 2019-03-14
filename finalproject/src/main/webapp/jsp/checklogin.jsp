<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="header.jsp"%>

<%
String name = request.getParameter( "username" );
session.setAttribute( "user", name );
%>
<script>
alert("login success");
document.location.href="/food/home";
</script>
</body>
</html>
<%@include file="footer.jsp"%>