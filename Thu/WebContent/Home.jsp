<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Trung Tam tin hoc</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<style type="text/css">
.footer-nav {
	text-align: right;
	list-style: none;
}

.footer-nav li {
	display: inline;
}

.footer-nav li:before {
	contain: '|';
	padding: 0px 10px;
}

.dropdown-submenu {
	position: relative;
}

.dropdown-submenu>.dropdown-menu {
	top: 0;
	left: 100%;
	margin-top: -1px;
}

.dropdown-submenu:hover>.dropdown-menu {
	display: block;
}
</style>
<style>
body {
	background-color: lightgrey;
}
#custom-bootstrap-menu.navbar-default .navbar-brand {
    color: rgba(255, 255, 255, 1);
}
#custom-bootstrap-menu.navbar-default {
    font-size: 14px;
    background-color: rgba(0, 130, 200, 1);
    border-width: 1px;
    border-radius: 0px;
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(0, 130, 200, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>li>a:focus {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(51, 122, 183, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:hover,
#custom-bootstrap-menu.navbar-default .navbar-nav>.active>a:focus {
    color: rgba(255, 255, 255, 1);
    background-color: rgba(51, 122, 183, 1);
}
#custom-bootstrap-menu.navbar-default .navbar-toggle {
    border-color: #337ab7;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover,
#custom-bootstrap-menu.navbar-default .navbar-toggle:focus {
    background-color: #337ab7;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle .icon-bar {
    background-color: white;
}
#custom-bootstrap-menu.navbar-default .navbar-toggle:hover .icon-bar
 {
    background-color: #0082c8;
}
@media screen and (max-width:800px){
	#sub1.dropdown-menu>li>a,#sub2.dropdown-menu>li>a,#sub3.dropdown-menu>li>a{
	color:white;
	}
	#navbar-img{
		display:none;
	}
}
</style>
<link rel="stylesheet" href="css/w3.css">

