package model;

import java.util.HashMap;
import java.util.Map;

public class Cart {
    private Map<Integer, CartItem> cartItems = new HashMap<>();

    public void addProduct(Product product, int quantity) {
        CartItem cartItem = cartItems.get(product.getId());
        if (cartItem == null) {
            cartItem = new CartItem(product, quantity);
            cartItems.put(product.getId(), cartItem);
        } else {
            cartItem.setQuantity(cartItem.getQuantity() + quantity);
        }
    }

    public void removeProduct(int productId) {
        cartItems.remove(productId);
    }

    public void updateProductQuantity(int productId, int quantity) {
        CartItem cartItem = cartItems.get(productId);
        if (cartItem != null && quantity > 0) {
            cartItem.setQuantity(quantity);
        }
    }

    public double getTotalPrice() {
        double totalPrice = 0;
        for (CartItem cartItem : cartItems.values()) {
            totalPrice += cartItem.getQuantity() * cartItem.getProduct().getPrice();
        }
        return totalPrice;
    }

    public Map<Integer, CartItem> getCartItems() {
        return cartItems;
    }

    public boolean isEmpty() {
        return cartItems.isEmpty();
    }
}