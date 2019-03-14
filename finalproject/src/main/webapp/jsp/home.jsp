<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  
  <title>j&b resturant</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
 
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 { 
      background-color : #696969 /* Green */
      color: #ffffff;
  }
  .bg-2 { 
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
  }
  .bg-3 { 
      background-color: #ffffff; /* White */
      color: #555555;
  }
  .bg-4 { 
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  
  </style>
</head>

<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="/signup.html">signup</a></li>
        <li><a href="/login.html">signin</a></li>
        
      </ul>
    </div>
  </div>
</nav>

<!-- First Container -->
<div class="container-fluid bg-1 text-center">
  <h1 class="margin">J&B Resturant</h1>
  <a href="/food/menu">
  <img src="/img/iconn.png" class="img-responsive img-circle margin" style="display:inline" alt="Bird" width="350" height="350">
  </a>
  <h3>ยินดีต้อนรับสู่ร้านอาหารสไตล์อีสาน รับประกันความอร่อยโดย wongnai</h3>
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h1 class="margin">มีเมนูอะไรบ้าง?</h1>
  <p>click เพื่อไปในหน้าเมนูทั้งหมด<p>
  <a href="/food/menu" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-search"></span> menu
  </a>
</div>

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">    
  <h1 class="margin">เมนูเด็ด 7 ย่านน้ำ</h1><br>
  <div class="row">
    <div class="col-sm-4">
      <h3>ปลาช่อนลุยสวน  250 บาท</h3>
      <img src="/img/c.jpg" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <h3>ยำสามกรอบ 120 บาท</h3>
      <img src="/img/3.jpg" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <h3>เป็ดพะโล้ 150 บาท</h3>
      <img src="/img/g.jpg" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <h4>J&B Resturant tol 084-6851659 or https://www.j&bresturaunt.com</a></h4> 
</footer>

</body>
</html>

</html>
<%@include file="footer.jsp" %>