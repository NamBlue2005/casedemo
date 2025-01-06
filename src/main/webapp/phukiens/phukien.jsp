<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <title>Phụ Kiện - NamHung</title>
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
        <a href="index.jsp" class="logo text-decoration-none text-white">NamHùng</a>
        <nav>
            <ul class="nav">
                <li class="nav-item"><a href="login.jsp" class="nav-link">Đăng Nhập</a></li>
                <li class="nav-item"><a href="register.jsp" class="nav-link">Đăng Ký</a></li>
                <li class="nav-item"><a href="Carts/shoppingcart.jsp" class="nav-link">Giỏ Hàng</a></li>
                <li class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Danh Mục</a>
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

<section class="py-5">
    <div class="container">
        <h1 class="title">Danh Sách Phụ Kiện</h1>
        <div class="row justify-content-center g-4">
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <a href="airpods-max.jsp">
                        <img src="Img/Airpods-Max.jpeg" class="card-img-top" alt="AirPods Max">
                    </a>
                    <div class="card-body text-center">
                        <h5 class="card-title">
                            <a href="airpods-max.jsp" class="text-decoration-none text-danger">AirPods Max</a>
                        </h5>
                        <p class="card-text text-danger fw-bold">$699</p>
                        <button class="btn btn-dark w-100" data-product-name="AirPods Max" onclick="addToCart(event)">Thêm vào Giỏ Hàng</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <a href="cap-sac-usb-c.jsp">
                        <img src="Img/cap-usb-c.jpeg" class="card-img-top" alt="Cáp sạc Apple USB-C 1M">
                    </a>
                    <div class="card-body text-center">
                        <h5 class="card-title">
                            <a href="cap-sac-usb-c.jsp" class="text-decoration-none text-danger">Cáp sạc Apple USB-C 1M</a>
                        </h5>
                        <p class="card-text text-danger fw-bold">$99</p>
                        <button class="btn btn-dark w-100" data-product-name="Cáp sạc Apple USB-C 1M" onclick="addToCart(event)">Thêm vào Giỏ Hàng</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <a href="apple-pencil2.jsp">
                        <img src="Img/Pencil-2.png" class="card-img-top" alt="Apple Pencil 2">
                    </a>
                    <div class="card-body text-center">
                        <h5 class="card-title">
                            <a href="apple-pencil2.jsp" class="text-decoration-none text-danger">Apple Pencil 2</a>
                        </h5>
                        <p class="card-text text-danger fw-bold">$199</p>
                        <button class="btn btn-dark w-100" data-product-name="Apple Pencil 2" onclick="addToCart(event)">Thêm vào Giỏ Hàng</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card border-0 shadow">
                    <a href="magicMouse2.jsp">
                        <img src="Img/MagicMouse2.jpeg" class="card-img-top" alt="Magic Mouse 2">
                    </a>
                    <div class="card-body text-center">
                        <h5 class="card-title">
                            <a href="magicMouse2.jsp" class="text-decoration-none text-danger">Magic Mouse 2</a>
                        </h5>
                        <p class="card-text text-danger fw-bold">$129</p>
                        <button class="btn btn-dark w-100" data-product-name="Magic Mouse 2" onclick="addToCart(event)">Thêm vào Giỏ Hàng</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div id="successNotification" class="notification">
    Sản phẩm đã được thêm vào giỏ hàng!
</div>



<footer class="py-3 text-center">
    <p>&copy; 2025 NamHung. All rights reserved.</p>
</footer>


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