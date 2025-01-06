<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iPhone 16</title>
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
                        <li><a href="iphone.jsp" class="dropdown-item">Iphone</a></li>
                        <li><a href="../Macs/mac.jsp" class="dropdown-item">Mac</a></li>
                        <li><a href="../phukiens/phukien.jsp" class="dropdown-item">Phụ kiện</a></li>
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
                <img src="../Img/Iphone16.png" class="product-image" alt="iPhone 16">
            </div>

            <div class="col-md-6">
                <h1 class="product-title">iPhone 16</h1>
                <p class="product-price">$799</p>
                <p class="product-description">
                    <strong>Màn hình:</strong>
                    iPhone 16 có màn hình Super Retina XDR 6.1 inch với độ phân giải cao và độ sáng lên đến 800 nits, giúp bạn có trải nghiệm tuyệt vời khi sử dụng ngoài trời. Cùng với công nghệ HDR10 và Dolby Vision, bạn sẽ có màu sắc sống động và chi tiết hơn bao giờ hết.
                    <br><br>

                    <strong>Camera:</strong>
                    Camera sau của iPhone 16 có độ phân giải 12MP, hỗ trợ chế độ ban đêm và chụp ảnh trong điều kiện ánh sáng yếu. Máy cũng có khả năng quay video 4K HDR với tính năng ổn định hình ảnh quang học, giúp bạn ghi lại những khoảnh khắc quan trọng một cách sắc nét.
                    <br><br>

                    <strong>Chip xử lý:</strong>
                    Trang bị chip Apple A16 Bionic với 6 nhân và hiệu suất mạnh mẽ, giúp máy chạy mượt mà khi xử lý các tác vụ nặng và chơi game đồ họa cao. Chip này được sản xuất với công nghệ 5nm, giúp tiết kiệm năng lượng và kéo dài thời gian sử dụng pin.
                    <br><br>

                    <strong>Pin:</strong>
                    Pin của iPhone 16 cho phép sử dụng liên tục trong suốt cả ngày, với khả năng sạc nhanh 20W, giúp bạn sạc đầy nhanh chóng khi cần thiết.
                    <br><br>

                    <strong>Kết nối:</strong>
                    Hỗ trợ 5G với tốc độ kết nối nhanh chóng, Wi-Fi 6, Bluetooth 5.0 và NFC cho những kết nối tiện ích như thanh toán và chia sẻ dữ liệu.
                    <br><br>

                    <strong>Cảm biến:</strong>
                    Cảm biến vân tay Touch ID, cảm biến gia tốc, cảm biến ánh sáng và cảm biến tiệm cận giúp nâng cao trải nghiệm người dùng và đảm bảo bảo mật.
                </p>
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