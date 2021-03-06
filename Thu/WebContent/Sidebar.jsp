<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://Localhost/ttth" user="root" password="1234" />
<style>
.left-addon .glyphicon {
	left: 0px;
	color: lightgrey
}

.right-addon .glyphicon {
	right: 0px;
}

.inner-addon {
	position: relative;
}
/* style icon */
.inner-addon .glyphicon {
	position: absolute;
	padding: 10px;
	pointer-events: none;
}
/* add padding  */
.left-addon input {
	padding-left: 30px;
}

.right-addon input {
	padding-right: 30px;
}
</style>
<div class="main-container ace-save-state" id="main-container">
	<script type="text/javascript">
		try {
			ace.settings.loadState('main-container')
		} catch (e) {
		}
	</script>

	<div id="sidebar"
		class="sidebar                  responsive                    ace-save-state">




		<ul class="nav nav-list">
			<li class=""><a href="static-dashboard.jsp"> <i
					class="menu-icon fa fa-tachometer"></i> <span class="menu-text">
						Dashboard </span>
			</a> <b class="arrow"></b></li>

			<li><a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-list"></i> <span class="menu-text">
						Danh sách khóa học </span> <b class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b> <sql:query var="result_nienkhoa"
					sql="select * from nienkhoa" dataSource="${con }" /> <c:forEach
					var="rowsss" items="${result_nienkhoa.rows }">
					<ul class="submenu nav-show">

						<li class=""><a href="#" class="dropdown-toggle"> <i
								class="menu-icon fa fa-caret-right"></i> ${rowsss.ThoiGian} <b
								class="arrow fa fa-angle-down"></b>
						</a> <b class="arrow"></b> <sql:query var="result_loaikhoahoc"
								sql="select * from loaikhoahoc where MaNienKhoa=${rowsss.MaNienKhoa}"
								dataSource="${con }" /> <c:forEach var="row_loaikhoahoc"
								items="${result_loaikhoahoc.rows }">
								<ul class="submenu nav-hide" style="display: none;">
									<li class=""><a href="#" class="dropdown-toggle"> <i
											class="menu-icon fa fa-pencil orange"></i>

											${row_loaikhoahoc.TenLoaiKhoaHoc } <b
											class="arrow fa fa-angle-down"></b>
									</a> <b class="arrow"></b> <sql:query var="result_khoahoc"
											sql="select * from khoahoc where MaLoaiKhoaHoc='${row_loaikhoahoc.MaLoaiKhoaHoc}'"
											dataSource="${con }" /> <c:forEach var="row_khoahoc"
											items="${result_khoahoc.rows }">
											<ul class="submenu">
												<li class=""><a
													href="static-chitietkhoahoc.jsp?khoahoc=${row_khoahoc.MaKhoaHoc}">
														<i class="menu-icon fa fa-plus purple"></i>
														${row_khoahoc.TenKhoaHoc }
												</a> <b class="arrow"></b></li>
											</ul>
										</c:forEach></li>
								</ul>
							</c:forEach></li>
					</ul>
				</c:forEach></li>

			<li><a href="#" class="dropdown-toggle"> <i
					class="menu-icon fa fa-desktop"></i> <span class="menu-text">
						Danh sách học viên </span> <b class="arrow fa fa-angle-down"></b>
			</a> <b class="arrow"></b> <sql:query var="result_nienkhoa"
					sql="select * from nienkhoa" dataSource="${con }" /> <c:forEach
					var="rowsss" items="${result_nienkhoa.rows }">
					<ul class="submenu nav-show">

						<li class=""><a href="#" class="dropdown-toggle"> <i
								class="menu-icon fa fa-caret-right"></i> ${rowsss.ThoiGian} <b
								class="arrow fa fa-angle-down"></b>
						</a> <b class="arrow"></b> <sql:query var="result_loaikhoahoc"
								sql="select * from loaikhoahoc where MaNienKhoa=${rowsss.MaNienKhoa}"
								dataSource="${con }" /> <c:forEach var="row_loaikhoahoc"
								items="${result_loaikhoahoc.rows }">
								<ul class="submenu nav-hide" style="display: none;">
									<li class=""><a href="#" class="dropdown-toggle"> <i
											class="menu-icon fa fa-pencil orange"></i>

											${row_loaikhoahoc.TenLoaiKhoaHoc } <b
											class="arrow fa fa-angle-down"></b>
									</a> <b class="arrow"></b> <sql:query var="result_khoahoc"
											sql="select * from khoahoc where MaLoaiKhoaHoc='${row_loaikhoahoc.MaLoaiKhoaHoc}'"
											dataSource="${con }" /> <c:forEach var="row_khoahoc"
											items="${result_khoahoc.rows }">
											<ul class="submenu">
												<li class=""><a
													href="static-danhsachhocvien.jsp?khoahoc=${row_khoahoc.MaKhoaHoc}">
														<i class="menu-icon fa fa-plus purple"></i>
														${row_khoahoc.TenKhoaHoc }
												</a> <b class="arrow"></b></li>
											</ul>
										</c:forEach></li>
								</ul>
							</c:forEach></li>
					</ul>
				</c:forEach></li>




			<li class=""><a href="static-guimail.jsp"> <i
					class="menu-icon fa fa-pencil-square-o"></i> <span
					class="menu-text"> Gửi Mail/SMS </span> <b class="arrow"></b>
			</a></li>

			<li class=""><a href="static-thongtincanhan.jsp"> <i
					class="menu-icon fa fa-list-alt"></i> <span class="menu-text">
						Thông tin cá nhân </span>
			</a> <b class="arrow"></b></li>

			<li class=""><a href="QuanLyKhoaHoc.jsp"> <i
					class="menu-icon fa fa-briefcase"></i> <span class="menu-text">
						Quản lý khóa học </span>
			</a> <b class="arrow"></b></li>

			<li class=""><a href="HandleLogout"> <i
					class="menu-icon fa fa-sign-out"></i> <span class="menu-text">
						Thoát </span>
			</a> <b class="arrow"></b></li>
			<form method="get" action="HandleSearchResult.jsp">
				<div class="form-group" style="margin-bottom: 0px">
					<form action="">
						<div class=" inner-addon left-addon">
							<input type="text" name="q" class="form-control"
								id="SearchBox" placeholder="Search..."> <i
								class="glyphicon glyphicon-search"></i>

						</div>
					</form>

				</div>
			</form>
		</ul>
		<!-- /.nav-list -->

		<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
			<i id="sidebar-toggle-icon"
				class="ace-icon fa fa-angle-double-left ace-save-state"
				data-icon1="ace-icon fa fa-angle-double-left"
				data-icon2="ace-icon fa fa-angle-double-right"></i>
		</div>
	</div>