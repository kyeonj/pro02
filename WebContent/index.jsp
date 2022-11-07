<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>메인 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="common.css">
<style>

.in_container { clear:both; width:1400px; margin:0 auto;  }
.in_container:after { content:""; display:block; clear:both; }
.carousel-inner {width: 100%; height: auto; padding-left: 250px; padding-right: 250px; margin-top: 50px; margin-bottom: 50px;}
</style>
</head>
<body>
<%@ include file="header.jsp" %>
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./img/main1.jpg" class="d-block w-100" alt="메인배너이미지">
    </div>
    <div class="carousel-item">
      <img src="./img/main2.jpg" class="d-block w-100" alt="메인배너이미지">
    </div>
    <div class="carousel-item">
      <img src="./img/main3.jpg" class="d-block w-100" alt="메인배너이미지">
    </div>
    <div class="carousel-item">
      <img src="./img/main4.jpg" class="d-block w-100" alt="메인배너이미지">
    </div>
    <div class="carousel-item">
      <img src="./img/main5.jpg"  class="d-block w-100" alt="메인배너이미지">
    </div>
    <div class="carousel-item">
      <img src="./img/main6.jpg" class="d-block w-100" alt="메인배너이미지">
    </div>
    <div class="carousel-item">
      <img src="./img/main7.jpg" class="d-block w-100" alt="메인배너이미지">
    </div>
  </div>
</div>
<div class="container" id="content">
<ul class="row" id="best">
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/new1.jpg" class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <a href="#" class="btn btn-outline-info">상세보기</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/new2.jpg"class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <a href="#" class="btn btn-outline-info">상세보기</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/new3.jpg"class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <a href="#" class="btn btn-outline-info">상세보기</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/new4.jpg"class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <a href="#" class="btn btn-outline-info">상세보기</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/new5.jpg"class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <a href="#" class="btn btn-outline-info">상세보기</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/new6.jpg"class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <a href="#" class="btn btn-outline-info">상세보기</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/new7.jpg"class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <a href="#" class="btn btn-outline-info">상세보기</a>
		  </div>
		</div>
	</li>
	<li class="col-xl-3 col-lg-4 col-md-6 col-sm-12">
		<div class="card" style="width: 18rem;">
		  <img src="./img/new8.jpg"class="card-img-top" alt="더미이미지">
		  <div class="card-body">
		    <a href="#" class="btn btn-outline-info">상세보기</a>
		  </div>
		</div>
	</li>
</ul>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>