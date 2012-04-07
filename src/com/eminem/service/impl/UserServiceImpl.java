package com.eminem.service.impl;

import java.util.List;

import com.eminem.bean.Role;
import com.eminem.bean.User;
import com.eminem.dao.RoleDao;
import com.eminem.dao.UserDao;
import com.eminem.service.UserService;

public class UserServiceImpl implements UserService{
    private UserDao userDao;
    private RoleDao roleDao;
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public boolean addUser(User user) {
		this.userDao.addUser(user);
		return true;
	}

	public RoleDao getRoleDao() {
		return roleDao;
	}

	public void setRoleDao(RoleDao roleDao) {
		this.roleDao = roleDao;
	}

	public List<User> queryAllUser() {
		List<User> list = userDao.getAllUsers();
		return list;
	}

	public User queryById(String id) {
		return userDao.getUserById(id);
	}

	public User queryByUser(User user) {
		return null;
	}

	public boolean updateUser(User user) {
		try {
			return userDao.updateUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public boolean deleteUser(User user) {
		return userDao.deleteUser(user);
	}

	public User queryByName(String name) {
		return userDao.getUserByName(name);
	}

	public List<User> queryAllUsersByPage(final String hql,final int pageSize,final int pageNow) {
		return userDao.getAllUsersByPage(hql, pageSize, pageNow);
	}

	public List<Role> queryAllRole() {
		return this.roleDao.getAllRole();
	}

	public List<User> queryByPara(final String hql, final int pageSize,final int pageNow) {
		
		return this.userDao.getUserByParam(hql, pageSize, pageNow);
	} 
}
