package dao;

import model.User;
import utility.DBConnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LoginDao {
    public User authenticateUser(User user) {
        String name = user.getName();
        String password = user.getPassword();

        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;

        String nameDB = "";
        String passwordDB = "";

        try {
            con = DBConnection.createConnection();
            statement = con.createStatement();
            resultSet = statement.executeQuery("select * from user");
            while(resultSet.next()) {
                nameDB = resultSet.getString("name");
                passwordDB = resultSet.getString("password");

                if(name.equals(nameDB) && password.equals(passwordDB)) {
                    User user1 = new User();
                    user1.setName(nameDB);
                    user1.setPassword(passwordDB);
                    user1.setId(resultSet.getInt("user_id"));
                    return user1;
                }
            }
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}