package com.xyh.dao;

import com.xyh.dao.BaseDao;
import com.xyh.dao.BaseDao;

import java.sql.ResultSet;

public class UserDaoImpl extends BaseDao implements UserDao {
    public User login(String uname, String upwd) throws Exception {
        this.connect();
        ResultSet rs = this.executeQuery("select * from news_users where uname=? and upwd=?",uname,upwd);
        User user = null;
        while (rs.next()){
            user = new User(rs.getInt("uid"),rs.getString("uname"),rs.getString("upwd"));
        }
        this.close();
        return user;
    }
}
