package com.mandarin.servlet;

//import DAO.DAO;
import com.mandarin.basic.Admin;
import com.mandarin.dao.AdminCl;
import com.mandarin.util.DBUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        //BUG 位置，doPost()未得到相应的parameter
        String userName = req.getParameter("username");

        String password = req.getParameter("password");

        AdminCl user = new AdminCl();
        if(user.login(userName,password)) {
            HttpSession session=req.getSession();
            session.setAttribute("account",userName);


            resp.sendRedirect("adminMainPage.jsp");
        }
        else {
            req.setAttribute("msg", "Error in username or password");
            RequestDispatcher view = req.getRequestDispatcher("login.jsp");
            view.forward(req,resp);
            }
    }
}

