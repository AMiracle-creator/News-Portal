package dao;

import model.User;
import utility.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class RegisterDao {
    public String registerUser(User user) {
        String name = user.getName();
        String password = user.getPassword();

        Connection con = null;
        PreparedStatement preparedStatement = null;
        try {
            con = DBConnection.createConnection();
            String query = "insert into user(name,password) values (?,?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, password);

            int i = preparedStatement.executeUpdate();

            if (i != 0)
                return "SUCCESS";
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return "Oops.. Something went wrong there..!";
    }
}