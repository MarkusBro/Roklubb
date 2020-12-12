package tools.repository;
import models.UserInfoModel;
import tools.DbTool;

import java.sql.*;
public class UserDAO {
    public boolean checklogin (String username, String password) throws SQLException,
            ClassNotFoundException{
        Connection conn =DbTool.getINSTANCE().dbLoggIn();

        String sql = "SELECT * FROM roklubb.user WHERE email = ?  and password = ?";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, username);
        statement.setString(2, password);

        ResultSet result = statement.executeQuery();

        if (result.next()) {
            conn.close();
            return true;
        } else {
            conn.close();
            return false;
        }

    }

    public UserInfoModel getUser(String email) throws SQLException {
        Connection conn =DbTool.getINSTANCE().dbLoggIn();

        String sql = "SELECT * FROM roklubb.user WHERE email = ?";
        PreparedStatement statement = conn.prepareStatement(sql);
        statement.setString(1, email);

        UserInfoModel user = new UserInfoModel();
        ResultSet result = statement.executeQuery();
        while (result.next()){
            user.setFirstName(result.getString("fname"));
            user.setLastName(result.getString("lname"));
            user.setUserType(result.getString("userType_name"));
            user.setClub(result.getString("club_name"));

        }
            return user;


    }
}


