package com.mandarin.controller;

import com.mandarin.dao.AdminCl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping("/Admin")
public class AdminController {

    /*---------------- 页面初始化跳转 ----------------*/

    @GetMapping("/login")
    public String loginPage(){
        return "admin/login";
    }

    /*---------------- 处理页面请求 ----------------*/

    @RequestMapping("/login.do")
    public void doLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

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
