package com.mandarin.dao;

import com.mandarin.basic.Librarian;
import com.mandarin.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import static com.mandarin.util.DBUtil.closeConnection;

public class AdminCl {
    /**
     * 登陆，查询用户是否存在，若存在密码是否匹配
     * @param account
     * @param password
     * @return
     */
    public boolean login(String account, String password)
    {
        boolean result=false; //匹配结果
        try {
            //连接

            Connection connection = (Connection) DBUtil.getConnection();
            //构建语句
            String sql = "select adminaccount,adminpassword from admin where adminaccount=? limit 1";
            PreparedStatement stmt = (PreparedStatement) connection.prepareStatement(sql);
            stmt.setString(1, account);

            //执行
            ResultSet rs=stmt.executeQuery();

            if(!rs.next()) //用户名不存在
                result=false;
            else if(!rs.getString(2).equals(password))
                result=false;
            else
                result=true;

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection();
        }
        return result;
    }

    /**
     * 创建图书管理员
     *
     * @param account
     * @return
     */
    public boolean creatLibrarian(String account) {
        Librarian librarian = new Librarian("0001", account, "00010001", 1); // TODO ensure the format
        /* 向数据库中添加librarian */
        boolean flag=true;
        try{
            Connection conn = (Connection) DBUtil.getConnection();
            String sql0 = "select librarianaccount from librarian";
            PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql0);
            ResultSet rs =stmt.executeQuery();
            for(;rs.next();){
                if(rs.getString(1).equals(account)){
                    flag=false;
                    break;
                }
            }
            if(flag){
                //构建语句
                String sql = "insert into librarian(librarianaccount,librarianpassword,librarianState) values (?,?,?)";
                stmt = (PreparedStatement) conn.prepareStatement(sql);
                stmt.setString(1, librarian.getAccount());
                stmt.setString(2, librarian.getPassword());
                stmt.setInt(3, librarian.getState());
                //执行
                stmt.executeUpdate();
            }
        }catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeConnection();
        }
        return flag;
    }

    /**
     * get All Librarian
     * @return
     */
    public ArrayList<Librarian> getAllLibrarian()
    {
        String sql = "select * from Librarian";
        return selectLibrarianResultSet(sql);

    }
    public  ArrayList<Librarian> getLibrarianByid(String id) {

        String sql = "select * from Librarian where librarianId= '" + id+"'";

        return selectLibrarianResultSet(sql);
    }
    public  ArrayList<Librarian> getLibrarianByAccount(String account) {

        String sql = "select * from Librarian where librarianAccount= '" + account+"'";

        return selectLibrarianResultSet(sql);
    }
    /**
     * get booklist
     * @param sql
     * @return
     */
        public static ArrayList<Librarian> selectLibrarianResultSet(String sql){
            ArrayList<Librarian> librarianList = new ArrayList<Librarian>();
            try {
                Connection conn = (Connection) DBUtil.getConnection();
                PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql);
                ResultSet rs = stmt.executeQuery();
                while (rs.next()) {
                    Librarian librarian = new Librarian();
                    librarian.setId(rs.getString(1));
                    librarian.setAccount(rs.getString(2));
                    librarian.setPassword(rs.getString(3));
                    librarian.setState(rs.getInt(4));
                    librarianList.add(librarian);
                }

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                closeConnection();
            }
            return librarianList;
        }

    /**
     * 通过id搜索图书管理员
     *
     * @param id
     * @return
     */
    public Librarian searchLibrarianById(String id) {
        Librarian librarian = new Librarian();
        /* 从数据库获取id对应的管理员 */
        return librarian;
    }

    /**
     * 通过account搜索图书管理员
     *
     * @param account
     * @return
     */
    public Librarian searchLibrarianByAccount(String account) {
        Librarian librarian = new Librarian();
        /* 从数据库获取account对应的管理员 */
        return librarian;
    }

    /**
     * 删除account对应的图书管理员
     *
     * @param account
     * @return
     */
    public boolean deleteLibrarian(String account) {
        /* 从数据库中删除account对应的图书管理员 */
        return true;
    }

    /**
     * 帮助account对应的图书管理员找回密码
     *
     * @param account
     * @return
     */
    public String findPassword(String account) {
        String password = new String();
        /* 从数据库获取account对应的管理员的密码 */
        return password;
    }

    /**
     * 设置默认逾期罚金
     *
     * @param defaultFine
     * @return
     */
    public boolean setDefaultFine(double defaultFine) {
        /* 将数据库中的图书馆的默认罚金设为defaultFine */
        return true;
    }

    /**
     * 设置默认还书期限
     *
     * @param defaultReturnTerm
     * @return
     */
    public boolean setDefaultReturnTerm(int defaultReturnTerm) {
        /* 将数据库中的图书馆的默认还书期限设为defaultReturnTerm */
        return true;
    }

    /**
     * 设置默认保证金
     *
     * @param defaultDeposit
     * @return
     */
    public boolean setDefaultDeposit(int defaultDeposit) {
        /* 将数据库中的图书馆的默认保证金设为defaultDeposit */
        return true;
    }
    public void updateLibrarianPassword(String password, String id) {
            String sql = "update Librarian set Librarianpassword='"+password+ "'where account = '" + id + "'";
            DBUtil.update(sql);
    }
    public void updateAdminPassword(String password, String id) {
        String sql = "update Librarian set Librarianpassword='"+password+ "'where account = '" + id + "'";
        DBUtil.update(sql);
    }
}
