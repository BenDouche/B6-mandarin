package com.mandarin.servlet;

import com.mandarin.util.DBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/ReaderLoginServlet")
public class ReaderLoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String userName = request.getParameter("username");

        String password = request.getParameter("password");
        String userType = request.getParameter("danxuan");

        if (userType.equals("Librarian")) {
            try {
                //数据库链接
                Connection con = DBUtil.getConnection();
                String sql = "select * from librarian where librarianaccount = ? and librarianpassword = ?";
                PreparedStatement pstmt = con.prepareStatement(sql);
                pstmt.setString(1, userName);
                pstmt.setString(2, password);
                ResultSet rs = pstmt.executeQuery();

                if (rs.next()) {
                    System.out.println(rs.getString(1));
                    response.sendRedirect("Librarian.jsp");
                } else {
                    response.sendRedirect("index.jsp");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        }
        if (userType.equals("Reader")) {


            try {
                //数据库链接
                Connection con = DBUtil.getConnection();
                String sql = "select * from reader where readeraccount = ? and readerpassword = ?";
                PreparedStatement pstmt = con.prepareStatement(sql);
                pstmt.setString(1, userName);
                pstmt.setString(2, password);
                ResultSet rs = pstmt.executeQuery();

                if (rs.next()) {
                    System.out.println(rs.getString(1));
                    response.sendRedirect("reader.jsp");
                } else {
                    response.sendRedirect("index.jsp");
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
