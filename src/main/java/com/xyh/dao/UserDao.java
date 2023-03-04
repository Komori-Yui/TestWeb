package com.xyh.dao;

public interface UserDao {
    /**
     * 登录
     * @param
     * @return
     * @throws Exception
     */
    User login(String uname,String upwd) throws  Exception;

}
