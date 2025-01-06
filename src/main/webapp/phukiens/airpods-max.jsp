<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>AirPods Max</title>
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
    /* Success notification */
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

<!-- Header -->
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

<!-- Product Detail Section -->
<section class="product-detail">
  <div class="container">
    <div class="row">
      <!-- Product Image -->
      <div class="col-md-6">
        <img src="Img/Airpods-Max.jpeg" class="product-image" alt="AirPods Max">
      </div>

      <!-- Product Info -->
      <div class="col-md-6">
        <h1 class="product-title">AirPods Max</h1>
        <p class="product-price">$549</p>
        <p class="product-description">
          <strong>AirPods Max</strong> mang đến chất lượng âm thanh Hi-Fi với khử tiếng ồn chủ động, thiết kế sang trọng và kết nối seamless với các thiết bị Apple. Đây là sự lựa chọn tuyệt vời cho những ai yêu thích âm nhạc và muốn trải nghiệm công nghệ tiên tiến nhất.
        </p>
        <p><strong>Tính năng nổi bật:</strong></p>
        <ul>
          <li><strong>Chất lượng âm thanh Hi-Fi:</strong> Driver cao cấp, âm thanh chi tiết và sống động.</li>
          <li><strong>Khử tiếng ồn chủ động (ANC):</strong> Tập trung vào âm nhạc mà không bị làm phiền.</li>
          <li><strong>Chế độ Transparency:</strong> Nghe được âm thanh từ môi trường bên ngoài khi cần thiết.</li>
          <li><strong>Kết nối seamless với thiết bị Apple:</strong> Kết nối nhanh chóng và ổn định với iPhone, iPad, MacBook và Apple Watch.</li>
          <li><strong>Thiết kế sang trọng và thoải mái:</strong> Tai nghe làm từ nhôm và vải dệt mềm, giúp sử dụng lâu mà không cảm thấy mỏi tai.</li>
          <li><strong>Thời gian sử dụng lâu dài:</strong> Lên đến 20 giờ với ANC và âm thanh Hi-Fi hoạt động.</li>
        </ul>
        <p><strong>Thông số kỹ thuật:</strong></p>
        <ul>
          <li><strong>Loại tai nghe:</strong> Over-ear</li>
          <li><strong>Chất liệu:</strong> Nhôm, vải dệt mềm</li>
          <li><strong>Khử tiếng ồn:</strong> Khử tiếng ồn chủ động (ANC)</li>
          <li><strong>Chế độ Transparency:</strong> Có</li>
          <li><strong>Driver:</strong> Driver động cao cấp</li>
          <li><strong>Kết nối:</strong> Bluetooth 5.0</li>
          <li><strong>Thời gian sử dụng:</strong> Lên đến 20 giờ</li>
          <li><strong>Pin:</strong> Sạc nhanh 5 phút cho 1,5 giờ sử dụng</li>
          <li><strong>Trọng lượng:</strong> 384.8g</li>
        </ul>
        <button class="btn-custom w-100" onclick="addToCart()">Thêm vào Giỏ Hàng</button>
      </div>
    </div>
  </div>
</section>

<!-- Success Notification -->
<div id="successNotification" class="notification">
  Đã thêm vào giỏ hàng!
</div>

<!-- Footer -->
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
    }, 3000); // Hide after 3 seconds
  }
</script>

</body>
</html>