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

    public void addProductToCart(Product product, int quantity) {
        cart.addProduct(product, quantity);
    }

    public void removeProductFromCart(int productId) {
        cart.removeProduct(productId);
    }

    public void updateProductQuantity(int productId, int quantity) {
        cart.updateProductQuantity(productId, quantity);
    }

    public double getTotalPrice() {
        return cart.getTotalPrice();
    }

    public Map<Integer, CartItem> getCartItems() {
        return cart.getCartItems();
    }

    public boolean isCartEmpty() {
        return cart.isEmpty();
    }
}