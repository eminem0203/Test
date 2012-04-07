package com.eminem.dao.impl;

import java.util.List;

import org.directwebremoting.annotations.RemoteMethod;
import org.directwebremoting.annotations.RemoteProxy;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.eminem.bean.Role;
import com.eminem.dao.RoleDao;

/**
 * The implements for User DAO interface
 * 
 * @author shuaijun
 */
public class RoleDaoImpl extends HibernateDaoSupport implements RoleDao {
	public List<Role> getAllRole() {
		  String sqlString = "from Role role ";
	        List<Role> roleList = this.getHibernateTemplate().find(sqlString);
	        return roleList;
	}
}
