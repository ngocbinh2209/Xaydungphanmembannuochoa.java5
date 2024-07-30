<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Ngọc Bình Premium</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="/assets/img/favicon.png">

<!-- all css here -->
<link rel="stylesheet" href="/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="/assets/css/plugin.css">
<link rel="stylesheet" href="/assets/css/bundle.css">
<link rel="stylesheet" href="/assets/css/style.css">
<link rel="stylesheet" href="/assets/css/responsive.css">
<script src="/assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
	<!-- Add your site or application content here -->

	<!--pos page start-->
	<div class="pos_page">
		<div class="container">
			<!--pos page inner-->
			<div class="pos_page_inner">
				<!--header area -->
				<div class="header_area">
					<!--header top-->
					<div class="header_top">
						<div class="row align-items-center">
							<div class="col-lg-6 col-md-6">
								<div class="switcher">
									<ul>
										<li class="languages"><a href="#"><img
												src="/assets/img/logo/fontlogo.jpg" alt=""> English <i
												class="fa fa-angle-down"></i></a>
											<ul class="dropdown_languages">
												<li><a href="#"><img
														src="/assets/img/logo/fontlogo.jpg" alt=""> English</a></li>
												<li><a href="#"><img
														src="/assets/img/logo/fontlogo2.jpg" alt=""> Việt
														Nam </a></li>
											</ul></li>
									</ul>
								</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="header_links">
									<ul>
										<li><a href="#lienHe" title="Contact">Liên Hệ</a></li>
										<li><a href="/perfume/SpYeuThich" title="wishlist">Sản
												Phẩm Yêu Thích</a></li>
										<li><a href="login.html" title="Login">Hi:
												${fullname}</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!--header top end-->

					<!--header middel-->
					<div class="header_middel">
						<div class="row align-items-center">
							<!--logo start-->
							<div class="col-lg-3 col-md-3">
								<div class="logo">
									<a href="/perfume/home"><img
										src="/assets/img/logo/logo.png" alt=""></a>
								</div>
							</div>
							<!--logo end-->
							<div class="col-lg-9 col-md-9">
								<div class="header_right_info">
									<div class="search_bar">
										<form action="#">
											<input placeholder="Tìm Kiếm..." type="text">
											<button type="submit">
												<i class="fa fa-search"></i>
											</button>
										</form>
									</div>
									<div class="shopping_cart">
										<a href="/perfume/gioHang"><i class="fa fa-shopping-cart"></i>
											Giỏ Hàng</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--header middel end-->
					<div class="header_bottom">
						<div class="row">
							<div class="col-12">
								<div class="main_menu_inner">
									<div class="main_menu d-none d-lg-block">
										<nav>
											<ul>
												<li class=""><a href="/perfume/home">Trang Chủ</a></li>
												<li class=""><a href="/perfume/nam">Nước Hoa Nam</a></li>
												<li class=""><a href="/perfume/nu">Nước Hoa Nữ</a></li>
												<li class="contact-us"><a href="/perfume/login">Đăng
														Nhập - Đăng Ký</a>
													<div class="mega_menu jewelry">
														<div class="mega_items jewelry">
															<ul class="vertical-menu">
																<li><a href="/perfume/quenMK">Quên Mật Khẩu</a></li>
																<li><a href="/perfume/doiMK">Đổi Mật Khẩu - Xóa
																		Tài Khoản</a></li>
																<li><a href="/perfume/logout" title="logouut">Đăng
																		Xuất</a></li>
															</ul>
														</div>
													</div></li>

											</ul>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--header end -->

				<!--breadcrumbs area start-->
				<div class="breadcrumbs_area">
					<div class="row">
						<div class="col-12">
							<div class="breadcrumb_content">
								<ul>
									<li><a href="index.html">Trang Chủ</a></li>
									<li><i class="fa fa-angle-right"></i></li>
									<li>Quên Mật Khẩu</li>
								</ul>

							</div>
						</div>
					</div>
				</div>
				<!--breadcrumbs area end-->

				<!-- customer login start -->
				<div class="customer_login">
					<div class="row">
						<!--Quên MK start-->
						<div class="col-lg-6 col-md-6">
							<div class="account_form register">
								<h2>Quên Mật Khẩu</h2>
								<form:form action="/perfume/layLaiMK" method="post"
									modelAttribute="account">
									<h5 class="error">${message}</h5>
									<p>
										<label>Tên Người Dùng <span>*</span></label>
										<form:input path="username" />
									</p>
									<p>
										<label>Email <span>*</span></label>
										<form:input path="email" />
									<p>
										<label>Mật Khẩu Mới <span>*</span></label>
										<form:input path="password" />
									</p>
									<p>
										<label>Nhập Lại Mật Khẩu Mới <span>*</span></label>
										<form:input path="confirmPassword" />
									</p>
									<div class="login_submit">
										<button type="submit">Lấy lại Mật Khẩu</button>
										<button type="reset">Cancel</button>
									</div>
								</form:form>
							</div>
						</div>
						<!--Quên MK end-->
					</div>
				</div>
				<!-- customer login end -->

				<!--footer area start-->
				<div class="footer_area">
					<div class="footer_top">
						<div class="container">
							<div class="row">
								<div class="col-lg-3 col-md-6 col-sm-6">
									<div id="lienHe" class="footer_widget">
										<h3>Chúng Tôi</h3>
										<p>Khám phá hương thơm quyến rũ từ Ngọc Bình Perfume - nơi
											mỗi giọt nước hoa là sự kết hợp hoàn hảo giữa nghệ thuật và
											khoa học, giúp bạn tự tin tỏa sáng và bộc lộ phong cách
											riêng.</p>
										<div class="footer_widget_contect">
											<p>
												<i class="fa fa-map-marker" aria-hidden="true"></i> <a
													href="https://maps.app.goo.gl/q1K3PcnFjwwkvtH79">Thanh
													Khê. Đà Nẵng</a>
											</p>

											<p>
												<i class="fa fa-mobile" aria-hidden="true"></i> +84
												366167909
											</p>
											<a href="#"><i class="fa fa-envelope-o"
												aria-hidden="true"></i> binhmnpd07380@fpt.edu.vn</a>
										</div>
									</div>
								</div>
								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="footer_widget">
										<h3>Tài khoản của tôi</h3>
										<ul>
											<li><a href="/perfume/login">Đăng nhập - Đăng Ký</a></li>
											<li><a href="/perfume/quenMK">Quên mật khẩu</a></li>
											<li><a href="/perfume/doiMK">Đổi mật khẩu</a></li>
										</ul>
									</div>
								</div>
								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="footer_widget">
										<h3>Chính sách</h3>
										<ul>
											<li><a href="#">Chính sách và quy định chung</a></li>
											<li><a href="#">Điều khoản sử dụng</a></li>
										</ul>
									</div>
								</div>
								<div class="col-lg-3 col-md-6 col-sm-6">
									<div class="footer_widget">
										<h3>Đối tác - liên kết</h3>
										<ul>
											<li><a href="https://www.facebook.com/wildhorse9">
													Ngọc Bình Media</a></li>
											<li><a href="https://getbootstrap.com"> Getbootstrap</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="footer_bottom">
						<div class="container">
							<div class="row align-items-center">
								<div class="col-lg-6 col-md-6">
									<div class="copyright_area">
										<ul>
											<li><a href="#"> Chúng tôi </a></li>
											<li><a href="#"> Dịch vụ khách hàng </a></li>
											<li><a href="#"> Chính sách bảo mật </a></li>
										</ul>
										<p>
											Bản quyền &copy; 2024 <a href="#">Perfume</a>. Đã đăng ký bản
											quyền.
										</p>
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="footer_social text-right">
										<ul>
											<li><a href="#"><i class="fa fa-facebook"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus"
													aria-hidden="true"></i></a></li>
											<li><a class="pinterest" href="#"><i
													class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-wifi"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--footer area end-->

				<!-- all js here -->
				<script src="/assets/js/vendor/jquery-1.12.0.min.js"></script>
				<script src="/assets/js/popper.js"></script>
				<script src="/assets/js/bootstrap.min.js"></script>
				<script src="/assets/js/ajax-mail.js"></script>
				<script src="/assets/js/plugins.js"></script>
				<script src="/assets/js/main.js"></script>
</body>
</html>
