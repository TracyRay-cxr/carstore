package com.carstore.service.Impl;

import com.carstore.dao.UserDAO;
import com.carstore.dao.Impl.UserDAOImp;
import com.carstore.entity.User;
import com.carstore.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    UserDAO userDAO=new UserDAOImp();


    @Override
    public int update(User user, String userId) throws Exception {
        try
        {
            return userDAO.update(user,userId);
        }catch (Exception ex)
        {
            throw ex;
        }
    }

    @Override
    public User findById(String userId) throws Exception {
        try
        {
            return userDAO.findById(userId);
        }catch (Exception ex)
        {
            throw ex;
        }
    }

    /**
     * 注册
     * @param user
     * @return
     * @throws Exception
     */
    @Override
    public int save(User user) throws Exception {
        try
        {
            return userDAO.register(user);
        }catch (Exception ex)
        {
            throw ex;
        }
    }

    @Override
    public int manageSave(User user) throws Exception {
        try
        {
            return userDAO.manageSave(user);
        }catch (Exception ex)
        {
            throw ex;
        }
    }

    @Override
    public User login(String name, String password) throws Exception {
        try
        {
            return userDAO.login(name,password);
        }catch (Exception ex)
        {
            throw ex;
        }
    }

    @Override
    public int delete(String userId) throws Exception {
        try
        {
            return userDAO.delete(userId);

        }catch (Exception ex)
        {
            throw ex;
        }
    }

    @Override
    public List<User> getUsers() throws Exception {
        try
        {
            return userDAO.getUsers();
        }catch (Exception ex)
        {
            throw ex;
        }
    }

    @Override
    public long getUserRowCount() throws Exception {
        try
        {

        }catch (Exception ex)
        {
            throw ex;
        }
        return 0;
    }

    @Override
    public User findByLoginname(String loginname) throws Exception {
        try
        {
            return  userDAO.findByLoginname(loginname);
        }catch (Exception ex)
        {
            throw ex;
        }

    }
}
