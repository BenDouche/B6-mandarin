package com.mandarin.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mandarin.basic.Book;
import com.mandarin.util.DBUtil;
import com.mandarin.util.JsonSolve;
/**
 * 通过ISBN获取书籍信息
 * @author ChenJing
 * @version 1.0
 *
 */
public class BookInformationServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String ISBN = request.getParameter("ISBN");
		String tmp;
		Book book = JsonSolve.toBook(tmp = JsonSolve.sendGet(ISBN));
		System.out.println(tmp);
		System.err.println("ISBN: "+ISBN+"\tname:"+book.getName());
		request.setCharacterEncoding("UTF-8");
		request.getSession().setAttribute("name", book.getName());
		request.getSession().setAttribute("ISBN", book.getISBN());
		request.getSession().setAttribute("author", book.getAuthor());
		request.getSession().setAttribute("introduction", book.getIntroduction());
		request.getSession().setAttribute("price", book.getPrice());
        request.getSession().setAttribute("publisher", book.getPublisher());
		response.setCharacterEncoding("UTF-8");
		response.sendRedirect("http://localhost:8080/test_war_exploded/");
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		doPost(request, response);
	}
}
