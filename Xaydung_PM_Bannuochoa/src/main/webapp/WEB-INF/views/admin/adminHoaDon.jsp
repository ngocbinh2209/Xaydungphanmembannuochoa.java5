<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Ngọc Bình Premium</title>
<style>
    .table_desc table {
        width: 100%;
        border-collapse: collapse;
    }
    
    .table_desc th, .table_desc td {
        border: 1px solid #ddd;
        padding: 8px;
    }
    
    .table_desc th {
        background-color: #f2f2f2;
        color: black;
        text-align: center;
    }
    
    .table_desc td {
        text-align: center;
    }
    
    .table_desc tr:hover {
        background-color: #f1f1f1;
    }
    
    .table_desc .product_name a {
        color: #007bff;
        text-decoration: none;
    }
    
    .table_desc .product_name a:hover {
        text-decoration: underline;
    }
</style>
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

	<div class="container">
		<!--pos page inner-->
		<div class="pos_page_inner">
			<!--header area -->
			<div class="header_area">
				<div class="header_bottom">
					<div class="row">
						<div class="col-12">
							<div class="main_menu_inner">
								<div class="main_menu d-none d-lg-block">
									<nav>
										<ul>
											<li class=""><a href="/perfume/home">Trang Chủ</a></li>
											<li class=""><a href="/admin/thongke">Thống Kê</a></li>
											<li><a href="">Sản Phẩm</a>
												<div class="mega_menu jewelry">
													<div class="mega_items jewelry">
														<ul class="vertical-menu">
															<li><a href="">Quản Lý Sản Phẩm </a></li>
															<li><a href="">Quản Lý Loại Sản Phẩm</a></li>
														</ul>
													</div>
												</div></li>
											<li class=""><a href="/admin/hoadon">Hóa Đơn</a></li>
											<li class=""><a href="/admin/nguoidung">Người Dùng</a></li>
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
								<li><i class="fa fa-angle-right"></i></li>
								<li>Hóa Đơn</li>
							</ul>

						</div>
					</div>
				</div>
			</div>
			<!--breadcrumbs area end-->

			<!--shopping cart area start -->
			<div class="shopping_cart_area">
				<form action="" method="">
					<div class="row"></div>
						<div class="col-12">
						<div class="table_desc wishlist">
							<div class="cart_page table-responsive">
								<table>
									<thead>
										<tr>
											<th class="product_name">ID</th>
											<th class="product-price">Tên Người Dùng</th>
											<th class="product_quantity">Địa Chỉ</th>
											<th class="product_quantity">Ngày Tạo</th>
											<th class="product_quantity">Trạng Thái</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="product_name"><a href="#">Handbag
													fringilla</a></td>
											<td class="product-price">£65.00</td>
											<td class="product_quantity">2</td>
											<td class="product_quantity">2</td>
											<td class="product_quantity">2</td>
										</tr>

									</tbody>
								</table>
							</div>
							</div>	
						</div>
				</form>
			</div>
			<!--shopping cart area end -->
		</div>
		<!--pos page inner end-->
	</div>

	<!-- all js here -->
	<script src="/assets/js/vendor/jquery-1.12.0.min.js"></script>
	<script src="/assets/js/popper.js"></script>
	<script src="/assets/js/bootstrap.min.js"></script>
	<script src="/assets/js/ajax-mail.js"></script>
	<script src="/assets/js/plugins.js"></script>
	<script src="/assets/js/main.js"></script>
</body>
</html>
