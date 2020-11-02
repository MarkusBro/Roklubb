package tools.repository;

import models.ClassResultatsModel;
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
            String query =
                    "INSERT INTO roklubb.userInfo (email, password, fname, lname, dob, bio)\n" +
                            "VALUES (?,?,?,?,?,?);";

            insertNewUser = db.prepareStatement(query);
            insertNewUser.setString(1, user.getEmail());
            insertNewUser.setString(2, user.getPassword());
            insertNewUser.setString(3, user.getFname());
            insertNewUser.setString(4, user.getLname());
            insertNewUser.setString(5, user.getDob());
            insertNewUser.setString(6, user.getBio());
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
         *
         *   brukerens epost-addresse ("trym@example.com");
         * @return et String objekt med eposten til brukeren.
         */

        public static List<ClassResultatsModel> getClassResultat(){
            Connection db = null;
            PreparedStatement prepareStatement = null;
            List<ClassResultatsModel> toReturn = new ArrayList<>();
            try {
                db = DbTool.getINSTANCE().dbLoggIn();
                ResultSet rs = null;
                String query = "SELECT roklubb.userInfo.fname, roklubb.userInfo.lname, roklubb.user.club_name, roklubb.user.class_name,roklubb.testBatch.startDate, 5kmW, 5kmT, 2kmW, 2kmT, 60sW, percentLieRow, kgLieRow, percentSquat, kgSquat, flexibility\n" +
                        "FROM roklubb.testResult\n" +
                        "         INNER JOIN roklubb.user ON testResult.user_id = user.id\n" +
                        "         INNER JOIN roklubb.testBatch on roklubb.testBatch.id = testBatch_id\n"+
                        "         INNER JOIN roklubb.userInfo ON user.userInfo_email = userInfo.email where class_name ='Senior Mann'";
                prepareStatement = db.prepareStatement(query);
                rs = prepareStatement.executeQuery();
                while (rs.next()) {
                    ClassResultatsModel getTableModel = new
                            ClassResultatsModel(rs.getString("fname"), rs.getString("lname"), rs.getString("club_name"), rs.getString("class_name"),rs.getDate("startDate"), rs.getDouble("5kmW")
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


        public static List<UserInfoModel> newList(){
            Connection db = null;
            PreparedStatement prepareStatement = null;

            List<UserInfoModel> toReturn = new ArrayList<>();
            try {
                db = DbTool.getINSTANCE().dbLoggIn();
                ResultSet rs = null;
                String query = "SELECT * From roklubb.userInfo";
                prepareStatement = db.prepareStatement(query);
                rs = prepareStatement.executeQuery();
                while (rs.next()) {
                    UserInfoModel getModel = new
                            UserInfoModel(rs.getString("email"), rs.getString("password"), rs.getString("fname"),
                            rs.getString("lname"), rs.getString("dob"), rs.getString("bio"));

                    toReturn.add(getModel);

                }

                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return toReturn;
        }


    }


