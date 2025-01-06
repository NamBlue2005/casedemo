<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iPhone 13</title>
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
        .product-specifications, .product-features, .product-reviews {
            margin-top: 20px;
        }
        .product-specifications ul, .product-features ul, .product-reviews ul {
            list-style-type: none;
            padding: 0;
        }
        .product-specifications li, .product-features li, .product-reviews li {
            font-size: 1rem;
            color: #555;
            margin-bottom: 10px;
        }
        .product-specifications strong, .product-features strong, .product-reviews strong {
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
                <img src="../Img/Iphone13.png" class="product-image" alt="iPhone 13">
            </div>

            <div class="col-md-6">
                <h1 class="product-title">iPhone 13</h1>
                <p class="product-price">$699</p>

                <p class="product-description">
                    iPhone 13 mang đến trải nghiệm mượt mà, camera kép 12MP với chế độ ban đêm và khả năng quay video 4K, màn hình 6.1 inch Super Retina XDR cho hình ảnh sắc nét, hỗ trợ 5G cho kết nối nhanh hơn, và thiết kế đẹp mắt với hiệu năng tuyệt vời nhờ chip A15 Bionic.
                </p>

                <div class="product-specifications">
                    <h3>Thông số kỹ thuật:</h3>
                    <ul>
                        <li><strong>Màn hình:</strong> 6.1 inch Super Retina XDR OLED</li>
                        <li><strong>Camera:</strong> Camera kép 12MP (Wide, Ultra Wide), quay video 4K HDR</li>
                        <li><strong>Chipset:</strong> Apple A15 Bionic</li>
                        <li><strong>Bộ nhớ trong:</strong> 128GB / 256GB / 512GB</li>
                        <li><strong>Pin:</strong> Lên đến 19 giờ xem video</li>
                        <li><strong>Hệ điều hành:</strong> iOS 15</li>
                        <li><strong>Kết nối:</strong> 5G, Wi-Fi 6, Bluetooth 5.0</li>
                        <li><strong>Khả năng chống nước và bụi:</strong> IP68</li>
                    </ul>
                </div>

                <div class="product-features">
                    <h3>Tính năng nổi bật:</h3>
                    <ul>
                        <li><strong>Chế độ ban đêm:</strong> Chụp ảnh đẹp trong môi trường thiếu sáng.</li>
                        <li><strong>Chế độ quay video Cinematic:</strong> Tự động điều chỉnh tiêu cự khi quay video, mang lại hiệu ứng điện ảnh.</li>
                        <li><strong>Màn hình Super Retina XDR:</strong> Cung cấp độ sáng lên đến 800 nits, độ sáng cao nhất 1200 nits.</li>
                        <li><strong>Hiệu năng mạnh mẽ:</strong> Chip A15 Bionic giúp iPhone 13 hoạt động nhanh chóng và mượt mà hơn so với các thế hệ trước.</li>
                    </ul>
                </div>

                <div class="product-reviews">
                    <h3>Đánh giá từ người dùng:</h3>
                    <ul>
                        <li>"Camera của iPhone 13 thật sự ấn tượng, đặc biệt trong điều kiện ánh sáng yếu. Màn hình Super Retina XDR cực kỳ sắc nét!"</li>
                        <li>"Thiết kế của iPhone 13 vẫn giữ được sự sang trọng, nhưng cảm giác cầm rất thoải mái và nhẹ nhàng."</li>
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