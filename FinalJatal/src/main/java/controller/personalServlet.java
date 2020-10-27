package controller;

import model.User;
import utility.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class personalServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        int id = user.getId();
        String email = "";

        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select * from user");
            while (resultSet.next()) {
                if (id == resultSet.getInt("user_id")) {
                    email = resultSet.getString("email");
                }
            }
        }
        catch(SQLException e) {
            e.printStackTrace();
        }

        user.setEmail(email);
        req.getSession().setAttribute("user", user);
        req.setAttribute("user", user);

        req.getRequestDispatcher("templates/redactCabinet.ftl").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

}
