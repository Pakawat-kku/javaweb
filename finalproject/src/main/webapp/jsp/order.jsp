<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="header.jsp"%>

<div id="container" style="margin-top: 5%;margin-left: 5%; margin-right: 5%">
<center>
<table class="table table-striped col-md-3" style="width: 70%">
			<tr style="background-color: #FFDEAD; color: #000000">
				<td width="82" style="text-align: center"><b>FoodName</b></td>
				<td width="82" style="text-align: center"><b>Price</b></td>
				<td width="79" style="text-align: center"><b>Amount</b></td>
				<td width="79" style="text-align: center"><b>total</b></td>
				<td width="10" style="text-align: center"><b>Delete</b></td>
				<td width="10" style="text-align: center"><b></b></td>
			</tr>
					
			<c:forEach items="${bybList}" var="b">
			<tr>
				
				<td style="text-align:center;">${b.byeName}</td>
				<td style="text-align:center;">${b.bybPrice}</td>
				<td style="text-align:center;">${b.bybQty}</td>
				<td style="text-align:center;">${b.bybTotal}</td>
				<td style="text-align:center;">
				<a href="/byb/deletebyb/${b.bybId}" style="color:red;">x</a>
				</td>
			</tr>	
			
				<tr>
				<c:set var="total" value="${total=total+b.bybTotal}" />
				</tr>
			</c:forEach>
			
			
</table>
			
</center>
</div>
			
<center>
<h3>ราคารวม: ${total}</h3>
<form action="/byb/bill">
		
		<input type="hidden" name="billTotal" value="${total}">
		<input type="number" name="receive">
		<input type="submit" value="checkbill" >
</form>


<br> <a href="/food/menu"><button type="button"	class="btn btn-outline-danger btn-lg">menu</button></a>
	


<%@include file="footer.jsp"%>