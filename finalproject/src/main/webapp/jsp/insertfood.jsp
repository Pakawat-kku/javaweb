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
	<br>
	<br>
	<br>

	<div style="margin-top: 12%;">
		<center>
			<p style="font-size: 2em;">เพิ่มรายการอาหาร/เครื่องดื่ม<p>
			<table width="50%" border="1">
				<tr style="background-color: #FFC300; color: #000000">
					<th width="35%"><center>FoodName</center></th>
					<th width="15%"><center>Price</center></th>
					<th width="15%"><center>Satatus</center></th>
				</tr>
				 <tr>
				<form action="/food/create" method="post">
					 <td><input	 style="width:100%;" type="text" name="foodName"></td> 
					 <td> <input style="width:100%;" type="number" name="price"></td> 
					 <td><input style="width:100%;" type="number" name="foodStatus"></td>
					 </tr>
			</table><br>
			<input type="submit" value="เพิ่ม">
			</form>
	 </center>
  </div>
</body>
</html>
<%@include file="footer.jsp"%>