package giftit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import giftit.dao.CategoryDao;
import giftit.dao.ProductDao;
import giftit.model.Category;

@Service
@Repository("cdi")
public class CategoryServDaoImpl implements CategoryServDao{

	@Autowired
	CategoryDao cd;
	public void addCategory(Category c) {
		// TODO Auto-generated method stub
		cd.addCategory(c);
		
	}

	public void updateCategory(Category c) {
		// TODO Auto-generated method stub
		cd.updateCategory(c);
	}

	public List<Category> listCategories() {
		// TODO Auto-generated method stub
		return cd.listCategories();
	}

	public Category getCategoryById(int id) {
		// TODO Auto-generated method stub
		return cd.getCategoryById(id);
	}

	public void removeCategory(int id) {
		// TODO Auto-generated method stub
		cd.removeCategory(id);
	}

}
