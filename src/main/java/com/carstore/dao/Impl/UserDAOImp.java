package com.carstore.dao.Impl;

import com.carstore.dao.UserDAO;
import com.carstore.dao.dateBase;
import com.carstore.entity.User;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserDAOImp implements UserDAO {
    dateBase db=new dateBase();

    @Override
    public User login(String name, String password) throws Exception {
        User user=null;
        try
        {
            String sql="select * from carstore_user where cu_login_name=? and cu_password=?";
            
            ResultSet rs=db.executeQuery(sql,name,password);

            if(rs.next())
            {
                user=new User();
                user.setUserId(rs.getString("cu_user_id"));
                user.setUserName(rs.getString("cu_user_name"));
                user.setPassword(rs.getString("cu_password"));
                user.setMale(rs.getString("cu_sex"));
                user.setBirthday(rs.getDate("cu_birthday"));
                user.setIdentityCode(rs.getString("cu_identity_code"));
                user.setEmail(rs.getString("cu_email"));
                user.setMobile(rs.getString("cu_mobile"));
                user.setAddress(rs.getString("cu_address"));
                user.setStatus(rs.getInt("cu_status"));
                user.setRole(rs.getInt("cu_role"));
            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return user;
    }

    @Override
    public int register(User user) throws Exception {
        int r=-1;
        try
        {
            String sql="insert into carstore_user (cu_login_name,cu_user_name,cu_password) values(?,?,?)";

            r=db.executeUpdate(sql,user.getLoginname(),user.getUserName(),user.getPassword());

        }catch (Exception ex)
        {
            throw ex;
        }

        return r;
    }

    @Override
    public User findById(String userId) throws Exception {
        User user=null;
        try
        {
            String sql="select * from carstore_user where cu_user_id=? ";

            ResultSet rs=db.executeQuery(sql,userId);

            if(rs.next())
            {
                user=new User();
                user.setUserId(rs.getString("cu_user_id"));
                user.setLoginname(rs.getString("cu_login_name"));
                user.setUserName(rs.getString("cu_user_name"));
                user.setPassword(rs.getString("cu_password"));
                user.setMale(rs.getString("cu_sex"));
                user.setBirthday(rs.getDate("cu_birthday"));
                user.setIdentityCode(rs.getString("cu_identity_code"));
                user.setEmail(rs.getString("cu_email"));
                user.setMobile(rs.getString("cu_mobile"));
                user.setAddress(rs.getString("cu_address"));
                user.setStatus(rs.getInt("cu_status"));
                user.setRole(rs.getInt("cu_role"));
            }
        }catch (Exception ex)
        {
            throw ex;
        }


        return user;
    }

    @Override
    public List<User> getUsers() throws Exception {
        List<User> list=new ArrayList<>();
        try
        {
            String sql="select * from carstore_user";
            ResultSet rs=db.executeQuery(sql);

            while(rs.next())
            {
                User user=new User();
                user.setUserId(rs.getString("cu_user_id"));
                user.setUserName(rs.getString("cu_user_name"));
                user.setLoginname(rs.getString("cu_login_name"));
                user.setPassword(rs.getString("cu_password"));
                user.setMale(rs.getString("cu_sex"));
                user.setBirthday(rs.getDate("cu_birthday"));
                user.setIdentityCode(rs.getString("cu_identity_code"));
                user.setEmail(rs.getString("cu_email"));
                user.setMobile(rs.getString("cu_mobile"));
                user.setAddress(rs.getString("cu_address"));
                user.setStatus(rs.getInt("cu_status"));
                user.setRole(rs.getInt("cu_role"));
                list.add(user);
            }
        }catch (Exception ex)
        {
            throw ex;
        }

        return list;
    }

    @Override
    public int manageSave(User user) throws Exception {
        int r=-1;
        try
        {
            String sql="insert into carstore_user (cu_login_name,cu_user_name,cu_password,cu_sex,cu_birthday,cu_mobile,cu_address,cu_status,cu_email) values(?,?,?,?,?,?,?,?,?)";

            r=db.executeUpdate(sql,user.getLoginname(),user.getUserName(),user.getPassword(),user.getMale(),user.getBirthday(),user.getMobile(),user.getAddress(),"1",user.getEmail());

        }catch (Exception ex)
        {
            throw ex;
        }

        return r;
    }

    @Override
    public int update(User user, String userId) throws Exception {
        int r=-1;
        try
        {
            String sql="update carstore_user set cu_login_name=?,cu_user_name=?,cu_password=?,cu_sex=?,cu_birthday=?,cu_mobile=?,cu_address=? where cu_user_id=?";

            r=db.executeUpdate(sql,user.getLoginname(),user.getUserName(),user.getPassword(),user.getMale(),user.getBirthday(),user.getMobile(),user.getAddress(),userId);

        }catch (Exception ex)
        {
            throw ex;
        }

        return r;
    }

    @Override
    public int delete(String userId) throws Exception {
        int r=-1;
        try
        {
            String sql="delete from  carstore_user  where cu_user_id=?";

            r=db.executeUpdate(sql,userId);

        }catch (Exception ex)
        {
            throw ex;
        }

        return r;
    }

    @Override
    public User findByLoginname(String loginname) throws Exception {
        User user=null;
        try
        {
            String sql="select * from carstore_user where cu_login_name=? ";

            ResultSet rs=db.executeQuery(sql,loginname);

            if(rs.next())
            {
                user=new User();
                user.setUserId(rs.getString("cu_user_id"));
                user.setLoginname(rs.getString("cu_login_name"));
                user.setUserName(rs.getString("cu_user_name"));
                user.setPassword(rs.getString("cu_password"));
                user.setMale(rs.getString("cu_sex"));
                user.setBirthday(rs.getDate("cu_birthday"));
                user.setIdentityCode(rs.getString("cu_identity_code"));
                user.setEmail(rs.getString("cu_email"));
                user.setMobile(rs.getString("cu_mobile"));
                user.setAddress(rs.getString("cu_address"));
                user.setStatus(rs.getInt("cu_status"));
                user.setRole(rs.getInt("cu_role"));
            }
        }catch (Exception ex)
        {
            throw ex;
        }
        return user;
    }
}
