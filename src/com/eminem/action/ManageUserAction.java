package com.eminem.action;

import java.util.ArrayList;
import java.util.List;

import com.eminem.bean.Role;
import com.eminem.bean.User;
import com.eminem.bean.UserQueryModel;
import com.eminem.service.RoleService;
import com.eminem.service.UserService;
import com.opensymphony.xwork2.ActionSupport;


/**
 * This action is used to validate and deal with login processing
 * @author shuaijun
 */
@SuppressWarnings("serial")
public class ManageUserAction extends ActionSupport {

    private UserService userService;
    private RoleService roleService;
    private User user;
    private UserQueryModel userQueryModel;
    private List<User> userList = new ArrayList<User>();
    
    private Role role;
    private List<Role> roleList = new ArrayList<Role>();
    
    private String oldPassword;
    private String password;
    private String rePassword;
    private String passwordJudge;
    
    //分页部分
    private Integer pageNow = 1; //初始化为1,默认从第一页开始显示
    private Integer pageSize = 3; //每页显示3条记录
    private Integer totalCount;  //总条数
    private Integer pageCount;//总页数


	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public RoleService getRoleService() {
		return roleService;
	}

	public void setRoleService(RoleService roleService) {
		this.roleService = roleService;
	}

	public User getUser() {

        return user;
    }

    public void setUser(User user) {

        this.user = user;
    }

    public UserQueryModel getUserQueryModel() {
		return userQueryModel;
	}

	public void setUserQueryModel(UserQueryModel userQueryModel) {
		this.userQueryModel = userQueryModel;
	}

	public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRePassword() {
        return rePassword;
    }

    public void setRePassword(String rePassword) {
        this.rePassword = rePassword;
    }

    public String getPasswordJudge() {
        return passwordJudge;
    }

    public void setPasswordJudge(String passwordJudge) {
        this.passwordJudge = passwordJudge;
    }

    public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public List<User> getUserList() {
		return userList;
	}

	public void setUserList(List<User> userList) {
		this.userList = userList;
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

	public Integer getPageNow() {
		return pageNow;
	}

	public void setPageNow(Integer pageNow) {
		this.pageNow = pageNow;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}

	public Integer getPageCount() {
		return pageCount;
	}

	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}

	public String userAdd(){
		//roleList = this.roleService.queryAllRole();
    	if(userService.addUser(user)){
    		return "success";
    	}else{
    		return "input";
    	}
    }
    
	public String userQueryByName(){
		StringBuffer hql =new StringBuffer("from User u where");
		if(userQueryModel.getName()!=""||userQueryModel.getName()!=null){
			hql.append(" u.name like '%"+userQueryModel.getName()+"%'");
		}
		if(userQueryModel.getFrom()!=null){
			hql.append(" and u.regDate < "+userQueryModel.getFrom());
		}
		if(userQueryModel.getTo()!=null){
			hql.append(" and u.regDate > "+userQueryModel.getTo());
		}
		
    	totalCount = userService.queryAllUser().size();
    	pageCount = totalCount % pageSize == 0 ? totalCount/pageSize : totalCount/pageSize+1;
		userList = this.userService.queryByPara(hql.toString(), pageSize, pageNow);
		
		System.out.println(userList);
		return SUCCESS;
	}
    
    public String getAllUsersByPage(){
    	roleList = this.roleService.queryAllRole();
    	final String hql = "from User user ";
    	totalCount = userService.queryAllUser().size();
    	pageCount = totalCount % pageSize == 0 ? totalCount/pageSize : totalCount/pageSize+1;
    	userList = userService.queryAllUsersByPage(hql, pageSize, pageNow);
    	
//		for(User u :userList){
//			for(Role r : roleList){
//    			if(new Integer(u.getRole())==(r.getId())){
//    				u.setRole(r.getName());
//    			
//    			}
//    		}
//    	}
    	System.out.println(userList);
    	return "getAllUsersByPage";
    }    
   
    public String showSingleUser(){
    	roleList = this.roleService.queryAllRole();
    	user = userService.queryById(user.getId().toString());
    	return "showSingle";
    }  
    
    public User getUserByName(String name){
    	return userService.queryByName(user.getName());
    }
    
    public String userUpdate(){
    	userService.updateUser(user);
    	return "success";
    }  
    
    public String userDelete(){
    	user = userService.queryById(user.getId().toString());
    	userService.deleteUser(user);
    	return "success";
    }  
    
    public String getAllUsersAtFirst(){
    	userList = userService.queryAllUser();
    	return "queryAllAtFirst";
    }  
    
    public String userPrePasswordUpdate(){
    	user = userService.queryById(user.getId().toString());
    	return "toUpdatePassword";
    }  
    
    public String userPasswordUpdate(){
    	user = userService.queryById(user.getId().toString());
    	String oldP = user.getPassword();
    	if(!oldPassword.equals(oldP)){
    		return "uncorrect old password";
    	}
    	if(!password.equals(rePassword)){
    		return "uncorrect new password";
    	}
    	user.setPassword(password);
    	userService.updateUser(user);
    	
    	return "UpdatePassword";
    }  
    
    
}
