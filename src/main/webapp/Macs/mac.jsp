<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <title>Mac - NamHung</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

    .card {
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
      transform: scale(1.05);
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
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
      margin: 2rem 0;
    }

    .notification {
      position: fixed;
      bottom: 20px;
      right: 20px;
      background-color: #4CAF50;
      color: white;
      padding: 15px;
      border-radius: 5px;
      display: none;
      z-index: 1001;
    }
  </style>
</head>
<body>
<header class="py-3">
  <div class="container d-flex justify-content-between align-items-center">
    <a href="../index.jsp" class="logo text-decoration-none text-white">NamHùng</a>
    <nav>
      <ul class="nav">
        <li class="nav-item"><a href="../login.jsp" class="nav-link">Đăng Nhập</a></li>
        <li class="nav-item"><a href="../register.jsp" class="nav-link">Đăng Ký</a></li>
        <li class="nav-item"><a href="../Carts/shoppingcart.jsp" class="nav-link">Giỏ Hàng</a></li>
        <li class="nav-item dropdown">
          <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Danh Mục</a>
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

<section class="py-5">
  <div class="container">
    <h1 class="title">Danh Sách Mac</h1>
    <div class="row justify-content-center g-4">

      <div class="col-md-3">
        <div class="card border-0 shadow">
          <a href="macbook-Air-m1.jsp">
            <img src="../Img/Macbook-airm1.jpeg" class="card-img-top" alt="MacBook Air M1(2020)">
          </a>
          <div class="card-body text-center">
            <h5 class="card-title">
              <a href="macbook-Air-m1.jsp" class="text-decoration-none text-danger">MacBook Air M1(2020)</a>
            </h5>
            <p class="card-text text-danger fw-bold">$999</p>
            <button class="btn btn-dark w-100" data-product-name="MacBook Air M1(2020)" onclick="addToCart(event)">Thêm vào Giỏ Hàng</button>
          </div>
        </div>
      </div>

      <div class="col-md-3">
        <div class="card border-0 shadow">
          <a href="imac-m1.jsp">
            <img src="../Img/iMac-m1.webp" class="card-img-top" alt="iMac M1">
          </a>
          <div class="card-body text-center">
            <h5 class="card-title">
              <a href="imac-m1.jsp" class="text-decoration-none text-danger">iMac M1(2021) 24inch</a>
            </h5>
            <p class="card-text text-danger fw-bold">$1599</p>
            <button class="btn btn-dark w-100" data-product-name="iMac M1(2021) 24inch" onclick="addToCart(event)">Thêm vào Giỏ Hàng</button>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card border-0 shadow">
          <a href="macbook-pro-14inch-m4.jsp">
            <img src="../Img/MacBook-Pro-14inch-M4.jpeg" class="card-img-top" alt="MacBook Pro 14 inch M4">
          </a>
          <div class="card-body text-center">
            <h5 class="card-title">
              <a href="macbook-pro-14inch-m4.jsp" class="text-decoration-none text-danger">MacBook Pro 14 inch M4</a>
            </h5>
            <p class="card-text text-danger fw-bold">$1499</p>
            <button class="btn btn-dark w-100" data-product-name="MacBook Pro 14 inch M4" onclick="addToCart(event)">Thêm vào Giỏ Hàng</button>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card border-0 shadow">
          <a href="macmini-m4.jsp">
            <img src="../Img/Mac-mini-M4.jpeg" class="card-img-top" alt="Mac mini M4">
          </a>
          <div class="card-body text-center">
            <h5 class="card-title">
              <a href="macmini-m4.jsp" class="text-decoration-none text-danger">Mac mini M4</a>
            </h5>
            <p class="card-text text-danger fw-bold">$999</p>
            <button class="btn btn-dark w-100" data-product-name="Mac mini M4" onclick="addToCart(event)">Thêm vào Giỏ Hàng</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<footer class="py-3 text-center">
  <p>&copy; 2025 NamHung. All rights reserved.</p>
</footer>

<div id="successNotification" class="notification">
  Sản phẩm đã được thêm vào giỏ hàng!
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
  function addToCart(event) {
    const productName = event.target.getAttribute('data-product-name');
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    cart.push({ name: productName });
    localStorage.setItem('cart', JSON.stringify(cart));

    var notification = document.getElementById('successNotification');
    notification.textContent = productName + " đã được thêm vào giỏ hàng!";
    notification.style.display = 'block';

    setTimeout(function() {
      notification.style.display = 'none';
    }, 3000);
  }
</script>
</body>
</html>