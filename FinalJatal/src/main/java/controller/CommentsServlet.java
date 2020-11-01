package controller;

import dao.CommentDao;
import model.Comment;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class CommentsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int post_id = Integer.parseInt(req.getParameter("id"));
        CommentDao commentDao = new CommentDao();
        ArrayList<Comment> comments = commentDao.getAllComments(post_id);
        req.setAttribute("post_id", post_id);
        req.setAttribute("comments", comments);

        req.getRequestDispatcher("templates/singlepost.ftl").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        int post_id = Integer.parseInt(req.getParameter("id"));

        if (user == null || user.equals("")) {
            System.out.println("blzzz");
            req.setAttribute("error", "Вы не вошли в систему");
            req.setAttribute("comment_error", "Вы не вошли в систему");
        } else {
            String comment_text = req.getParameter("text");
            System.out.println(comment_text);
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();
            String comment_date = dateFormat.format(date);
            Comment comment = new Comment();
            comment.setComment_text(comment_text);
            comment.setComment_date(comment_date);
            comment.setUser(user);
            if (!comment_text.equals("")){
                CommentDao.addComment(comment);
            }
        }

        resp.sendRedirect("/FinalJatal_war/post?id="+post_id);
    }
}
