package controller;

import dao.ProfileDao;
import model.User;
import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.file.Paths;
import java.util.UUID;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;

@MultipartConfig
public class redactProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("templates/personalcabinet.ftl").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        User user = (User) req.getSession().getAttribute("user");
        String username = req.getParameter("username");
        String surname = req.getParameter("surname");
        String email = req.getParameter("email");
        String info = req.getParameter("info");
        Part part = req.getPart("photo");
        String fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
        System.out.println( "filename is - " + fileName);
        String img = "";

        if (fileName.length() > 1) {
            System.out.println("DmitryItis");
           String uploadDir = getServletConfig().getInitParameter("uploadDir");
           String imgAddress = uploadDir + File.separator + UUID.randomUUID().toString() +
                   "-" + part.getSubmittedFileName();
            System.out.println(imgAddress);
            IOUtils.copyLarge(part.getInputStream(), new FileOutputStream(imgAddress));
            img = imgAddress;
        }
        System.out.println("1 "+user.getName());

        if (!img.equals("")){
            user.setPhoto(img);
        }
        System.out.println("2 "+user.getName());

        if (!username.equals("")){
            user.setName(username);
        }
        System.out.println("3 "+user.getName());
        if (!surname.equals("")){
            user.setSurname(surname);
        }
        System.out.println("4 "+user.getName());

        System.out.println("5 "+user.getName());
        if (!info.equals("")){
            user.setInfo(info);
        }
        System.out.println("6 "+user.getName());

        System.out.println(user.getPhoto());
        if (!email.equals("")){
            user.setEmail(email);
        }

        String redactUser = ProfileDao.editProfile(user);
//        req.setAttribute("error_email", "");

        if (redactUser.equals("SUCCESS")) {
            System.out.println("ya tut");
            req.setAttribute("user", user);
            resp.sendRedirect("/FinalJatal_war/personalcab");
        }

//        req.getRequestDispatcher("templates/redactCabinet.ftl").forward(req, resp);
    }
}
