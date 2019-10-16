package com.mandarin.servlet;

import com.mandarin.basic.Book;
import com.mandarin.dao.ReaderCl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/VisitorSearchBook")
public class VisitorSearchBook extends HttpServlet{

        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            response.setContentType("text/html;charset=utf-8");
            String keyword = request.getParameter("keyword");
            System.out.println(keyword);
            ReaderCl reader= new ReaderCl();
            List<Book> books = new ArrayList<Book>();

            books=reader.findBookByName(keyword);

            request.setAttribute("books",books);
            RequestDispatcher view=request.getRequestDispatcher("youke-searchbook.jsp");
            view.forward(request,response);
        }
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        }
}
