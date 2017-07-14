package giftit.dao;

import java.util.List;

import giftit.model.Category;

public interface CategoryDao {
	public void addCategory(Category c);
	public void updateCategory(Category c);
	public List<Category> listCategories();
	public Category getCategoryById(int id);
	public void removeCategory(int id);
}
