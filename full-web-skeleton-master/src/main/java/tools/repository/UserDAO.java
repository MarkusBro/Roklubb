package tools.repository;
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
}


