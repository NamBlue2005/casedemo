<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông Tin Người Dùng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fff8e1;
        }
        header {
            background: linear-gradient(to right, #ff5722, #ffc107);
            color: white;
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        .logo {
            font-size: 2rem;
            font-weight: bold;
            text-align: center;
            margin: 0 auto;
        }
        .nav-link {
            color: white !important;
        }
        .nav-link:hover {
            color: #ffe082 !important;
        }
        footer {
            background: #e64a19;
            color: white;
        }
        footer p {
            margin: 0;
        }
        .btn-dark {
            background-color: #ff5722;
            border: none;
        }
        .btn-dark:hover {
            background-color: #d84315;
        }
        .container {
            margin-top: 50px;
        }
        .card-body {
            background-color: #fff;
        }
        .title {
            font-size: 2rem;
            font-weight: bold;
            color: #ff5722;
            text-align: center;
        }
    </style>
</head>
<body>
<header class="py-3">
    <div class="container d-flex justify-content-between align-items-center">
        <a href="home.jsp" class="logo text-decoration-none text-white">NamHùng</a>
        <nav>
            <ul class="nav">
                <li class="nav-item"><a href="account.jsp" class="nav-link">Tài Khoản</a></li>
                <li class="nav-item"><a href="Carts/shoppingcart.jsp" class="nav-link">Giỏ Hàng</a></li>
                <li class="nav-item"><a href="logout.jsp" class="nav-link">Đăng Xuất</a></li>
            </ul>
        </nav>
    </div>
</header>

<section class="container">
    <h1 class="title">Thông Tin Cá Nhân</h1>
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header" style="text-align: center">
                    Thông tin tài khoản
                </div>
                <div class="card-body">
                    <h5 class="card-title">Tên người dùng: <%= session.getAttribute("username") %></h5>
                    <p class="card-text">Giới tính: <%= session.getAttribute("gender") %></p>
                    <p class="card-text">Email: <%= session.getAttribute("email") %></p>
                    <p class="card-text">Số điện thoại: <%= session.getAttribute("phone") %></p>
                    <p class="card-text">Địa chỉ: <%= session.getAttribute("address") %></p>
                    <a href="updateAccount.jsp" class="btn btn-dark btn-sm">Cập nhật thông tin</a>
                    <a href="changePassword.jsp" class="btn btn-dark btn-sm">Thay đổi mật khẩu</a>
                    <a href="logout.jsp" class="btn btn-dark btn-sm">Đăng Xuất</a>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="py-3 text-center">
    <p>&copy; 2025 NamHung. All rights reserved.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>