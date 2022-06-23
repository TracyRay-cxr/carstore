package com.carstore.dao;

import com.carstore.entity.User;

import java.util.List;

public interface UserDAO {
    /**
     * 登陆
     * @param name
     * @param password
     * @return
     * @throws Exception
     */
    public User login(String name,String password) throws  Exception;

    /**
     * 注册
     * @param user
     * @return
     * @throws Exception
     */
    public int register(User user) throws  Exception;


    public User findById(String userId) throws Exception;

    /**
     * 查询所有用户
     * @return
     * @throws Exception
     */
    List<User> getUsers() throws  Exception;


    public int manageSave(User user) throws Exception;


    public int update(User user, String userId) throws Exception;

    public int delete(String userId) throws Exception;

    /**
     * 查询用户名是否存在
     * @param loginname
     * @return
     * @throws Exception
     */
    public User findByLoginname(String loginname) throws Exception;


}

