<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Apple Pencil 2 (2nd Gen)</title>
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

<div class="container py-5 product-detail">
  <h1 class="text-center">Apple Pencil 2 (2nd Gen)</h1>
  <div class="row">
    <div class="col-md-6">
      <img src="../Img/Pencil-2.png" class="product-image" alt="Apple Pencil 2 (2nd Gen)">
    </div>
    <div class="col-md-6">
      <h3 class="text-danger">$129</h3>
      <p><strong>Apple Pencil 2 (2nd Gen)</strong> mang lại trải nghiệm viết, vẽ và thao tác trên màn hình iPad nhanh nhạy, chính xác và tự nhiên. Tính năng sạc không dây và kết nối dễ dàng với iPad.</p>
      <p><strong>Tính năng nổi bật:</strong></p>
      <ul>
        <li><strong>Thiết kế không dây:</strong> Sạc và kết nối dễ dàng mà không cần dây cáp.</li>
        <li><strong>Tương thích với iPad:</strong> Hoạt động với nhiều mẫu iPad, bao gồm iPad Pro 11 inch (1st và 2nd Gen), iPad Pro 12.9 inch (3rd và 4th Gen), và iPad Air (4th Gen).</li>
        <li><strong>Cảm giác viết tự nhiên:</strong> Apple Pencil 2 mang đến độ chính xác và phản hồi tuyệt vời cho các công việc sáng tạo.</li>
        <li><strong>Tính năng cảm ứng:</strong> Apple Pencil 2 có cảm ứng chạm cho phép thao tác nhanh chóng.</li>
        <li><strong>Thiết kế tinh tế và nhẹ:</strong> Cảm giác cầm nắm dễ dàng và không mỏi tay.</li>
      </ul>
      <p><strong>Thông số kỹ thuật:</strong></p>
      <ul>
        <li><strong>Loại bút:</strong> Stylus không dây</li>
        <li><strong>Tương thích:</strong> iPad Pro (11-inch, 1st & 2nd Gen), iPad Pro (12.9-inch, 3rd & 4th Gen), iPad Air (4th Gen)</li>
        <li><strong>Phương thức sạc:</strong> Sạc không dây qua cổng từ tính trên iPad</li>
        <li><strong>Ứng dụng:</strong> Vẽ, ghi chú, thiết kế, chỉnh sửa hình ảnh và video</li>
        <li><strong>Chiều dài:</strong> 166mm</li>
        <li><strong>Đường kính:</strong> 8.9mm</li>
        <li><strong>Trọng lượng:</strong> 20.7g</li>
      </ul>
      <button class="btn-custom w-100" onclick="addToCart()">Thêm vào Giỏ Hàng</button>
    </div>
  </div>
</div>

<div id="successNotification" class="notification">
  Đã thêm vào giỏ hàng!
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