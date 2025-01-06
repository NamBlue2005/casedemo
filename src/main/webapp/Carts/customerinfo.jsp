<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="model.Product" %>
<%@ page import="service.ProductService" %>

<%
    String productIdParam = request.getParameter("productId");
    Product product = null;

    if (productIdParam != null && !productIdParam.isEmpty()) {
        try {
            int productId = Integer.parseInt(productIdParam);
            ProductService productService = new ProductService();
            product = productService.getProductById(productId).orElse(null);
        } catch (NumberFormatException e) {
            System.out.println("<p style='color:red;'>Lỗi: productId không hợp lệ!</p>");
        }
    }

    if (product == null) {
        System.out.println("<p style='color:red;'>Sản phẩm không tồn tại hoặc ID không hợp lệ.</p>");
    }
%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông Tin Khách Hàng</title>
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

        .title {
            font-size: 2.5rem;
            font-weight: bold;
            color: #ff5722;
            text-align: center;
            margin-bottom: 2rem;
        }

        .form-container {
            max-width: 600px;
            margin: 0 auto;
        }

        .form-control {
            border-radius: 0.375rem;
        }

        .section-title {
            font-size: 2rem;
            font-weight: bold;
            color: #ff5722;
            text-align: center;
            margin: 3rem 0 1rem;
        }

        .carousel-inner img {
            height: 400px;
            object-fit: cover;
        }

        .card-body h5 {
            text-decoration: none;
        }

        .btn-sm {
            font-size: 0.75rem;
            padding: 0.25rem 0.5rem;
        }

        .table {
            background-color: #fff;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

<header class="py-3">
    <div class="container d-flex justify-content-between align-items-center">
        <a href="../index.jsp" class="logo text-decoration-none text-white">NamHùng</a>
    </div>
</header>

<section class="py-5">
    <div class="container">
        <h2 class="title">Thông Tin Đặt Hàng</h2>
        <div class="form-container">
            <form method="POST" action="process-order.jsp">
                <div class="mb-3">
                    <label for="fullName" class="form-label">Họ và tên</label>
                    <input type="text" class="form-control" id="fullName" name="fullName" required pattern="[A-Za-z\s]+" title="Tên chỉ chứa chữ cái và khoảng trắng">
                </div>
                <div class="mb-3">
                    <label for="phone" class="form-label">Số điện thoại</label>
                    <input type="text" class="form-control" id="phone" name="phone" required pattern="^[0-9]{10}$" title="Số điện thoại phải gồm 10 chữ số">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" required title="Email không hợp lệ">
                </div>
                <div class="mb-3">
                    <label for="address" class="form-label">Địa chỉ</label>
                    <input type="text" class="form-control" id="address" name="address" required>
                </div>
                <div class="mb-3">
                    <label for="notes" class="form-label">Ghi chú</label>
                    <textarea class="form-control" id="notes" name="notes" rows="3"></textarea>
                </div>
                <button type="submit" class="btn btn-dark">Tiến Hành Đặt Hàng</button>
            </form>
        </div>
    </div>
</section>

<footer class="py-3 text-center">
    <p>&copy; 2025 NamHung. All rights reserved.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>