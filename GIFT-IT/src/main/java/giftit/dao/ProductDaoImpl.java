package giftit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import giftit.model.Product;
import giftit.model.User;

@Repository("pd")
public class ProductDaoImpl implements ProductDao{
	@Autowired
	SessionFactory sessionFactory;
		@SuppressWarnings("unchecked")
		private List<Product> listProducts;
	public void addProduct(Product p) {
		// TODO Auto-generated method stub
			Session sess=sessionFactory.openSession();
			Transaction tx=sess.beginTransaction();
			sess.save(p);
			tx.commit();
			sess.close();
			System.out.println("Insertion succesfull");
	}

	public void updateProduct(Product p) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		//sess.save(p);
		sess.saveOrUpdate(p);
		tx.commit();
		sess.close();
	}

	public List<Product> listProducts() {
		// TODO Auto-generated method stub
Session sess=sessionFactory.openSession();
		
		listProducts=sess.createQuery("from Product").list();
		return listProducts;
	}

	public Product getProductById(int id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		listProducts= sess.createQuery("from Product p where p.id=:id").setParameter("id", id).list();
	tx.commit();
	sess.close();
			return listProducts.size()>0?listProducts.get(0):null;
	}

	public void removeProduct(int id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction trx=sess.beginTransaction();
		
		Product p=(Product)sess.load(Product.class,id );
			sess.delete(p);
		trx.commit();
		sess.close();
	}

	public List<Product> listbycategory(String s ) {
		// TODO Auto-generated method stub
		
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		listProducts= sess.createQuery("from Product p where category like :category").setParameter("category", "%"+s+"%").list();
	tx.commit();
	sess.close();
			return listProducts;
	}

	public List<Product> listbycategoryid(int s) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		listProducts= sess.createQuery("from Product p where cid=:category").setParameter("category",s).list();
	tx.commit();
	sess.close();
			return listProducts;
	}
	}


