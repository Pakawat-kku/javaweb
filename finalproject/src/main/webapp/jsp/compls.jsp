<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="header.jsp"%>
<div id="container" style="margin-top: 7%;margin-left: 5%; margin-right: 5%">
<center>

			<h1>J&B Resturant</h1>
	<div id="container" style="margin-top: 3%;margin-left: 5%; margin-right: 5%; margin-bottom: 3%">		
			<h2 style="">ราคารวมสุทธิ : ${total}</h2>
			<h2 style="">รับมา : ${receive}</h2>
			<h2 style="">ถอน : ${compls}</h2>
	<div>		
	<br>
			<h2>ขอบคุณที่มาใช้บริการค่ะ</h2>
	<br>
		<img src=/img/thank.gif>

</center>
</div>
</body>
</html>