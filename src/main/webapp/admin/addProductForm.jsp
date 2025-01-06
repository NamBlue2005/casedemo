<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Sản Phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #fff8e1;
            font-family: Arial, sans-serif;
        }

        header {
            background: linear-gradient(to right, #ff5722, #ffc107);
            color: white;
            position: sticky;
            top: 0;
            z-index: 1000;
            padding: 5px 0;
        }

        .logo {
            font-size: 2.0rem;
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

        .dropdown-menu {
            background-color: #ff5722;
            border: none;
        }

        .dropdown-item {
            color: white;
        }

        .dropdown-item:hover {
            background-color: #e64a19;
        }

        footer {
            background-color: #ff5722;
            color: white;
            padding: 15px;
            text-align: center;
        }

        footer p {
            margin: 0;
        }

        .btn-custom {
            background-color: #ff5722;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            margin-top: 20px;
            width: 100%;
        }

        .btn-custom:hover {
            background-color: #d84315;
            color: white;
        }

        .container {
            padding: 40px;
        }

        .form-label {
            color: #ff5722;
            font-weight: bold;
        }

        .form-control {
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
        }

        .form-control:focus {
            border-color: #ff5722;
            box-shadow: 0 0 8px rgba(255, 87, 34, 0.5);
        }

        .title {
            font-size: 2rem;
            font-weight: bold;
            color: #ff5722;
            text-align: center;
            margin-bottom: 2rem;
        }

        .section-title {
            font-size: 1.8rem;
            font-weight: bold;
            color: #ff5722;
            text-align: center;
            margin: 3rem 0 1rem;
        }

        .image-upload-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 1rem;
        }

        .image-upload-container input[type="file"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            margin-top: 20px;
        }

        .image-preview {
            margin-top: 20px;
            display: none;
        }

        .image-preview img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>
<body>

<!-- Header -->
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

<div class="container">
    <h1 class="title">Thêm Sản Phẩm</h1>
    <form action="addProductServlet" method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="productName" class="form-label">Tên sản phẩm</label>
            <input type="text" class="form-control" id="productName" name="productName" required>
        </div>
        <div class="mb-3">
            <label for="productPrice" class="form-label">Giá</label>
            <input type="number" class="form-control" id="productPrice" name="productPrice" required>
        </div>
        <div class="mb-3">
            <label for="productDescription" class="form-label">Mô tả</label>
            <textarea class="form-control" id="productDescription" name="productDescription" required></textarea>
        </div>

        <!-- Số lượng tồn kho -->
        <div class="mb-3">
            <label for="productStock" class="form-label">Số lượng tồn kho</label>
            <input type="number" class="form-control" id="productStock" name="productStock" required min="0">
        </div>

        <!-- Hình ảnh sản phẩm -->
        <div class="image-upload-container">
            <label for="productImage" class="form-label">Hình ảnh sản phẩm</label>
            <input type="file" class="form-control" id="productImage" name="productImage" accept="image/*" onchange="previewImage(event)">
        </div>
        <div class="image-preview" id="imagePreview">
            <img id="previewImg" src="" alt="Preview image">
        </div>

        <button type="submit" class="btn-custom">Thêm sản phẩm</button>
    </form>
</div>

<footer>
    <p>&copy; 2025 NamHung. All rights reserved.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    // Function to preview image before upload
    function previewImage(event) {
        const file = event.target.files[0];
        const reader = new FileReader();

        reader.onload = function() {
            const img = document.getElementById('previewImg');
            const previewContainer = document.getElementById('imagePreview');
            img.src = reader.result;
            previewContainer.style.display = 'block';
        };

        if (file) {
            reader.readAsDataURL(file);
        }
    }
</script>

</body>
</html>