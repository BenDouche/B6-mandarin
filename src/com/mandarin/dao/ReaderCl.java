package com.mandarin.dao;

import com.mandarin.basic.Book;
import com.mandarin.util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ReaderCl {
    /**
     * 根据书籍的任意关键词进行搜索
     *
     * @param str
     * @return
     */
    public List<Book> searchBookByAny(String str) {
        List<Book> books = new ArrayList<Book>();
        // 从数据库中搜索所有属性（name,author,publisher,ISBN,location,introduction）包含str的书

        try {
            Connection conn = (Connection) DBUtil.getConnection();
            String sql1 = "select * from book";
            PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql1);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                //System.out.println(rs.getInt(1));
                //books.add(new Book(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getInt(9)));
                books.add(new Book(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getInt(9)));
                // TODO ensure the format
            }

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection();
        }
        System.out.println(books.size());
        return books;
    }

    public List<Book> findBookByName(String name) {
        Book book = new Book();
        List<Book> books = new ArrayList<Book>();
        try {
            Connection conn = (Connection) DBUtil.getConnection();
            String sql = "select * from book where bookname like '%" + name + "%'";
            PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                //books.add(new Book(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getInt(9)));
                books.add(new Book(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getInt(9)));
                // TODO ensure the format
            }
        } catch (Exception var8) {
            var8.printStackTrace();
        } finally {
            DBUtil.closeConnection();
        }

        return books;
    }

    public List<Book> findaBookByName(String name) {
        Book book = new Book();
        List<Book> books = new ArrayList<Book>();
        try {
            Connection conn = (Connection) DBUtil.getConnection();
            String sql = "select * from book where bookname like '%" + name + "%'";
            PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                //books.add(new Book(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getInt(9)));
                books.add(new Book(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getInt(9)));
                // TODO ensure the format
            }
        } catch (Exception var8) {
            var8.printStackTrace();
        } finally {
            DBUtil.closeConnection();
        }

        return books;
    }

    public List<Book> findBookByAuthor(String author) {
        List<Book> books = new ArrayList<Book>();
        try {
            Connection conn = (Connection) DBUtil.getConnection();
            String sql = "select * from book where author like '%" + author + "%'";
            PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                //books.add(new Book(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getInt(9)));
                books.add(new Book(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getInt(9)));
                // TODO ensure the format
            }
        } catch (Exception var8) {
            var8.printStackTrace();
        } finally {
            DBUtil.closeConnection();
        }
        return books;
    }

    public List<Book> findBookByPress(String press) {
        List<Book> books = new ArrayList<Book>();
        try {
            Connection conn = (Connection) DBUtil.getConnection();
            String sql = "select * from book where publisher like '%" + press + "%'";
            PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                //books.add(new Book(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getInt(9)));
                books.add(new Book(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8), rs.getInt(9)));
                // TODO ensure the format
            }
        } catch (Exception var8) {
            var8.printStackTrace();
        } finally {
            DBUtil.closeConnection();
        }
        return books;
    }

    public List<Book> findBookByKeyword(String keyword) {
        List<Book> books1 = new ArrayList<Book>();
        List<Book> books2 = new ArrayList<Book>();
        List<Book> books3 = new ArrayList<Book>();
        List<Book> result = new ArrayList<>();
        books1 = findaBookByName(keyword);
        books2 = findBookByAuthor(keyword);
        books3 = findBookByPress(keyword);
        if (!keyword.equals("")) {

            for (int i = 0; i < books1.size(); i++) {
                result.add(books1.get(i));
            }
            for (int i = 0; i < books2.size(); i++) {
                result.add(books2.get(i));
            }
            for (int i = 0; i < books3.size(); i++) {
                result.add(books3.get(i));
            }

        }
        return result;
    }
}
