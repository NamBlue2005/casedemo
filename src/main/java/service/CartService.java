package service;

import model.Cart;
import model.CartItem;
import model.Product;

import java.util.Map;

public class CartService {
    private Cart cart;

    public CartService() {
        cart = new Cart();  // Khởi tạo giỏ hàng
    }

    // Thêm sản phẩm vào giỏ hàng
    public void addProductToCart(Product product, int quantity) {
        cart.addProduct(product, quantity);
    }

    // Xóa sản phẩm khỏi giỏ hàng
    public void removeProductFromCart(int productId) {
        cart.removeProduct(productId);
    }

    // Cập nhật số lượng sản phẩm trong giỏ hàng
    public void updateProductQuantity(int productId, int quantity) {
        cart.updateProductQuantity(productId, quantity);
    }

    // Lấy tổng giá trị giỏ hàng
    public double getTotalPrice() {
        return cart.getTotalPrice();
    }

    // Lấy tất cả các sản phẩm trong giỏ hàng
    public Map<Integer, CartItem> getCartItems() {
        return cart.getCartItems();
    }

    // Kiểm tra giỏ hàng có rỗng không
    public boolean isCartEmpty() {
        return cart.isEmpty();
    }
}