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
	<br>
	<br>
	<br>
	<br>
	<center>

		<br> <a href="/food/menu"><button type="button"	class="btn btn-outline-danger btn-lg">Food</button></a>
		 <a	href="/food/insertfood"><button type="button" class="btn btn-outline-primary btn-lg">Update new menu</button></a>
	</center>

	<div id="container" style="margin-left: 5%; margin-right: 5%">
		<center>
			<div id="demo">
				<table id="example" class="display" style="width: 70%">
					<thead>
						<tr style="background-color: #FFC300; color: #000000">
							<th width="50" style="text-align: center">foodId</th>
							<th width="50" style="text-align: center">food</th>
							<th width="50" style="text-align: center">status</th>
							<th width="50" style="text-align: center">price</th>
						
							<td width="100" style="text-align: center">edit</td>
							<td width="100" style="text-align: center">delete</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${foodList}" var="b">
							<tr>
								<td align="center">${b.foodId}</td>
								<td align="center">${b.foodName}</td>
								<c:choose>
					 	
					 	<c:when test="${b.foodStatus=='1'}">
					 		<td style="text-align:center;background-color:#FDF8D9;color:green;font-size:1em;"><input type="hidden" name="txtFoodID" value="FoodId"> 
							Left in stock</td>
					 	</c:when> 
					 	<c:otherwise>
					 			<td style="text-align:center;background-color:#FDF8D9;color:red;font-size:1em;">out of stock</td>
					 	</c:otherwise>		
						</c:choose>
						<td align="center">${b.price}</td>			
						<td style="text-align:center;background-color:#FDF8D9;color:#000000"><a href='/food/editform/${b.foodId}'>แก้ไข</td>
                        <td style="text-align:center;background-color:#FDF8D9;color:#000000"><a href='/food/remove/${b.foodId}'>ลบ</a></td>			
									
						</c:forEach>
					</tbody>
				</table>
		</center>
		<div class="spacer"></div>
		<div style="text-align: center">
			<br>
			<a href="show.php" style="color: #FFFFFF;"><button type="button"
					class="btn btn-primary">View Order</button></a>
			<!-- | <a href="view_order2.php" style="color:#FFFFFF"><button type="button" class="btn btn-light">View OrderAll</button></a>-->
		</div>
	</div>
	<%@include file="header.jsp"%>