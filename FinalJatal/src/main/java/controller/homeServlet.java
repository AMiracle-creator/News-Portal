package controller;

import dao.LoginDao;
import model.User;


import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

public class homeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        Cookie[] cookies = req.getCookies();
        String name = "";
        String password = "";
        String id = "";
        for(Cookie cookie : cookies){
            if(cookie.getName().equals("username")){
                name = cookie.getValue();
                System.out.println("+");
            }
            else if(cookie.getName().equals("password")){
                password = cookie.getValue();
                System.out.println("+");
            }
            else if(cookie.getName().equals("id")){
                id = cookie.getValue();
                System.out.println("+");
            }
        }

        if(password != null && name != null){
            LoginDao loginDao = new LoginDao();
            User user = new User();
            user.setName(name);
            user.setPassword(password);
            user.setId(Integer.parseInt(id));
            String userLogin = null;
            user = loginDao.authenticateUser(user);
            req.getSession().setAttribute("user", user);
            req.setAttribute("user", user);
        }
        req.getRequestDispatcher("templates/index.ftl").forward(req, resp);
    }
}
