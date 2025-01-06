<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mac Mini M4</title>
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
        <a href="../index.jsp" class="logo text-decoration-none text-white">NamHùng</a>
        <nav>
            <ul class="nav">
                <li class="nav-item"><a href="../Carts/shoppingcart.jsp" class="nav-link text-white">Giỏ Hàng</a></li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle text-white" data-bs-toggle="dropdown">Danh Mục</a>
                    <ul class="dropdown-menu">
                        <li><a href="../iphones/iphone.jsp" class="dropdown-item">Iphone</a></li>
                        <li><a href="mac.jsp" class="dropdown-item">Mac</a></li>
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
                <img src="../Img/Mac-mini-M4.jpeg" class="product-image" alt="Mac Mini M4">
            </div>

            <div class="col-md-6">
                <h1 class="product-title">Mac Mini M4</h1>
                <p class="product-price">$999</p>
                <p class="product-description">
                    Mac Mini M4 mạnh mẽ với chip Apple M4 mang đến hiệu suất tuyệt vời, tiết kiệm không gian và phù hợp với nhu cầu công việc sáng tạo. Đây là sự lựa chọn lý tưởng cho các nhà phát triển, nhà thiết kế, và những ai cần một máy tính bàn nhỏ gọn nhưng mạnh mẽ.
                </p>

                <div class="product-specs">
                    <h4>Thông số kỹ thuật:</h4>
                    <ul>
                        <li><strong>Chipset:</strong> Apple M4 với 8 nhân, bao gồm các nhân hiệu suất cao và các nhân tiết kiệm năng lượng cho hiệu suất vượt trội</li>
                        <li><strong>Màn hình:</strong> Không đi kèm màn hình (phải mua riêng)</li>
                        <li><strong>RAM:</strong> 8GB hoặc 16GB LPDDR4X (tùy chọn)</li>
                        <li><strong>Bộ nhớ:</strong> 256GB, 512GB, 1TB SSD (tùy chọn)</li>
                        <li><strong>Card đồ họa:</strong> GPU tích hợp Apple M4 với hiệu suất đồ họa mạnh mẽ</li>
                        <li><strong>Cổng kết nối:</strong> 2 cổng Thunderbolt 4 (USB-C), 2 cổng USB-A, 1 cổng HDMI 2.0, 1 đầu đọc thẻ SDXC, Jack tai nghe 3.5mm</li>
                        <li><strong>Hệ điều hành:</strong> macOS Monterey, hỗ trợ các tính năng mới nhất và tối ưu cho chip M4</li>
                        <li><strong>Khả năng kết nối:</strong> Wi-Fi 6 (802.11ax), Bluetooth 5.0</li>
                        <li><strong>Bảo mật:</strong> Chip bảo mật Apple T2, hỗ trợ mở khóa và bảo vệ dữ liệu an toàn</li>
                        <li><strong>Màu sắc:</strong> Bạc, Xám không gian</li>
                        <li><strong>Kích thước:</strong> 19.7 x 19.7 x 3.6 cm, trọng lượng 1.2 kg</li>
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