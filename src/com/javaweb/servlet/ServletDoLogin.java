package com.javaweb.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wuyong on 2016/12/14.
 * 利用servlet来判断账号密码是否为真
 */
@WebServlet(name = "ServletDoLogin", urlPatterns = "/ServletDoLogin")
public class ServletDoLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //存在中文的情况下，必须有相应的解码。否则解析出来乱码，自然匹配不对
        request.setCharacterEncoding("utf-8");
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        if (null != name && null != password && "张三".equals(name) && "123".equals(password)) {
            request.getSession().setAttribute("user", name);
            request.getRequestDispatcher("loginS.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
