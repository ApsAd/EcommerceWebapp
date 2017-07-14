package giftit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import giftit.dao.ProductDao;
import giftit.model.Product;

@Service
@Repository("pdi")
public class ProductServDaoImpl implements ProductServDao {

	@Autowired
	ProductDao pd;
	public void addProduct(Product p) {
		// TODO Auto-generated method stub
		pd.addProduct(p);
	}

	public void updateProduct(Product p) {
		// TODO Auto-generated method stub
		pd.updateProduct(p);
	}

	public List<Product> listProducts() {
		// TODO Auto-generated method stub
		
		return pd.listProducts();
	}

	public Product getProductById(int id) {
		// TODO Auto-generated method stub
		return pd.getProductById(id);
	}

	public void removeProduct(int id) {
		// TODO Auto-generated method stub
		pd.removeProduct(id);
	}

	public List<Product> listbycategory(String s) {
		// TODO Auto-generated method stub
		return pd.listbycategory(s);
		}

}
