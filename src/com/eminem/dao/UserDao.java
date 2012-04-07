package com.eminem.dao;

import java.util.List;

import com.eminem.bean.Role;
import com.eminem.bean.User;
import com.eminem.bean.UserQueryModel;

/**
 * Define the interface of User DAO
 * 
 * @author IanLi
 */
public interface UserDao {


    /**
     * Get the information of the user
     * 
     * @param user
     *            the user with information of name and password
     * @return the detail information of the user ligin
     */
    public User selectUser(User user);
    
    /**
     * Update the given user
     * 
     * @param user
     *            the user will be update the database
     * @throws UserDaoException
     *             the exception with message of the name of the method which
     *             throws the exception, and the stack of the exception
     * @return true if success
     */
    public boolean updateUser(User user) throws Exception;
    
    public boolean deleteUser(User user);
    
    public User getUserById(String id);
    
    public User getUserByName(String name);
    
    public List<User> getUserByParam(final String hql, final Integer pageSize, final Integer pageNow);
    
    public boolean addUser(User user);
    
    public List<User> getAllUsers();

    public List<User> getAllUsersByPage(final String hql, final Integer pageSize, final Integer pageNow);
    
    public List<Role> getAllRole();
}
