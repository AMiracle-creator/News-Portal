package controller;

import dao.PostDao;
import model.Post;
import utility.BoyerMoore;

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
        req.setAttribute("error_search", "");

        if (posts.isEmpty()) {
            req.setAttribute("posts", posts);
            req.getRequestDispatcher("templates/allpost.ftl").forward(req, resp);
            return;
        }

        req.getRequestDispatcher("templates/allpost.ftl").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("search");
        String cat = req.getParameter("select-box");
        String tag = req.getParameter("tag");
        PostDao postDao = new PostDao();
        ArrayList<Post> searching = new ArrayList<>();
        System.out.println("Tag: "+tag);


        ArrayList<Post> posts = postDao.getALlPosts();

        if (tag == null) {
            for (Post post : posts) {
                if (cat.equals("")) {
                    if (BoyerMoore.findPattern(post.getTitle(), search)) {
                        searching.add(post);
                    } else if (BoyerMoore.findPattern(post.getTopic(), search)) {
                        searching.add(post);
                    }
                } else if (!cat.equals("") && search.equals("")) {
                    if (BoyerMoore.findPattern(post.getTopic(), cat)) {
                        searching.add(post);
                    }
                } else if (!cat.equals("") && !search.equals("")) {
                    if (BoyerMoore.findPattern(post.getTopic(), cat) && BoyerMoore.findPattern(post.getTitle(), search)) {
                        searching.add(post);
                    }
                }
            }

            if (searching.isEmpty()) {
                req.setAttribute("error_search", "Ничего не найдено");
                req.setAttribute("posts", searching);
                req.getRequestDispatcher("templates/allpost.ftl").forward(req, resp);
                return;
            }

            req.setAttribute("posts", searching);
            req.setAttribute("error_search", "");
            req.getRequestDispatcher("templates/allpost.ftl").forward(req, resp);
        } else {
            for (Post post : posts) {
                if (BoyerMoore.findPattern(post.getTag(), tag)) {
                    searching.add(post);
                }
            }
            if (!searching.isEmpty()) {
                req.setAttribute("error_search", "");
                req.setAttribute("posts", searching);
                req.getRequestDispatcher("templates/allpost.ftl").forward(req, resp);
            } else {
                req.setAttribute("error_search", "Ничего не найдено");
                req.setAttribute("posts", searching);
                req.getRequestDispatcher("templates/allpost.ftl").forward(req, resp);
            }
        }
    }
}
