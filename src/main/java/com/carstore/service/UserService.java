package com.carstore.service;

import com.carstore.entity.User;

import java.util.List;

public interface UserService {

	int update(User user, String userId) throws  Exception;

	User findById(String userId) throws  Exception;

	int save(User user) throws  Exception;

	/**
	 * 后台用户保存
	 * @param user
	 * @return
	 * @throws Exception
	 */
	int manageSave(User user) throws  Exception;


	User login(String name,String password) throws  Exception;

	int delete(String userId) throws  Exception;

	List<User> getUsers() throws  Exception;

	long getUserRowCount() throws  Exception;

	/**
	 * 查询用户名是否存在
	 * @param loginname
	 * @return
	 * @throws Exception
	 */
	public User findByLoginname(String loginname) throws Exception;
}
