package giftit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import giftit.dao.UserDao;
import giftit.model.User;

@Service
@Repository("udi")
public class UserServDaoImpl implements UserServDao{
	@Autowired
	 UserDao ud;
	
	@Transactional
	public void addUser(User u) {
		// TODO Auto-generated method stub
		ud.addUser(u);
	}
	@Transactional
	public void updateUser(User u) {
		// TODO Auto-generated method stub
		ud.updateUser(u);
	}
	@Transactional
	public List<User> listUsers() {
		// TODO Auto-generated method stub
		return ud.listUsers();
	}

	public User getUserById(int id) {
		// TODO Auto-generated method stub
		return ud.getUserById(id);
	}

	public void removeUser(int id) {
		// TODO Auto-generated method stub
	ud.removeUser(id);	
	}
	public int check(String em, String pwd) {
		// TODO Auto-generated method stub
		int f=ud.check(em, pwd);
		return f;
	}

}
