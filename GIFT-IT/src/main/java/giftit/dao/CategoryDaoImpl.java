package giftit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import giftit.model.Category;
import giftit.model.Product;

@Repository("cd")
public class CategoryDaoImpl implements CategoryDao {

	@Autowired
	SessionFactory sessionFactory;
		@SuppressWarnings("unchecked")
		private List<Category> listCategories;
	public void addCategory(Category c) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.save(c);
		tx.commit();
		sess.close();
		System.out.println("Insertion succesfull");
		
	}

	public void updateCategory(Category c) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		sess.saveOrUpdate(c);
		tx.commit();
		sess.close();
	}

	public List<Category> listCategories() {
		// TODO Auto-generated method stub
Session sess=sessionFactory.openSession();
		
		listCategories=sess.createQuery("from Category").list();
		return listCategories;
	}

	public Category getCategoryById(int id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction tx=sess.beginTransaction();
		listCategories= sess.createQuery("from Category c where c.id=:id").setParameter("id", id).list();
	tx.commit();
	sess.close();
			return listCategories.size()>0?listCategories.get(0):null;
	}

	public void removeCategory(int id) {
		// TODO Auto-generated method stub
		Session sess=sessionFactory.openSession();
		Transaction trx=sess.beginTransaction();
		
		Category c=(Category)sess.load(Category.class,id );
			sess.delete(c);
		trx.commit();
		sess.close();
	}

}
