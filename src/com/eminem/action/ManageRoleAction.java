package com.eminem.action;

import java.util.ArrayList;
import java.util.List;

import com.eminem.bean.Role;
import com.eminem.service.RoleService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * This action is used to get all role infomation and to update on userAdd page select 
 * 
 * @author shuaijun
 */
@SuppressWarnings("serial")
public class ManageRoleAction extends ActionSupport {

	private RoleService roleService;

	private Role role;
	private List<Role> roleList = new ArrayList<Role>();
	private String id;
	private String value;

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	public List<Role> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getRoleInfo() {
		roleList = roleService.queryAllRole();
		if (roleList.size() == 0) {
			value = "";
			id = "";
		} else if (roleList.size() == 1) {
			id = roleList.get(0).getId() + "";
			value = roleList.get(0).getName();
		} else {
			value = roleList.get(0).getName();
			id = roleList.get(0).getId() + "";
			for (int i = 1; i < roleList.size(); i++) {
				id = id + "_" + roleList.get(i).getId();
				value = value + "_" + roleList.get(i).getName(); // 主要看这两句,
																	// 我把返回的数据,使用"_"隔开了
			}
		}
		return SUCCESS;
	}
}
