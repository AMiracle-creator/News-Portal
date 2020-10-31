package controller;

import dao.PostDao;
import model.Post;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

public class PostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer post_id = Integer.parseInt(req.getParameter("id"));
        PostDao postDao = new PostDao();
        ArrayList<Post> posts = postDao.getPost(post_id);
        System.out.println(posts);
        req.setAttribute("posts", posts);

        req.getRequestDispatcher("templates/singlepost.ftl").forward(req,resp);
    }
}
