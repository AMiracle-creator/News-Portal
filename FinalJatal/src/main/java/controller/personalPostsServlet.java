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

public class personalPostsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        int author_id = user.getId();
        PostDao postDao = new PostDao();
        ArrayList<Post> posts = postDao.getUserPost(author_id);
        System.out.println(posts);
        req.setAttribute("posts", posts);


        req.getRequestDispatcher("templates/personal-allposts.ftl").forward(req,resp);

    }
}
