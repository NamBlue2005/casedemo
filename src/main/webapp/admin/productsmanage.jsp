<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@ page import="service.ProductService" %>
<%
  ProductService productService = new ProductService();
  List<Product> products = productService.getAllProducts();
  String successMessage = request.getParameter("success");
  String errorMessage = request.getParameter("error");
%>

<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Quản lý sản phẩm</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      font-family: 'Roboto', sans-serif;
      background-color: #f8f9fa;
      margin: 0;
      padding: 0;
    }

    h1 {
      color: #343a40;
      font-size: 2.5rem;
      font-weight: 700;
      margin-bottom: 20px;
    }

    .container {
      padding: 40px;
    }

    /* Table styles */
    table {
      background-color: #ffffff;
      border-radius: 8px;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
      overflow: hidden;
    }

    th, td {
      padding: 15px;
      text-align: center;
    }

    th {
      background-color: #343a40;
      color: white;
      font-weight: bold;
    }

    td {
      background-color: #ffffff;
    }

    /* Button styles */
    .btn {
      font-size: 14px;
      font-weight: bold;
      padding: 8px 16px;
      border-radius: 5px;
      transition: all 0.3s ease;
    }

    .btn-success {
      background-color: #28a745;
      color: white;
    }

    .btn-success:hover {
      background-color: #218838;
    }

    .btn-warning {
      background-color: #ffc107;
      color: #212529;
    }

    .btn-warning:hover {
      background-color: #e0a800;
    }

    .btn-danger {
      background-color: #dc3545;
      color: white;
    }

    .btn-danger:hover {
      background-color: #c82333;
    }

    /* Alert box styles */
    .alert {
      font-size: 16px;
      font-weight: 600;
      border-radius: 5px;
      margin-bottom: 20px;
    }

    .alert-success {
      background-color: #d4edda;
      border-color: #c3e6cb;
      color: #155724;
    }

    .alert-danger {
      background-color: #f8d7da;
      border-color: #f5c6cb;
      color: #721c24;
    }

    /* Hover effect on table rows */
    tbody tr:hover {
      background-color: #f1f1f1;
      cursor: pointer;
    }

    /* Input field styles */
    .form-control {
      padding: 10px 12px;
      font-size: 14px;
      border: 1px solid #ddd;
      border-radius: 5px;
    }

    .form-control:focus {
      border-color: #28a745;
      box-shadow: 0 0 5px rgba(40, 167, 69, 0.5);
    }

    /* Add product button alignment */
    .mb-3.text-end {
      margin-bottom: 20px;
      text-align: right;
    }

    /* Adjust margins for mobile screens */
    @media (max-width: 768px) {
      h1 {
        font-size: 2rem;
      }

      .table {
        font-size: 12px;
      }

      .btn {
        font-size: 12px;
      }
    }
  </style>
</head>
<body>
<div class="container py-5">
  <h1 class="text-center mb-4">Quản lý sản phẩm</h1>

  <% if ("add".equals(successMessage)) { %>
  <div class="alert alert-success" role="alert">
    Thêm sản phẩm thành công!
  </div>
  <% } else if ("update".equals(successMessage)) { %>
  <div class="alert alert-success" role="alert">
    Cập nhật sản phẩm thành công!
  </div>
  <% } else if ("delete".equals(successMessage)) { %>
  <div class="alert alert-success" role="alert">
    Xóa sản phẩm thành công!
  </div>
  <% } %>

  <% if ("missingId".equals(errorMessage)) { %>
  <div class="alert alert-danger" role="alert">
    Lỗi: Thiếu ID sản phẩm!
  </div>
  <% } else if ("notFound".equals(errorMessage)) { %>
  <div class="alert alert-danger" role="alert">
    Lỗi: Sản phẩm không tìm thấy!
  </div>
  <% } else if ("invalidId".equals(errorMessage)) { %>
  <div class="alert alert-danger" role="alert">
    Lỗi: ID không hợp lệ!
  </div>
  <% } else if ("true".equals(errorMessage)) { %>
  <div class="alert alert-danger" role="alert">
    Lỗi: Có lỗi xảy ra, vui lòng thử lại!
  </div>
  <% } %>

  <div class="mb-3 text-end">
    <a href="addProductForm.jsp" class="btn btn-success">Thêm sản phẩm</a>
  </div>

  <form action="EditProductServlet" method="post">
    <table class="table table-bordered">
      <thead class="table-dark">
      <tr>
        <th>ID</th>
        <th>Tên sản phẩm</th>
        <th>Giá</th>
        <th>Mô tả</th>
        <th>Hành động</th>
      </tr>
      </thead>
      <tbody>
      <%
        for (Product product : products) {
      %>
      <tr>
        <td><%= product.getId() %></td>
        <td><input type="text" name="productName_<%= product.getId() %>" value="<%= product.getName() %>" class="form-control"></td>
        <td><input type="number" name="productPrice_<%= product.getId() %>" value="<%= product.getPrice() %>" class="form-control"></td>
        <td><input type="text" name="productDescription_<%= product.getId() %>" value="<%= product.getDescription() %>" class="form-control"></td>
        <td>
          <!-- Nút lưu thay đổi -->
          <button type="submit" name="productId" value="<%= product.getId() %>" class="btn btn-warning btn-sm">Lưu thay đổi</button>
          <!-- Nút xóa -->
          <a href="DeleteProductServlet?id=<%= product.getId() %>" class="btn btn-danger btn-sm"
             onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này?');">Xóa</a>
        </td>
      </tr>
      <% } %>
      </tbody>
    </table>
  </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>