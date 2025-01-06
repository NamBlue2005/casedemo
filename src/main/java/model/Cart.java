package model;

import java.util.HashMap;
import java.util.Map;

public class Cart {
    private Map<Integer, CartItem> cartItems = new HashMap<>();

    // Thêm sản phẩm vào giỏ hàng
    public void addProduct(Product product, int quantity) {
        CartItem cartItem = cartItems.get(product.getId());
        if (cartItem == null) {
            cartItem = new CartItem(product, quantity);
            cartItems.put(product.getId(), cartItem);
        } else {
            cartItem.setQuantity(cartItem.getQuantity() + quantity);
        }
    }

    // Xóa sản phẩm khỏi giỏ hàng
    public void removeProduct(int productId) {
        cartItems.remove(productId);
    }

    // Cập nhật số lượng sản phẩm trong giỏ hàng
    public void updateProductQuantity(int productId, int quantity) {
        CartItem cartItem = cartItems.get(productId);
        if (cartItem != null && quantity > 0) {
            cartItem.setQuantity(quantity);
        }
    }

    // Lấy tổng giá trị giỏ hàng
    public double getTotalPrice() {
        double totalPrice = 0;
        for (CartItem cartItem : cartItems.values()) {
            totalPrice += cartItem.getQuantity() * cartItem.getProduct().getPrice();
        }
        return totalPrice;
    }

    // Lấy tất cả các sản phẩm trong giỏ hàng
    public Map<Integer, CartItem> getCartItems() {
        return cartItems;
    }

    // Kiểm tra giỏ hàng có rỗng không
    public boolean isEmpty() {
        return cartItems.isEmpty();
    }
}