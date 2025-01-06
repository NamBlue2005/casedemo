package service;

import model.Product;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class ProductService {

    private List<Product> products = new ArrayList<>();

    public ProductService() {
        products.add(new Product(1, "Sản phẩm 1", 100.0, "Mô tả sản phẩm 1"));
        products.add(new Product(2, "Sản phẩm 2", 200.0, "Mô tả sản phẩm 2"));
    }

    public void addProduct(Product product) {
        product.setId(generateNewId());
        products.add(product);
        System.out.println("Sản phẩm đã được thêm: " + product.getName());
    }

    public List<Product> getAllProducts() {
        return new ArrayList<>(products);
    }

    public Optional<Product> getProductById(int productId) {
        return products.stream().filter(product -> product.getId() == productId).findFirst();
    }

    public boolean deleteProduct(int productId) {
        boolean removed = products.removeIf(product -> product.getId() == productId);
        if (removed) {
            System.out.println("Sản phẩm với ID " + productId + " đã được xóa.");
        } else {
            System.out.println("Không tìm thấy sản phẩm với ID: " + productId);
        }
        return removed;
    }

    public boolean updateProduct(Product product) {
        Optional<Product> optionalProduct = getProductById(product.getId());
        if (optionalProduct.isPresent()) {
            Product existingProduct = optionalProduct.get();
            existingProduct.setName(product.getName());
            existingProduct.setPrice(product.getPrice());
            existingProduct.setDescription(product.getDescription());
            System.out.println("Sản phẩm với ID " + product.getId() + " đã được cập nhật.");
            return true;
        } else {
            System.out.println("Không tìm thấy sản phẩm với ID: " + product.getId());
            return false;
        }
    }

    private int generateNewId() {
        return products.isEmpty() ? 1 : products.stream().mapToInt(Product::getId).max().orElse(0) + 1;
    }
}