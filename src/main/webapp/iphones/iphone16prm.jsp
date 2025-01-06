<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iPhone 16 Pro Max</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        header {
            background: linear-gradient(to right, #ff5722, #ffc107);
            color: white;
            position: sticky;
            top: 0;
            z-index: 1000;
        }
        body {
            background-color: #fff8e1;
            font-family: Arial, sans-serif;
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
            line-height: 1.6;
        }

        .btn-custom {
            background-color: #ff5722;
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 1.2rem;
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
            max-width: 300px;
        }

        @media (max-width: 768px) {
            .product-title {
                font-size: 2rem;
            }
            .product-price {
                font-size: 1.5rem;
            }
            .product-description {
                font-size: 0.9rem;
            }
            .product-image {
                max-width: 100%;
            }
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
                <img src="../Img/Iphone16prm.png" class="product-image" alt="iPhone 16 Pro Max">
            </div>

            <div class="col-md-6">
                <h1 class="product-title">iPhone 16 Pro Max</h1>
                <p class="product-price">$999</p>
                <p class="product-description">
                    <strong>Màn hình:</strong>
                    iPhone 16 Pro Max được trang bị màn hình OLED Super Retina XDR 6.9 inch, với độ phân giải lên đến 1320 x 2868 pixels. Màn hình này hỗ trợ tần số quét 120Hz, mang lại trải nghiệm mượt mà khi di chuyển và cuộn trang. Đặc biệt, độ sáng tối đa lên tới 2000 nits giúp bạn dễ dàng sử dụng thiết bị dưới ánh sáng mạnh, đồng thời giúp màu sắc hiển thị trung thực và sắc nét ngay cả trong điều kiện ánh sáng khắc nghiệt.
                    <br><br>

                    <strong>Camera:</strong>
                    Camera sau của iPhone 16 Pro Max được trang bị 3 ống kính với độ phân giải cực cao. Camera chính có độ phân giải 48 MP, cho phép chụp ảnh sắc nét và chi tiết. Camera phụ với 48 MP và 12 MP giúp bạn chụp ảnh góc rộng và chân dung đẹp mắt. Bạn cũng có thể quay video 4K siêu sắc nét ở cả hai mặt trước và sau. Hệ thống camera hỗ trợ chế độ ban đêm và chụp ảnh macro tuyệt vời, giúp bạn có thể tạo ra những bức ảnh ấn tượng trong mọi điều kiện ánh sáng.
                    <br><br>

                    <strong>Chip xử lý:</strong>
                    iPhone 16 Pro Max được trang bị chip Apple A18 Pro 6 nhân, giúp mang lại hiệu suất vượt trội. Chip xử lý này không chỉ mạnh mẽ trong việc xử lý các tác vụ hàng ngày mà còn đảm bảo hiệu suất mượt mà khi chơi game nặng và chạy các ứng dụng đòi hỏi cấu hình cao. Công nghệ 5nm trên A18 Pro mang lại hiệu năng cao hơn và tiết kiệm năng lượng, giúp kéo dài thời gian sử dụng pin.
                    <br><br>

                    <strong>Cảm biến:</strong>
                    iPhone 16 Pro Max trang bị hàng loạt cảm biến tiên tiến như cảm biến gia tốc, cảm biến tiệm cận, cảm biến ánh sáng, la bàn, con quay hồi chuyển, cảm biến áp kế và cảm biến trọng lực. Những cảm biến này không chỉ giúp nâng cao trải nghiệm người dùng mà còn hỗ trợ các tính năng như điều hướng, nhận diện cử chỉ và cải thiện độ chính xác của các ứng dụng thể thao và sức khỏe.
                    <br><br>

                    <strong>Kết nối:</strong>
                    iPhone 16 Pro Max hỗ trợ kết nối 5G tốc độ cao, mang lại trải nghiệm lướt web mượt mà và tải xuống nhanh chóng. Hệ thống Wi-Fi 7 (802.11be) với công nghệ 2x2 MIMO và Bluetooth 5.3 giúp kết nối mạng và các thiết bị khác hiệu quả hơn. Ngoài ra, máy còn hỗ trợ NFC, giúp bạn thanh toán hoặc chia sẻ dữ liệu một cách dễ dàng và nhanh chóng.
                    <br><br>

                    <strong>Sạc:</strong>
                    Với khả năng sạc không dây MagSafe lên đến 25W, iPhone 16 Pro Max cho phép sạc nhanh và thuận tiện hơn bao giờ hết. Hỗ trợ sạc không dây Qi2 lên đến 15W và sạc Qi lên đến 7.5W, giúp bạn dễ dàng sạc điện thoại mà không cần dây cáp. Máy còn hỗ trợ sạc nhanh có dây, giúp bạn tiết kiệm thời gian sạc.
                    <br><br>

                    <strong>Kháng nước:</strong>
                    iPhone 16 Pro Max đạt chứng nhận IP68, có khả năng chống nước và bụi bẩn. Bạn có thể sử dụng máy dưới nước ở độ sâu tối đa 6 mét trong vòng tối đa 30 phút mà không lo bị hư hỏng. Điều này giúp bảo vệ chiếc điện thoại của bạn trong mọi tình huống, từ việc đi mưa đến việc vô tình làm rơi vào nước.
                    <br><br>

                    <strong>Khung viền:</strong>
                    Khung viền của iPhone 16 Pro Max được chế tác từ Titanium cao cấp, mang đến sự bền bỉ và độ cứng tuyệt vời. Chất liệu này không chỉ giúp tăng cường độ bền cho máy mà còn tạo ra vẻ ngoài sang trọng và hiện đại. Viền máy mỏng và nhẹ, giúp cầm nắm thoải mái mà không bị cảm giác cồng kềnh.
                    <br><br>

                    <strong>Kích thước và Trọng lượng:</strong>
                    iPhone 16 Pro Max có kích thước 163 x 77,6 x 8,25 mm và trọng lượng 227 gram, mang lại cảm giác cầm nắm chắc chắn và thoải mái. Mặc dù có màn hình lớn, nhưng thiết kế mỏng nhẹ vẫn giúp bạn dễ dàng sử dụng bằng một tay.
                    <br><br>

                    <strong>Pin:</strong>
                    iPhone 16 Pro Max được trang bị pin lớn, cho thời gian sử dụng dài suốt cả ngày, với khả năng duy trì sử dụng liên tục trong nhiều giờ khi xem video, chơi game hoặc lướt web. Pin hỗ trợ sạc nhanh, giúp bạn có thể nạp năng lượng trở lại nhanh chóng trong khi di chuyển.
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