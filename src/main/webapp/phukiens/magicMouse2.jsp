<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Magic Mouse 2</title>
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
        .product-image {
            width: 100%;
            height: auto;
            border: 1px solid #ddd;
            padding: 10px;
        }
        .product-detail {
            padding: 40px;
        }
        .product-title {
            font-size: 2.5rem;
            font-weight: bold;
            color: #ff5722;
        }
        .product-price {
            font-size: 1.8rem;
            font-weight: bold;
            color: red;
            margin-top: 20px;
        }
        .product-description {
            font-size: 1rem;
            color: #555;
            margin-top: 20px;
        }
        .btn-custom {
            background-color: #ff5722;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 1.1rem;
            margin-top: 30px;
        }
        .btn-custom:hover {
            background-color: #d84315;
            color: white;
        }
        footer {
            background-color: #ff5722;
            color: white;
            padding: 15px;
        }
        footer p {
            margin: 0;
        }
        .notification {
            display: none;
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #4CAF50;
            color: white;
            padding: 15px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            font-size: 1.1rem;
            z-index: 1000;
        }
    </style>
</head>
<body>

<header class="py-3">
    <div class="container d-flex justify-content-between align-items-center">
        <a href="../index.jsp" class="logo text-decoration-none text-white">NamHùng</a>
        <nav>
            <ul class="nav">
                <li class="nav-item"><a href="../Carts/shoppingcart.jsp" class="nav-link text-white">Giỏ Hàng</a></li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown">Danh Mục</a>
                    <ul class="dropdown-menu">
                        <li><a href="../iphones/iphone.jsp" class="dropdown-item">Iphone</a></li>
                        <li><a href="../Macs/mac.jsp" class="dropdown-item">Mac</a></li>
                        <li><a href="phukien.jsp" class="dropdown-item">Phụ kiện</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
</header>
<section class="product-detail">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="../Img/MagicMouse2.jpeg" class="product-image" alt="Magic Mouse 2">
            </div>
            <div class="col-md-6">
                <h1 class="product-title">Magic Mouse 2</h1>
                <p class="product-price">$79</p>
                <p class="product-description">
                    Magic Mouse 2 có thiết kế hiện đại, pin lâu dài và cảm ứng đa điểm, mang lại trải nghiệm duyệt web và làm việc mượt mà trên macOS. Với thiết kế tối giản, Magic Mouse 2 dễ dàng kết nối với mọi thiết bị Apple qua Bluetooth. Các thao tác cảm ứng giúp bạn cuộn trang, vuốt qua các không gian làm việc và điều khiển dễ dàng.
                </p>
                <ul class="product-details-list">
                    <li><strong>Chip xử lý:</strong> Sử dụng công nghệ Bluetooth tiên tiến, cho kết nối mượt mà và ổn định.</li>
                    <li><strong>Thiết kế:</strong> Thân máy mỏng, nhẹ, dễ dàng mang theo và sử dụng trong nhiều giờ liền.</li>
                    <li><strong>Pin:</strong> Sạc nhanh qua cổng Lightning, sử dụng lâu dài chỉ với một lần sạc.</li>
                    <li><strong>Cảm ứng đa điểm:</strong> Hỗ trợ các thao tác như cuộn, vuốt, và chuyển đổi giữa các ứng dụng dễ dàng.</li>
                    <li><strong>Khả năng tương thích:</strong> Tương thích hoàn hảo với tất cả các máy tính Mac chạy macOS.</li>
                    <li><strong>Đặc biệt:</strong> Không cần pin rời, sạc qua cáp Lightning rất thuận tiện.</li>
                </ul>
                <button class="btn-custom w-100" onclick="addToCart()">Thêm vào Giỏ Hàng</button>
            </div>
        </div>
    </div>
</section>

<div class="notification" id="successNotification">
    Đã thêm vào giỏ hàng thành công!
</div>

<footer class="text-center">
    <p>&copy; 2025 NamHung. All rights reserved.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<script>
    function addToCart() {
        var notification = document.getElementById('successNotification');
        notification.style.display = 'block';

        setTimeout(function() {
            notification.style.display = 'none';
        }, 3000);
    }
</script>

</body>
</html>