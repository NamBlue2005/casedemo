<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iPhone 16 Pro</title>
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
                <img src="../Img/Iphone16pro.png" class="product-image" alt="iPhone 16 Pro">
            </div>

            <div class="col-md-6">
                <h1 class="product-title">iPhone 16 Pro</h1>
                <p class="product-price">$899</p>
                <p class="product-description">
                    iPhone 16 Pro là sự kết hợp hoàn hảo giữa công nghệ hiện đại và thiết kế sang trọng. Được trang bị chip A16 Bionic mạnh mẽ, màn hình Super Retina XDR 6.7 inch sắc nét, camera 48MP với khả năng quay video 4K, và hỗ trợ 5G, đây là chiếc điện thoại lý tưởng cho những ai yêu thích công nghệ và sáng tạo.
                </p>

                <div class="product-specs">
                    <h4>Thông số kỹ thuật:</h4>
                    <ul>
                        <li><strong>Màn hình:</strong> 6.7 inch Super Retina XDR, hỗ trợ HDR10 và Dolby Vision, độ phân giải 2778 x 1284 pixels</li>
                        <li><strong>Camera:</strong>
                            <ul>
                                <li>Camera chính 48MP, khẩu độ f/1.6, hỗ trợ chống rung quang học (OIS)</li>
                                <li>Camera góc siêu rộng 12MP, khẩu độ f/2.4, góc nhìn 120 độ</li>
                                <li>Camera telephoto 12MP, zoom quang học 3x, hỗ trợ chống rung quang học (OIS)</li>
                                <li>Camera trước 12MP, khẩu độ f/2.2, hỗ trợ nhận diện khuôn mặt</li>
                            </ul>
                        </li>
                        <li><strong>Chipset:</strong> Apple A16 Bionic với 6 nhân, 4 nhân hiệu suất cao và 2 nhân tiết kiệm năng lượng</li>
                        <li><strong>Dung lượng bộ nhớ:</strong> 128GB / 256GB / 512GB (không thể mở rộng bộ nhớ bằng thẻ nhớ)</li>
                        <li><strong>Pin:</strong> 3,200 mAh, hỗ trợ sạc nhanh 25W, sạc không dây MagSafe</li>
                        <li><strong>Hệ điều hành:</strong> iOS 16, với các tính năng bảo mật và cập nhật phần mềm mới nhất</li>
                        <li><strong>Hỗ trợ kết nối:</strong> 5G, Wi-Fi 6, Bluetooth 5.2, NFC, GPS</li>
                        <li><strong>Bảo mật:</strong> Nhận diện khuôn mặt Face ID, bảo mật bằng mã PIN hoặc mật khẩu</li>
                        <li><strong>Màu sắc:</strong> Đen, Trắng, Xanh Dương, Vàng</li>
                        <li><strong>Kích thước:</strong> 160.8 x 78.1 x 7.65 mm, trọng lượng 204g</li>
                        <li><strong>Khả năng chống nước và bụi:</strong> Chứng nhận IP68, chống nước ở độ sâu 6m trong tối đa 30 phút</li>
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