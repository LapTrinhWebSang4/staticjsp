<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />
<!-- text fonts -->
<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

<!-- ace styles -->
<link rel="stylesheet" href="assets/css/ace.min.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

<!-- inline styles related to this page -->

<!-- ace settings handler -->
<script src="assets/js/ace-extra.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="bootstrap-theme.css">
<link rel="stylesheet" type="text/css" href="Asset/headercss.css">
<style>
.panel-heading{
    			background-color: #4CAF50;
    			color: white;
					}
</style>
	
</head>
<body class="no-skin">
	<!--nav-->

	<div id="navbar" class="navbar navbar-default          ace-save-state">
		<img src="Asset/header ttth.jpg" style="width: 100%; height: 120px">
		<div class="navbar-container ace-save-state" id="navbar-container">
			<button type="button" class="navbar-toggle menu-toggler pull-left"
				id="menu-toggler" data-target="#sidebar">
				<span class="sr-only">Toggle sidebar</span>

			</button>
		</div>
	</div>


	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/ttth"
                           user="root"  password="123456"/>
                       
		       <sql:query dataSource="${dbsource }"  var="result">SELECT * FROM taikhoan
		            WHERE Taikhoan=?;
            <sql:param value='${param.Taikhoan}' /></sql:query>
		        

		       
      
	<div class="main-container ace-save-state" id="main-container">


		<div id="sidebar" class="sidebar responsive  ace-save-state">
			<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>





			<!-- /.sidebar-shortcuts -->

			<ul class="nav nav-list">
				<div class="space-32"></div>
				<div class="space-32"></div>
				<div class="space-32"></div>
				<li class="#"><a href="QuanTriVien.jsp"> <i
						class="menu-icon fa fa-picture-o"></i> <span class="menu-text">
							Quản Lí Tài Khoản </span>
				</a> <b class="arrow"></b></li>
				<li class="#"><a href="QuanTriMail.jsp"> <i
						class="menu-icon fa fa-newspaper-o"></i> <span class="menu-text">
							Gửi Mail </span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="QuanTriCN.jsp"> <i
						class="menu-icon fa fa fa-commenting-o"></i> <span
						class="menu-text"> Thông tin cá nhân </span>
				</a> <b class="arrow"></b></li>
				<li class=""><a href="login.jsp"> <i
						class="menu-icon fa fa-sign-out"></i> <span class="menu-text">Đăng
							xuất</span>
				</a> <b class="arrow"></b></li>

			</ul>





			<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
				<i id="sidebar-toggle-icon"
					class="ace-icon fa fa-angle-double-left ace-save-state"
					data-icon1="ace-icon fa fa-angle-double-left"
					data-icon2="ace-icon fa fa-angle-double-right"></i>
			</div>
		</div>
		<div class="main-content">
			<div class="main-content-inner">
				<div class="row">
					<div class="container-fluid">
						<ul class="nav nav-justified w3-pale-blue">
							<li><a href="Home.jsp"><strong>Trang chủ</strong></a></li>
							<li><a href="thongbao.jsp"><strong>Thông báo</strong></a></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"><strong>Giới thiệu</strong><span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="thungo.jsp"><strong>Thư ngỏ</strong></a></li>
									<li><a href="giangvien.jsp"><strong>Đội ngủ
												giản viên</strong></a></li>
									<li><a href="nhiemvu.jsp"><strong>Chức năng
												nhiệm vụ</strong></a></li>
								</ul></li>
							<li class="dropdown"><a class="dropdown-toggle"
								data-toggle="dropdown" href="#"><strong>Lịch khai
										giảng</strong><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="Dangkiwindows-win.jsp"><strong>Windows
												1 tháng 10</strong></a></li>
									<li><a href="Dangkiandroid-cban.jsp"><strong>Android
												1 tháng 10</strong></a></li>
								</ul></li>

							<li><a href="tuvan-send.jsp"><strong>Tư
										vấn-hỏi đáp</strong></a></li>
							<li><a href="login.jsp"><strong>Đăng xuất</strong></a></li>
						</ul>
					</div>
				</div>
				<div class="page-content">
				<div class="space-32"></div>
				<div class="space-22"></div>
					<c:forEach var="col" items="${result.rows}">
						<div class="form-group" style="padding-left: 50px">
							<div class="col-md-11 ">
								<div class="row">


									<div class="panel panel-primary">
										<div class="panel-heading" style="color: #f6bb42">
											<h3>
												<Strong>Sửa Đổi</Strong>
											</h3>
										</div>
										<form class="form-group" action="update.jsp" method="post">
											<div class="col-md-13 well">

												<div class="form-group">
													<label for="inputlg">Tên Tài Khoản </label> <input
														class="form-control" id="inputlg" type="text"
														value="${col.Taikhoan}"  disabled >
												</div>
												<div class="hide">
													<label for="inputlg">Tên Tài Khoản </label> <input
														class="form-control" id="inputlg" type="text"
														value="${col.Taikhoan}" name="id"  >
												</div>
												<div class="form-group">
													<label for="inputlg">Mật Khầu </label> <input
														class="form-control" id="inputmk" type="text" value="${col.Matkhau}" name="matkhau" >
												</div>

												<div class="form-group">
													<label for="inputlg">Tên Thành Viên </label> <input
														class="form-control" id="inputtv" type="text" name="name"
														value="${col.TenThanhVien}">
												</div>
												<c:if test="${col.Quyen =='tvv'}">
												<div class="form-group">
													<label for="inputlg">Phân Quyền </label> <select
														class="form-control" name="size" onchange="changefun();" id="box">

														<option>Quản Trị Nội Dung</option>
														<option selected="selected">Tư Vấn Viên</option>
														<option>Quản Trị</option>

													</select>



												</div>
												<div class="hide">
																    <label for="input1" class="col-sm-3 control-label"></label>
																    <div class="col-sm-7">
																      <input type="text" class="form-control" name="quyen" value="tvv" id="quyen">
																    </div>
												</div>
												
												</c:if>
												
												<c:if test="${col.Quyen == 'qtnd'}">
												<div class="form-group">
													<label for="inputlg">Phân Quyền </label> 
													<select class="form-control" name="size" onchange="changefun();" id="box">

														<option selected="selected">Quản Trị Nội Dung</option>
														<option >Tư Vấn Viên</option>
														<option>Quản Trị</option>

													</select>



												</div>
												<div class="hide">
																    <label for="input1" class="col-sm-3 control-label"></label>
																    <div class="col-sm-7">
																      <input type="text" class="form-control" name="quyen" value="qtnd" id="quyen">
																    </div>
												</div>
												</c:if>
												<c:if test="${col.Quyen == 'qtv'}">
												<div class="form-group">
													<label for="inputlg">Phân Quyền </label>
													 <select class="form-control" name="size" onchange="changefun();" id="box">

														<option>Quản Trị Nội Dung</option>
														<option >Tư Vấn Viên</option>
														<option selected="selected">Quản Trị</option>

													</select>



												</div>
												<div class="hide">
																    <label for="input1" class="col-sm-3 control-label"></label>
																    <div class="col-sm-7">
																      <input type="text" class="form-control" name="quyen" value="qtv" id="quyen" >
																    </div>
												</div>
												</c:if>
												<div class="hide">
																    <label for="input1" class="col-sm-3 control-label"></label>
																   
																      <input type="text" class="form-control" name="bang" value="${3}" >
																    
																  </div>
	
												<div class="form-group"
													style="text-align: right; padding-top: 10px; padding-bottom: 10px">
													<input class="btn btn-info" type="submit" value="Xác nhận" id="submit"/>
													 <a href="QuanTriVien.jsp"
														class="btn btn-danger" role="button"> Hủy Bỏ </a>
												</div>
											</div>

										</form>
									</div>
								</div>
							
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>

	</div>
	<!-- /.main-container -->



	<!--Script-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.0.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script src="assets/js/ace-elements.min.js"></script>
	<script src="assets/js/ace.min.js"></script>
	<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		
	<script type="text/javascript">
		function validate(id)
		{
			if($("#"+id).val()==null || $("#"+id).val()=="")
			{
				var div = $("#"+id).closest("div");
				div.addClass("has-error");
				$("#glypcn"+id).remove();
				div.addClass("has-error has-feedback");
				
				div.append('<span id="glypcn'+id+'" class="glyphicon glyphicon-warning-sign form-control-feedback"></span>');
				return false;
			}else {
				var div = $("#"+id).closest("div");
				div.removeClass("has-error");

				$("#glypcn"+id).remove();
				return true;
			}
		}
		function reset(){
   		document.getElementById("inputtk").reset();}
   		function changefun() {
   		 var selectBox = document.getElementById("box");
   			var selectedValue = selectBox.options[selectBox.selectedIndex].value;
   			
   		   if(selectBox.selectedIndex==0)
   				{
   			   	$("#quyen").val("qtnd");
   				alert($("#quyen").val());
   				}
   		   else if(selectBox.selectedIndex==1)
  				{$("#quyen").val("tvv");
  				alert($("#quyen").val());
  				}
   		   else if(selectBox.selectedIndex==2)
  				{
   			   $("#quyen").val("qtv");
   			alert($("#quyen").val());
  				}
   		
   		   
   		   }
   		
		$(document).ready(
				function()
				{

					$("#btntao").click(function()
					{

						
						if(!validate("inputmk"))
						{
							return false;
						}
						if(!validate("inputtv"))
						{
							return false;
						}
						$("#inputtk").val("");
						$("#inputmk").val("");
						
						
					});
				}
			);
		</script>


</body>
</html>