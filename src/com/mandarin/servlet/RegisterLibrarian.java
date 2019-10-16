package com.mandarin.servlet;

import com.mandarin.basic.Admin;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegisterLibrarian")
public class RegisterLibrarian extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String username = request.getParameter("username");
        System.out.println(username);
        Admin admin=new Admin();
        if(admin.creatLibrarian(username)){
            request.setAttribute("msg","图书管理员注册成功");
            System.out.println("图书管理员注册成功");
            RequestDispatcher view= request.getRequestDispatcher("index.jsp");
            view.forward(request,response);
        }else{
            request.setAttribute("msg","图书管理员注册失败，该用户名已存在");
            System.out.println("图书管理员注册失败，该用户名已存在");
            RequestDispatcher view= request.getRequestDispatcher("index.jsp");
            view.forward(request,response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
