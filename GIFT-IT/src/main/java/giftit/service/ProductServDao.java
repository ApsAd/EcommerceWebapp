package giftit.service;

import java.util.List;

import giftit.model.Product;

public interface ProductServDao {
	public void addProduct(Product p);
	public void updateProduct(Product p);
	public List<Product> listProducts();
	public Product getProductById(int id);
	public void removeProduct(int id);
	public List<Product> listbycategory(String s);
}
