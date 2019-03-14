<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<div style="margin-top: 12%;">
		<center>
			<p style="font-size: 2em;">แก้ไขรายการอาหาร/เครื่องดื่ม
			<p>
			<form action="/food/edit" >
				<table width="50%" border="1">
					<tr style="background-color: #FFC300; color: #000000">
						<th><center>FoodName</center></th>
						<th><center>Satatus</center></th>
						<th><center>Price</center></th>
					</tr>
					<tr>
						<input type="hidden" name="foodId" value="${food.foodId}">
						<td><input style="width: 100%;" type="text" name="foodName" value="${food.foodName}"><br></td>
						<br>
						<td><input style="width: 100%;" type="number" name="FoodStatus" value="${food.foodStatus}" min="0" max="1"><br></td>
						<br>
						<td><input style="width: 100%;" type="number" name="price" value="${food.price}" min="1"><br></td>
						<br>
						
					</tr>
				</table>
				<br> <input type="submit" value="แก้ไขเมนู">
			</form>
		</center>
	</div>


</body>
</html>
<%@include file="footer.jsp" %>