package com.mandarin.controller;

import com.mandarin.basic.Book;
import com.mandarin.util.DBUtil;
import com.mandarin.util.JsonSolve;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

@Controller
@RequestMapping("/BookInfo")
public class BookInfomationController {

    @GetMapping(value = "/hello")
    public String hello(){
        return "test/hello";
    }

    @RequestMapping(value = "/AutoFill", method = {RequestMethod.POST, RequestMethod.GET})
    public void autoFill(HttpServletRequest request, HttpServletResponse response) throws IOException {

        System.out.println("Success to Link!");
        String ISBN = request.getParameter("ISBN");
        String tmp;

        Book book = JsonSolve.toBook(tmp = JsonSolve.sendGet(ISBN));
        double temp = book.getPrice();
        //CNY->Dollar
        temp=((int)((temp/7.12)*100))/(100.0);
        System.out.println(tmp);
        System.err.println("ISBN: "+ISBN+"\tname:"+book.getName());
        request.setCharacterEncoding("UTF-8");
        request.getSession().setAttribute("name", book.getName());
        request.getSession().setAttribute("ISBN", book.getISBN());
        request.getSession().setAttribute("author", book.getAuthor());
        request.getSession().setAttribute("introduction", book.getIntroduction());
        request.getSession().setAttribute("price", temp);
        request.getSession().setAttribute("publisher", book.getPublisher());
        response.setCharacterEncoding("UTF-8");
        response.sendRedirect("http://localhost:8080/test_war_exploded/");

    }

    @RequestMapping(value = "/AddBook", method = RequestMethod.POST)
    public void addBook(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("Ready to add book!");
        request.setCharacterEncoding("UTF-8");
        Book book = new Book();
        book.setISBN(request.getParameter("ISBN"));
        book.setLocation(request.getParameter("location"));
        book.setAuthor(request.getParameter("author"));
        book.setName(request.getParameter("name"));
        book.setPublisher(request.getParameter("publisher"));
        book.setIntroduction(request.getParameter("introduction"));
        book.setPrice(Double.parseDouble(request.getParameter("price")));
        book.setState(1);
        int copies=Integer.parseInt(request.getParameter("copies"));
        request.getSession().setAttribute("location", book.getLocation());
        request.getSession().setAttribute("copies", copies);
        System.out.println(book.toString());
        try{
            String sql = "insert into Book (ISBN,place,bookName,author,publisher,introduction,price,bookstate) values (?,?,?,?,?,?,?,?)";
            Connection conn = (Connection) DBUtil.getConnection();
            PreparedStatement stmt = (PreparedStatement) conn.prepareStatement(sql);
            stmt.setString(1, book.getISBN());
            stmt.setString(2,book.getLocation());
            stmt.setString(3,book.getName());
            stmt.setString(4,book.getAuthor());
            stmt.setString(5,book.getPublisher());
            stmt.setString(6,book.getIntroduction());
            stmt.setFloat(7, (float)book.getPrice());
            stmt.setInt(8, book.getState());
            for(int i=0;i<=copies;i++)
                stmt.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.closeConnection();
        }

        response.setCharacterEncoding("UTF-8");
        response.sendRedirect("http://localhost:8080/test_war_exploded/AddBookOk.jsp");
        //response.sendRedirect("http://localhost:8080/Mandarin_WEB/");
    }

}
