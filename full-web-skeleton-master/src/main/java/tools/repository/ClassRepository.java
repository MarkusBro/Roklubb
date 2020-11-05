package tools.repository;

import models.ClassResultatsModel;
import models.TableModel;
import models.UserInfoModel;
import tools.DbTool;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class ClassRepository {
    /**
     * legger til bruker til databasen.
     * Denne er ikke implementert. Her må dere gjerne prøve å lage en egen servlet som kan kommunisere med
     * denne metoden.
     *
     * @param user bruker objekt som inneholder all informasjon om personen.
     *             Tips: Objektet må instansieres i en servlet før man kaller på addUser().
     */


    public static void addUser(UserInfoModel user) {
        Connection db = null;
        PreparedStatement insertNewUser = null;
        try {
            db = DbTool.getINSTANCE().dbLoggIn();
            db.setCatalog("roklubb");
            String query = "INSERT INTO roklubb.user (email, userType_name, class_name, club_name,password, fname, lname, dob, bio) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            insertNewUser = db.prepareStatement(query);
            insertNewUser.setString(1, user.getEmail());
            insertNewUser.setString(2, user.getUserType());
            insertNewUser.setString(3, user.getClassName());
            insertNewUser.setString(4, user.getClub());
            insertNewUser.setString(5, user.getPassword());
            insertNewUser.setString(6, user.getFirstName());
            insertNewUser.setString(7, user.getLastName());
            insertNewUser.setString(8, user.getDob());
            insertNewUser.setString(9, user.getBio());
            insertNewUser.execute();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                db.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }
    public static void addClub(UserInfoModel user) {
        Connection db = null;
        PreparedStatement insertNewUser = null;
        try {
            db = DbTool.getINSTANCE().dbLoggIn();
            db.setCatalog("roklubb");
            String query = "INSERT INTO roklubb.club (name) VALUES (?)";
            insertNewUser = db.prepareStatement(query);
            insertNewUser.setString(1, user.getClub());
            insertNewUser.execute();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } finally {
            try {
                db.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }
    /**
     * henter ut spesifikk person fra databasen
     * <p>
     * brukerens epost-addresse ("trym@example.com");
     *
     * @return et String objekt med eposten til brukeren.
     */

    public static List<ClassResultatsModel> getClassResultat() {
        Connection db = null;
        PreparedStatement prepareStatement = null;
        List<ClassResultatsModel> toReturn = new ArrayList<>();
        try {
            db = DbTool.getINSTANCE().dbLoggIn();
            ResultSet rs = null;
            String query = "SELECT roklubb.user.fname, roklubb.user.lname, roklubb.user.club_name, roklubb.testResult.class_name_static,roklubb.testBatch.startDate, 5kmW, 5kmT, 2kmW, 2kmT, 60sW, percentLieRow, kgLieRow, percentSquat, kgSquat, flexibility\n" +
                    "                    FROM roklubb.testResult\n" +
                    "                             INNER JOIN roklubb.user ON testResult.user_id = user.id\n" +
                    "                            INNER JOIN roklubb.testBatch on roklubb.testBatch.id = testBatch_id\n" +
                    "                           where class_name_static = 'Senior Mann';";
            prepareStatement = db.prepareStatement(query);
            rs = prepareStatement.executeQuery();
            while (rs.next()) {
                ClassResultatsModel getTableModel = new
                        ClassResultatsModel(rs.getString("fname"), rs.getString("lname"), rs.getString("club_name"), rs.getString("class_name_static"), rs.getDate("startDate"), rs.getDouble("5kmW")
                        , rs.getTime("5kmT"), rs.getDouble("2kmW"), rs.getTime("2kmT"), rs.getDouble("60sW"), rs.getDouble("percentLieRow"),
                        rs.getDouble("kgLieRow"), rs.getDouble("percentSquat"), rs.getDouble("kgSquat"), rs.getInt("flexibility"));

                toReturn.add(getTableModel);

            }
            rs.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return toReturn;

    }


    public static List<UserInfoModel> newList() {
        Connection db = null;
        PreparedStatement prepareStatement = null;

        List<UserInfoModel> toReturn = new ArrayList<>();
        try {
            db = DbTool.getINSTANCE().dbLoggIn();
            ResultSet rs = null;
            String query = "SELECT * From roklubb.user";
            prepareStatement = db.prepareStatement(query);
            rs = prepareStatement.executeQuery();
            while (rs.next()) {
                UserInfoModel getModel = new
                        UserInfoModel(rs.getString("email"), rs.getString("password"), rs.getString("fname"),
                        rs.getString("lname"), rs.getString("dob"), rs.getString("bio"), rs.getString("usertype"), rs.getString("classname"), rs.getString("club"));

                toReturn.add(getModel);

            }

            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return toReturn;
    }


}


