package com.eminem.service;

import java.util.List;

import com.eminem.bean.Role;
import com.eminem.bean.User;


public interface UserService {
    public boolean updateUser(User user);
    public boolean addUser(User user);
    public List<User> queryAllUser();
    public User queryById(String id);
    public User queryByName(String name);
    public List<User> queryByPara(final String hql, final int pageSize,final int pageNow);
    public User queryByUser(User user);
    public boolean deleteUser(User user);
    public List<User> queryAllUsersByPage(final String hql, final int pageSize,final int pageNow);
    public List<Role> queryAllRole();
    
 }
