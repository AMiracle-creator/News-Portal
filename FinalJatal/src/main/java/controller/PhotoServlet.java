package controller;

import org.apache.commons.io.IOUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

public class PhotoServlet extends HttpServlet {
    public final String UPLOAD_DIR = "C:\\Users\\agayn\\News-Portal\\FinalJatal\\data";

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fileName = req.getParameter("fileName");
        resp.setContentType("image/png");
        System.out.println(UPLOAD_DIR + File.separator + fileName);
        if (fileName != null) {
//            try {
//                IOUtils.copyLarge(new FileInputStream(UPLOAD_DIR + File.separator + fileName),
//                        resp.getOutputStream());
//            } catch (Exception e) {
//                req.setAttribute("errMsg","Error");
//                e.printStackTrace();
//                resp.sendRedirect(req.getContextPath() + "/home");
//            }
//        } else {
//            req.setAttribute("errMsg", "Error");
            IOUtils.copyLarge(
                    new FileInputStream(UPLOAD_DIR + File.separator + fileName),
                    resp.getOutputStream());
        }

    }
}
