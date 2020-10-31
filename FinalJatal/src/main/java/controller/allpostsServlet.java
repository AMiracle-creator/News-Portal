package controller;

import dao.PostDao;
import model.Post;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class allpostsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PostDao postDao = new PostDao();
        ArrayList<Post> posts = postDao.getALlPosts();
        req.setAttribute("posts", posts);


        req.getRequestDispatcher("templates/allpost.ftl").forward(req, resp);
    }
}
