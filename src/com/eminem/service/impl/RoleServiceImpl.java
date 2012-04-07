package com.eminem.service.impl;

import java.util.List;

import com.eminem.bean.Role;
import com.eminem.dao.RoleDao;
import com.eminem.service.RoleService;

public class RoleServiceImpl implements RoleService{
	private RoleDao roleDao;

	public RoleDao getRoleDao() {
		return roleDao;
	}

	public void setRoleDao(RoleDao roleDao) {
		this.roleDao = roleDao;
	}

	public List<Role> queryAllRole() {
		
		return this.roleDao.getAllRole();
	} 
    
	
}
