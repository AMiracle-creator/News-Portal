package dao;

import model.User;
import utility.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class RegisterDao {
    public String registerUser(User user) {
        String name = user.getName();
        String password = user.getPassword();
        String email = user.getEmail();

        Connection con = null;
        Connection con1 = null;
        PreparedStatement preparedStatement = null;
        PreparedStatement preparedStatement1 = null;
        try {
            con = DBConnection.createConnection();
            con1 = DBConnection.createConnection();

            preparedStatement1 = con1.prepareStatement("select email from user where email=?");
            preparedStatement1.setString(1, email);
            ResultSet resultSet = preparedStatement1.executeQuery();
            while(resultSet.next()){
                String str = resultSet.getString("email");
                if (str.equals(email))
                    throw new SQLException();
            }

            String query = "insert into user(name,password,email) values (?,?,?)";
            preparedStatement = con.prepareStatement(query);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, email);

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