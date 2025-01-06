package model;

public class CartItem {
    private Product product;
    private int quantity;

    // Constructor khởi tạo sản phẩm và số lượng
    public CartItem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    // Lấy sản phẩm
    public Product getProduct() {
        return product;
    }

    // Lấy số lượng sản phẩm trong giỏ hàng
    public int getQuantity() {
        return quantity;
    }

    // Tăng số lượng sản phẩm
    public void increaseQuantity(int quantity) {
        if (quantity > 0) {
            this.quantity += quantity;
        }
    }

    // Cập nhật số lượng sản phẩm
    public void setQuantity(int quantity) {
        if (quantity > 0) {
            this.quantity = quantity;
        }
    }

    // Kiểm tra số lượng sản phẩm
    public boolean isQuantityValid() {
        return quantity > 0;
    }
}