package com.mandarin.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mandarin.basic.*;
import com.mandarin.util.*;
/**
 * 添加书籍
 * @author ChenJing
 * @version 1.0
 *
 */
public class AddBookServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		Book book = new Book();
		book.setISBN(request.getParameter("ISBN"));
		book.setLocation(request.getParameter("location"));
		book.setAuthor(request.getParameter("author"));
		book.setName(request.getParameter("name"));
		book.setPublisher(request.getParameter("publisher"));
		book.setIntroduction(request.getParameter("introduction"));
		book.setPrice(Double.parseDouble(request.getParameter("price")));
		book.setState(1);

		try{
		String sql = "insert into Book (ISBN,place,bookName,author,publisher,introduction,price,bookstate) values (?,?,?,?,?,?,?,?)";
		Connection conn = (Connection)DBUtil.getConnection();
		PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql);
		stmt.setString(1, book.getISBN());
		stmt.setString(2,book.getLocation());
		stmt.setString(3,book.getName());
		stmt.setString(4,book.getAuthor());
		stmt.setString(5,book.getPublisher());
		stmt.setString(6,book.getIntroduction());
		stmt.setFloat(7, (float)book.getPrice());
		stmt.setInt(8, book.getState());
		stmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
            DBUtil.closeConnection();
		}

		//response.sendRedirect("http://localhost:8080/Mandarin_WEB/");
	}
}
