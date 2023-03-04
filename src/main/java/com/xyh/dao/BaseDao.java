package com.xyh.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

public class BaseDao {
    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private static  String driver;
    private static String url;
    private static String username;
    private static String password;
    static {
        Properties pro = new Properties();
        InputStream is = BaseDao.class.getClassLoader().getResourceAsStream("mysqlConn.properties");
        try {
            pro.load(is);
            driver = pro.getProperty("driver");
            url = pro.getProperty("url");
            username = pro.getProperty("username");
            password = pro.getProperty("password");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * 连接
     * @throws Exception
     */
    public void connect() throws  Exception{
        Class.forName(driver);
        conn = DriverManager.getConnection(url,username,password);
    }

    /**
     * 关闭
     * @throws Exception
     */
    public void close()throws Exception{
        if (rs != null){
            rs.close();
        }
        if (ps != null){
            ps.close();
        }
        if (conn != null){
            conn.close();
        }
    }

    /**
     * sql语句
     * @param sql
     * @param objs
     * @throws Exception
     */
    private void getPs(String sql,Object... objs)throws Exception{
        ps = conn.prepareStatement(sql);
        for (int i = 0; i <objs.length ; i++) {
            ps.setObject((i+1),objs[i]);
        }
    }

    /**
     * 通用的增删改
     * @param sql
     * @param objs
     * @return
     * @throws Exception
     */
    public int executeUpdate(String sql,Object... objs) throws  Exception{
        int row = 0;
        getPs(sql,objs);
        row = ps.executeUpdate();
        return row;
    }

    /**
     * 通用查找语句
     * @param sql
     * @param objs
     * @return
     * @throws Exception
     */
    public ResultSet executeQuery(String sql,Object... objs) throws  Exception{
        getPs(sql,objs);
        rs = ps.executeQuery();
        return rs;
    }
}
