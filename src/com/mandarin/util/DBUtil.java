package com.mandarin.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * DBUtil 数据库工具类
 * @author 郝志伟
 * @version 1.0
 */
public class DBUtil {

    private static final String connectionPath = "jdbc:postgresql://localhost:5432/Mandarin";
    private static final String DBUser = "postgres";// 通用账户
    private static final String DBPswd = "postgres";// 通用密码

    private static Connection conn = null; // connection对象
    private static Statement stmt = null; // SQL语句执行
    private static ResultSet rs = null;// 结果集

    public static void main(String args[]) {
        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(connectionPath, DBUser, DBPswd);
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
        }
        System.out.println("数据库链接成功");
    }
    public static Connection getConnection() {
        try {
            Class.forName("org.postgresql.Driver");
            conn = DriverManager.getConnection(connectionPath, DBUser, DBPswd);
        } catch (ClassNotFoundException e) {
            System.err.println("驱动加载失败");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("数据库链接异常");// catch block
            e.printStackTrace();
        }
        return conn;
    }

    public static void save(String sql) {
        try {
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        closeConnection();
    }

    public static void closeConnection() {
        try{
            if(rs!=null){
                rs.close();
                rs=null;
            }
            if(stmt!=null){
                stmt.close();
                stmt=null;
            }
            if(conn!=null){
                conn.close();
                conn=null;
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
    }

    public static void delete(String sql) {
        try {
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        closeConnection();
    }

    public static void update(String sql) {
        try {
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        closeConnection();
    }
}
