package com.eminem.dao.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.eminem.bean.Role;
import com.eminem.bean.User;
import com.eminem.bean.UserQueryModel;
import com.eminem.dao.UserDao;

/**
 * The implements for User DAO interface
 * 
 * @author shuaijun
 */
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	public boolean addUser(User user) {
		this.getHibernateTemplate().save(user);
		return true;
	}

	public boolean deleteUser(User user) {
		this.getHibernateTemplate().delete(user);
		return true;
	}

	public User getUserById(String id) {
        String sqlString = "from User user where user.id=?";
        List<User> userList = this.getHibernateTemplate().find(sqlString,
                Integer.parseInt(id));
        if (userList.size() != 0) {
            // If the database return more than one user by the name, We only
            // get the first one. In fact this is a wrong database.
            User userR = userList.get(0);
            // Judge the name and the password between the input and which get
            // from database.
            return userR;
        }
        return null;
	}

	public User selectUser(User user) {
        String sqlString = "from User user where user.name=?";
        String name = user.getName();
        List<User> userList = this.getHibernateTemplate().find(sqlString,
                name);
        if (userList.size() != 0) {
            // If the database return more than one user by the name, We only
            // get the first one. In fact this is a wrong database.
            User userR = userList.get(0);
            // Judge the name and the password between the input and which get
            // from database.
          if (userR.getName().equals(user.getName())
                    && userR.getPassword().equals(user.getPassword())) {
                return userR;
            }
            return null;
        }
        return null;
	}

	public boolean updateUser(User user) throws Exception {
		this.getHibernateTemplate().update(user);
		return true;
	}

	@SuppressWarnings("unchecked")
	public List<User> getAllUsers() {
		List<User> userList = new ArrayList<User>();
        String sqlString = "from User user ";
        userList = this.getHibernateTemplate().find(sqlString);
		return userList;
	}

	@SuppressWarnings("unchecked")
	public User getUserByName(String name) {
        String sqlString = "from User user where user.name=?";
        List<User> userList = this.getHibernateTemplate().find(sqlString,
                name);
        if (userList.size() != 0) {
            // If the database return more than one user by the name, We only
            // get the first one. In fact this is a wrong database.
            User userR = userList.get(0);
            // Judge the name and the password between the input and which get
            // from database.
            return userR;
        }
        return null;
	}

	
	
	public List<User> getAllUsersByPage(final String hql,final Integer pageSize, final Integer pageNow) {
		List result = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session s)
							throws HibernateException, SQLException {
						Query query = s.createQuery(hql);
						query.setFirstResult(pageNow-1);
						query.setMaxResults(pageSize);
						return query.list();
					}
				});
		return result;
	}

	@SuppressWarnings("unchecked")
	public List<Role> getAllRole() {
		  String sqlString = "from Role role ";
	        List<Role> roleList = this.getHibernateTemplate().find(sqlString);
	        return roleList;
	}

	@SuppressWarnings("unchecked")
	public List<User> getUserByParam(final String hql,final Integer pageSize, final Integer pageNow) {
		List result = getHibernateTemplate().executeFind(
				new HibernateCallback() {
					public Object doInHibernate(Session s)
							throws HibernateException, SQLException {
						Query query = s.createQuery(hql);
						query.setFirstResult(pageNow-1);
						query.setMaxResults(pageSize);
						return query.list();
					}
				});
		return result;
	}
	
// 例子	
//	public List queryWithMinAndMaxByParam(final String hql, final int min,
//			final int max,final Object param) {
//		List result = getHibernateTemplate().executeFind(
//				new HibernateCallback() {
//					public Object doInHibernate(Session s)
//							throws HibernateException, SQLException {
//						Query query = s.createQuery(hql);
//						query.setFirstResult(min);
//						query.setMaxResults(max);
//						if(param != null)
//						query.setParameter(0, param);
//						return query.list();
//					}
//				});
//
//		return result;
//
//	}
 
}
