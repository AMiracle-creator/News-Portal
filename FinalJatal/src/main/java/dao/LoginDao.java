package dao;

import model.User;
import utility.DBConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {
    public String authenticateUser(User user) throws SQLException {
        String name = user.getName();
        String password = user.getPassword();

        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        String nameInDB = "";
        String passwordInDB = "";

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select name,password from user");
            while(resultSet.next()) {
                nameInDB = resultSet.getString("name");
                passwordInDB = resultSet.getString("password");

                if(name.equals(nameInDB) && password.equals(passwordInDB)) {
                    return "SUCCESS";
                }
            }
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
        return "Invalid user";
    }
}