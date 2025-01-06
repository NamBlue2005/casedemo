package Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Product;
import service.CartService;
import service.ProductService;

import java.io.IOException;
import java.util.Optional;

@WebServlet("/add-to-cart")
public class AddToCartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        ProductService productService = new ProductService();
        Optional<Product> product = productService.getProductById(productId);

        if (product.isPresent()) {
            CartService cartService = new CartService();
            cartService.addProductToCart(product.get(), quantity);
        }

        response.sendRedirect("shoppingcart.jsp");
    }
}
