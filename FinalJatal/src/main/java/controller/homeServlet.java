package controller;

import dao.LoginDao;
import dao.PostDao;
import model.Post;
import model.User;


import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class homeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PostDao postDao = new PostDao();

        ArrayList<Post> popularPosts = postDao.getPopularPosts();
        req.setAttribute("popularPosts", popularPosts);

        ArrayList<Post> latestPosts = postDao.getLatestNews();
        req.setAttribute("latestPosts", latestPosts);

        ArrayList<Post> trendingPosts = postDao.getTrendingPosts();
        req.setAttribute("trendingPosts", trendingPosts);

        Cookie[] cookies = req.getCookies();
        if (cookies == null ||cookies.length <= 3) {
            req.setAttribute("user", null);
            req.getRequestDispatcher("templates/index.ftl").forward(req, resp);
            return;
        }
        String name = "";
        String password = "";
        String id = "";
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("username")) {
                name = cookie.getValue();
            } else if (cookie.getName().equals("password")) {
                password = cookie.getValue();
            } else if (cookie.getName().equals("id")) {
                id = cookie.getValue();
            }
        }

        if (password != null && name != null) {
            LoginDao loginDao = new LoginDao();
            User user = new User();
            user.setName(name);
            user.setPassword(password);
            user.setId(Integer.parseInt(id));

            user = loginDao.authenticateUser(user);
            req.getSession().setAttribute("user", user);
            req.setAttribute("user", user);
        }

        req.getRequestDispatcher("templates/index.ftl").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("templates/index.ftl").forward(req,resp);
    }
}
