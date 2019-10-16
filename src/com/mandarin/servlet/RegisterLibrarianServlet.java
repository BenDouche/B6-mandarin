package com.mandarin.servlet;

import com.mandarin.basic.Admin;
import com.mandarin.dao.AdminCl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegisterLibrarianServlet")
public class RegisterLibrarianServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String username = request.getParameter("username");
        AdminCl adminCl=new AdminCl();
        if(adminCl.creatLibrarian(username)){
            request.setAttribute("msg","1");
            RequestDispatcher view= request.getRequestDispatcher("adminMainPage.jsp");
            view.forward(request,response);
        }else{
            request.setAttribute("msg","0");
            RequestDispatcher view= request.getRequestDispatcher("adminMainPage.jsp");
            view.forward(request,response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
