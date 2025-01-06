<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MacBook Air M1 (2020)</title>
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
        .product-specs {
            margin-top: 30px;
            font-size: 1rem;
            color: #333;
        }
        .product-specs h4 {
            font-weight: bold;
            color: #ff5722;
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
        <a href="index.jsp" class="logo text-decoration-none text-white">NamHùng</a>
        <nav>
            <ul class="nav">
                <li class="nav-item"><a href="Carts/shoppingcart.jsp" class="nav-link text-white">Giỏ Hàng</a></li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown">Danh Mục</a>
                    <ul class="dropdown-menu">
                        <li><a href="iphone.jsp" class="dropdown-item">Iphone</a></li>
                        <li><a href="mac.jsp" class="dropdown-item">Mac</a></li>
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
                <img src="Img/Macbook-airm1.jpeg" class="product-image" alt="MacBook Air M1(2020)">
            </div>

            <div class="col-md-6">
                <h1 class="product-title">MacBook Air M1 (2020)</h1>
                <p class="product-price">$999</p>
                <p class="product-description">
                    MacBook Air M1 (2020) với chip M1 mang đến hiệu năng vượt trội, tiết kiệm năng lượng, màn hình Retina 13.3 inch sắc nét, và thời gian sử dụng pin kéo dài lên đến 18 giờ. Đây là chiếc laptop lý tưởng cho người dùng cần hiệu suất cao nhưng vẫn muốn thiết kế mỏng nhẹ.
                </p>

                <div class="product-specs">
                    <h4>Thông số kỹ thuật:</h4>
                    <ul>
                        <li><strong>Chipset:</strong> Apple M1 với 8 nhân, bao gồm 4 nhân hiệu suất cao và 4 nhân tiết kiệm năng lượng</li>
                        <li><strong>Màn hình:</strong> 13.3 inch Retina, độ phân giải 2560 x 1600 pixels, hỗ trợ True Tone</li>
                        <li><strong>RAM:</strong> 8GB hoặc 16GB LPDDR4X (tùy chọn)</li>
                        <li><strong>Bộ nhớ:</strong> 256GB, 512GB, 1TB, hoặc 2TB SSD (tùy chọn)</li>
                        <li><strong>Card đồ họa:</strong> GPU 7 nhân (trên bản cơ bản) hoặc 8 nhân (trên bản cao cấp)</li>
                        <li><strong>Pin:</strong> Thời gian sử dụng lên đến 18 giờ với pin 49.9Wh</li>
                        <li><strong>Cổng kết nối:</strong> 2 cổng Thunderbolt 3 (USB-C), Jack tai nghe 3.5mm</li>
                        <li><strong>Hệ điều hành:</strong> macOS Big Sur, hỗ trợ các tính năng tối ưu cho chip M1</li>
                        <li><strong>Webcam:</strong> Camera FaceTime HD 720p</li>
                        <li><strong>Khả năng kết nối:</strong> Wi-Fi 6 (802.11ax), Bluetooth 5.0</li>
                        <li><strong>Phím:</strong> Bàn phím Magic Keyboard với cơ chế cắt kéo, cảm biến vân tay Touch ID</li>
                        <li><strong>Màu sắc:</strong> Bạc, Vàng, Xám không gian</li>
                        <li><strong>Kích thước:</strong> 30.41 x 21.24 x 1.61 cm, trọng lượng 1.29 kg</li>
                        <li><strong>Bảo mật:</strong> Nhận diện vân tay Touch ID, bảo mật cao với chip bảo mật Apple T2</li>
                    </ul>
                </div>

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