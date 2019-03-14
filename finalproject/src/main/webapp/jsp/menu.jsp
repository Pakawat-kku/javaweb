<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="head.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="http://cdn.datatables.net/1.10.12/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css"
	href="//cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css">
<script type="text/javascript" language="javascript"
	src="//code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript"
	src="//cdn.datatables.net/1.10.11/js/jquery.dataTables.min.js">
	
</script>
<title></title>
<script>
	$(document).ready(function() {
		$('#example').DataTable();
	});
</script>

</head>

<!--  
<form action="/food/search">
	<input type="text" name="keyword">
	<input type="submit">
</form>
-->
<body style="background: #f2e268">

<div id="container" style="margin-top: 3%;margin-left: 5%; margin-right: 5%";margin-button: 0%;>
	<center>

		<br> <a href="/food/menuedit"><button type="button"
				class="btn btn-outline-danger btn-lg">Edit</button></a> <a
			href="/food/insertfood"><button type="button"
				class="btn btn-outline-primary btn-lg">Update new menu</button></a>

	</center>
	<br>
	<div id="container" style="margin-left: 5%; margin-right: 5%">
		<center>
			<div id="demo">
				<table id="example" class="display" style="width: 70%">
					<thead>
					
						<tr style="background-color: #FFDEAD; color: #000000">
							<th width="50" style="text-align: center">foodId</th>
							<th width="50" style="text-align: center">food</th>
							<th width="50" style="text-align: center">status</th>
							<th width="50" style="text-align: center">price</th>
							<th width="50" style="text-align: center">amount</th>

						</tr>
					</thead>
					<tbody>
						<c:forEach items="${foodList}" var="b">
							<tr>
						<form action="/byb/bybcre" method="get">	
								<td align="center">${b.foodId}</td>
								<td align="center">${b.foodName}</td>
						<c:choose>
					 	<c:when test="${b.foodStatus=='1'}">
						<td style="text-align:center;color:green;font-size:30pt">&uhblk;</td>
						</c:when> 
						<c:otherwise>
						<td style="text-align:center;color:red;font-size:30pt">&uhblk;</td>
						</c:otherwise>		
						</c:choose>
								<td align="center">${b.price}</td>
					 	<c:choose>
					 	
					 	<c:when test="${b.foodStatus=='1'}">
					 	
					 	<td style="text-align:center;color:#000000">
					 		<input type="hidden" name="byeName" value="${b.foodName}" size="1"> 
					 		<input type="hidden" name="bybPrice" value="${b.price}" size="1"> 
					 		<input type="number" name="bybQty" value="1" style="width:30pt" min="1"> 
							<input type="submit" value="Add"></td>
						
						</c:when> 
					  	<c:otherwise>
					 		<td style="text-align:center;color:red">out of stock</td>
					 	</c:otherwise>		
						</c:choose>
					 		</form>
							</tr>
							
						</c:forEach>
						
					</tbody>
				</table>
				
		</center>
		<div class="spacer"></div>
		<div style="text-align: center">
			<br> <a href="/byb/byblist" style="color: #FFFFFF;"><button
					type="button" class="btn btn-primary">View Order</button></a>
			
		</div>
	</div>
</div>
	<%@include file="header.jsp"%>