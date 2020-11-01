package controller;

import dao.PostDao;
import model.Post;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

public class PostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer post_id = Integer.parseInt(req.getParameter("id"));
        PostDao postDao = new PostDao();
        postDao.updateViews(post_id);
        ArrayList<Post> posts = postDao.getPost(post_id);
        System.out.println(posts);
        req.setAttribute("posts", posts);
        req.setAttribute("user",req.getSession().getAttribute("user"));

        req.getRequestDispatcher("templates/singlepost.ftl").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer post_id = Integer.parseInt(req.getParameter("id"));
        Integer user_id = ((User) req.getSession().getAttribute("user")).getId();
        PostDao postDao = new PostDao();

        try {
            postDao.addLike(post_id, user_id);
            req.setAttribute("errMsg",null);
            resp.sendRedirect("/FinalJatal/post?id="+post_id);
        }
        catch (SQLException e){
            req.setAttribute("errMsg","Вы уже оставляли лайк");
            req.getRequestDispatcher("templates/singlepost.ftl").forward(req,resp );
        }
    }
}
