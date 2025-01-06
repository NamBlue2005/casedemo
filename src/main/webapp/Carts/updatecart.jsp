<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="service.CartService" %>
<%@ page import="model.Product" %>
<%@ page import="model.CartItem" %>

<%
  CartService cartService = new CartService();

  for (CartItem item : cartService.getCartItems().values()) {
    int productId = item.getProduct().getId();
    String quantityParam = request.getParameter("quantity_" + productId);

    if (quantityParam != null) {
      try {
        int newQuantity = Integer.parseInt(quantityParam);
        if (newQuantity > 0) {
          cartService.updateProductQuantity(productId, newQuantity);
        }
      } catch (NumberFormatException e) {
      }
    }
  }

  response.sendRedirect("shoppingcart.jsp");
%>

<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cập Nhật Giỏ Hàng - NamHùng</title>
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
      margin-bottom: 2rem;
    }

    .section-title {
      font-size: 2rem;
      font-weight: bold;
      color: #ff5722;
      text-align: center;
      margin: 3rem 0 1rem;
    }

    .carousel-inner img {
      height: 400px;
      object-fit: cover;
    }

    .card-body h5 {
      text-decoration: none;
    }

    .btn-sm {
      font-size: 0.75rem;
      padding: 0.25rem 0.5rem;
    }

    .table {
      background-color: #fff;
      box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
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
        <li class="nav-item"><a href="shoppingcart.jsp" class="nav-link">Giỏ Hàng</a></li>
        <li class="nav-item dropdown">
          <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Danh Mục</a>
          <ul class="dropdown-menu">
            <li><a href="../iphones/iphone.jsp" class="dropdown-item">Iphone</a></li>
            <li><a href="../Macs/mac.jsp" class="dropdown-item">Mac</a></li>
            <li><a href="../phukiens/phukien.jsp" class="dropdown-item">Phụ kiện</a></li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>
</header>

<section class="py-5">
  <div class="container">
    <h2 class="title">Giỏ Hàng</h2>

    <% if (!cartService.isCartEmpty()) { %>
    <form method="GET" action="updateCart.jsp">
      <table class="table table-bordered">
        <thead>
        <tr>
          <th>Tên sản phẩm</th>
          <th>Số lượng</th>
          <th>Giá</th>
          <th>Tổng</th>
          <th>Thao tác</th>
        </tr>
        </thead>
        <tbody>
        <%
          for (CartItem item : cartService.getCartItems().values()) {
            Product product = item.getProduct();
        %>
        <tr>
          <td><%= product.getName() %></td>
          <td>
            <input type="number" name="quantity_<%= product.getId() %>" value="<%= item.getQuantity() %>" min="1" class="form-control" style="width: 80px;">
          </td>
          <td><%= product.getPrice() %></td>
          <td><%= product.getPrice() * item.getQuantity() %></td>
          <td>
            <a href="shoppingcart.jsp?remove=<%= product.getId() %>" class="btn btn-danger btn-sm">Xóa</a>
          </td>
        </tr>
        <% } %>
        </tbody>
      </table>
      <button type="submit" class="btn btn-dark">Cập Nhật Giỏ Hàng</button>
    </form>

    <h3>Tổng tiền: $<%= cartService.getTotalPrice() %></h3>

    <div class="text-center">
      <a href="customerinfo.jsp" class="btn btn-dark">Mua Hàng</a>
    </div>

    <% } else { %>
    <p class="text-center">Giỏ hàng của bạn hiện đang rỗng.</p>
    <% } %>

  </div>
</section>

<footer class="py-3 text-center">
  <p>&copy; 2025 NamHung. All rights reserved.</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>