</head>
<body>
	

	<div id="navbar-img">
		<img src="Asset/header ttth.jpg" style="width: 100%;">
	</div>
	<div class="navbar navbar-default " id="custom-bootstrap-menu"
		role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>

				</button>
				<a class="navbar-brand" href="#">Project name</a>
			</div>
			<div class="navbar-collapse collapse">

				<!-- Left nav -->
				<ul class="nav navbar-nav">
					<li><a href="Home.jsp"><span class="glyphicon glyphicon-home"></span>Trang chủ</a></li>
					<li><a href="#pan-tb"><span class="glyphicon glyphicon-pushpin"></span>Thông báo</a></li>
					
					<li><a href="#"><span class="glyphicon glyphicon-info-sign"></span>Giới thiệu <span class="caret"></span></a>
						<ul class="dropdown-menu" id="sub1">
							<li><a href="giangvien.jsp">Đội ngủ giảng viên</a></li>
							<li><a href="nhiemvu.jsp">Chức năng - Nhiệm vụ </a></li>
							
							
						</ul></li>
						<li><a href="#"><span class="glyphicon glyphicon-calendar"></span>Lịch khai giảng <span class="caret"></span></a>
						<ul class="dropdown-menu" id="sub1">
							<li><a href="Dangkiwindows-win.jsp">Windows 1 tháng 10</a></li>
							<li><a href="Dangkiandroid-cban.jsp">Android 1 tháng 10</a></li>
							
							
						</ul></li>
						<li><a href=""><span class="glyphicon glyphicon-list-alt"></span>Xem điểm <span class="caret"></span></a>
						<ul class="dropdown-menu" id="sub1">
		
							<li><a href="#">Khóa 101<span
									class="caret"></span></a>
								<ul class="dropdown-menu" id="sub2">
									<li><a href="#">Lớp lập trình windows 01</a></li>
									<li><a href="#">Lớp lập trình web 01</a></li>
									<li><a href="#">Lớp lập trình web 02</a></li>
								</ul></li>
								<li><a href="#">Khóa 100<span
									class="caret"></span></a>
								<ul class="dropdown-menu" id="sub2">
									<li><a href="#">Lớp lập trình windows 01</a></li>
									<li><a href="#">Lớp lập trình web 01</a></li>
									<li><a href="#">Lớp lập trình web 02</a></li>
								</ul></li>
								<li><a href="#">Khóa 99<span
									class="caret"></span></a>
								<ul class="dropdown-menu" id="sub2">
									<li><a href="#">Lớp lập trình windows 01</a></li>
									<li><a href="#">Lớp lập trình web 01</a></li>
									<li><a href="#">Lớp lập trình web 02</a></li>
								</ul></li>
						</ul></li>
						<li><a href="tuvan-send.jsp"><span class="glyphicon glyphicon-question-sign"></span>Tư vấn- hỏi đáp</a></li>
						<li><a href="list-mon-windows.jsp"><span class="glyphicon glyphicon-edit"></span>Đăng kí online</a></li>
				</ul>




			</div>
			<!--/.nav-collapse -->
		</div>
	</div>

	<div class="container" style="background-color: white;">

		<div class="panel panel-default">
			<div class="panel-body">
				<div class="col-md-9">
					<img src="Hinh/ttth.jpg" class="img-rounded" alt="Cinque Terre"
						width="100%">
				</div>
				<div class="col-md-3">

					<marquee scrolldelay="6" scrollamount="2" id="banner"
						direction="up" height="300px" style="height: 300px;">
						<p style="font: Times New Roman; color: blue;">Information
							technology (IT) is the application of computers and internet to
							store, retrieve, transmit, and manipulate data, or information,
							often in the context of a business or other enterprise. IT is
							considered a subset of information and communications technology
							(ICT). In 2012, Zuppo proposed an ICT hierarchy where each
							hierarchy level "contain some degree of commonality in that they
							are related to technologies that facilitate the transfer of
							information and various types of electronically mediated
							communications." Business/IT was one level of the ICT hierarchy</p>
					</marquee>

				</div>


			</div>
		</div>
		<div id="carousel-example-generic" class="carousel slide"
			data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class=""></li>
				<li data-target="#myCarousel" data-slide-to="1" class=""></li>
				<li data-target="#myCarousel" data-slide-to="2" class=""></li>
				<li data-target="#myCarousel" data-slide-to="3" class="active"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">
				<div class="item">
					<a href="list-mon-windows.jsp"> <img src="Hinh/android.png"
						alt="Chania" width="100%" height="500">
					</a>
				</div>

				<div class="item">
					<a href="list-mon-windows.jsp"> <img src="Hinh/ios.jpg"
						alt="Chania" width="100%" height="500">
					</a>
				</div>

				<div class="item">
					<a href="list-mon-windows.jsp"> <img src="Hinh/web.png"
						alt="Flower" width="100%" height="500">
					</a>
				</div>

				<div class="item active">
					<a href="list-mon-windows.jsp"> <img src="Hinh/pts.jpg"
						alt="Flower" width="100%" height="500">
					</a>
				</div>
			</div>

			<!-- Controls -->
			<a class="left carousel-control" href="#carousel-example-generic"
				role="button" data-slide="prev"> <span
				class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#carousel-example-generic"
				role="button" data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<div class="container" id="pan-TB">
			<div class="col-md-6">

				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">Thông Báo</h3>
					</div>
					<div class="panel-body">
						<div>
							<img alt="" src="Hinh/THONGBAO.png" style="width: 100%;">
						</div>
						<div class="panel-group" id="accordion" role="tablist"
							aria-multiselectable="true">

							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title"
										style="font: Arial Black; color: #800080;">

										<a class="collapsed" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseTwo"
											aria-expanded="false" aria-controls="collapseTwo"><span
											class="glyphicon glyphicon-pushpin" style="color: #800080;"></span>
											ưu đãi giảm giá cho tân sinh viên 2016 </a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingTwo">
									<div class="panel-body">Anim pariatur cliche
										reprehenderit, enim eiusmod high life accusamus terry
										richardson ad squid. 3 wolf moon officia aute, non cupidatat
										skateboard dolor brunch. Food truck quinoa nesciunt laborum
										eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on
										it squid single-origin coffee nulla assumenda shoreditch et.
										Nihil anim keffiyeh helvetica, craft beer labore wes anderson
										cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
										vice lomo. Leggings occaecat craft beer farm-to-table, raw
										denim aesthetic synth nesciunt you probably haven't heard of
										them accusamus labore sustainable VHS.</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title"
										style="font: Arial Black; color: #800080;">
										<a class="collapsed" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapseThree"
											aria-expanded="false" aria-controls="collapseThree"><span
											class="glyphicon glyphicon-pushpin" style="color: #800080;"></span>
											Học tin học cơ sở miễn phí </a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body">Anim pariatur cliche
										reprehenderit, enim eiusmod high life accusamus terry
										richardson ad squid. 3 wolf moon officia aute, non cupidatat
										skateboard dolor brunch. Food truck quinoa nesciunt laborum
										eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on
										it squid single-origin coffee nulla assumenda shoreditch et.
										Nihil anim keffiyeh helvetica, craft beer labore wes anderson
										cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
										vice lomo. Leggings occaecat craft beer farm-to-table, raw
										denim aesthetic synth nesciunt you probably haven't heard of
										them accusamus labore sustainable VHS.</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title"
										style="font: Arial Black; color: #800080;">
										<a class="collapsed" role="button" data-toggle="collapse"
											data-parent="#accordion" href="#collapse4"
											aria-expanded="false" aria-controls="collapseThree"><span
											class="glyphicon glyphicon-pushpin" style="color: #800080;"></span>
											Lịch Khai Giảng tháng 11</a>
									</h4>
								</div>
								<div id="collapse4" class="panel-collapse collapse"
									role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body">Anim pariatur cliche
										reprehenderit, enim eiusmod high life accusamus terry
										richardson ad squid. 3 wolf moon officia aute, non cupidatat
										skateboard dolor brunch. Food truck quinoa nesciunt laborum
										eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on
										it squid single-origin coffee nulla assumenda shoreditch et.
										Nihil anim keffiyeh helvetica, craft beer labore wes anderson
										cred nesciunt sapiente ea proident. Ad vegan excepteur butcher
										vice lomo. Leggings occaecat craft beer farm-to-table, raw
										denim aesthetic synth nesciunt you probably haven't heard of
										them accusamus labore sustainable VHS.</div>
								</div>
							</div>
						</div>
					</div>

					<nav aria-label="...">
					<ul class="pager">
						<li class="previous"><a href="#"><span aria-hidden="true">&larr;</span>Mới
								hơn</a></li>
						<li class="next"><a href="#">Cũ hơn<span
								aria-hidden="true">&rarr;</span></a></li>
					</ul>
					</nav>



				</div>



			</div>
		</div>

	</div>
	<footer
		style="background-color: #0082c8; color: white; padding-top: 25px;">
	<div class="container">

		<div class="bottom-footer"
			style="border-top: 1px solid #b2b2b2; margin-top: 10px; padding-top: 10px; corlor: red;">
			<div class="col-md-5">
				<p>developed by G6</p>
				<span class="glyphicon glyphicon-home"></span> Cơ sở chính: XX/XX,
				đường ss, Q.qq, TH. HCM <br> <span
					class="glyphicon glyphicon-phone-alt"></span> Đt: xx50 43x 8xx
			</div>
			<div class="col-md-7">
				<ul class="footer-nav">
					<li><a href="Home.jsp">Home</a></li>
					<li><a href="giangvien.jsp">Contract</a></li>
					<li><a href="thungo.jsp">About us</a></li>
				</ul>
			</div>

		</div>

	</div>
	</footer>
	
	<script type="text/javascript">
$(document).ready(function() {
	  
	  $(window).scroll(function () {
	      //if you hard code, then use console
	      //.log to determine when you want the 
	      //nav bar to stick.  
	      console.log($(window).scrollTop())
	    if($(window).width()>800){
	    	if ($(window).scrollTop() > 120) {
	  	      $('.navbar-default').addClass('navbar-fixed-top');
	  	    }
	  	    if ($(window).scrollTop() < 121) {
	  	      $('.navbar-default').removeClass('navbar-fixed-top');
	  	    }
	    }else{
	    	$('.navbar-default').addClass('navbar-fixed-top');
	    	
	    }
	  });
	});
</script>
<script type="text/javascript" src="js/jsfornav2.js"></script>


<script type="text/javascript" src="js/jsfornav2-1.js"></script>
</body>
</html>
