package tools.repository;

import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import models.TableModel;
import models.UserModel;
import tools.DbTool;

public class UserRepository {
    /**
     * legger til bruker til databasen.
     * Denne er ikke implementert. Her må dere gjerne prøve å lage en egen servlet som kan kommunisere med
     * denne metoden.
     *
     * @param user bruker objekt som inneholder all informasjon om personen.
     *             Tips: Objektet må instansieres i en servlet før man kaller på addUser().
     * @param p    printwriter for å skrive ut html i servlet. F.eks SQL feilmeldinger eller annen info.
     */

    public static void addUser(UserModel user, PrintWriter p) {
        Connection db = null;
        PreparedStatement insertNewUser = null;
        try {
            db = DbTool.getINSTANCE().dbLoggIn(p);
            db.setCatalog("oblig1");
            String query =
                    "INSERT INTO `user` (User_firstName, User_lastName,User_Email, User_password ) values (?,?,?,?)";

            insertNewUser = db.prepareStatement(query);
            insertNewUser.setString(1, user.getFirstName());
            insertNewUser.setString(2, user.getLastName());
            insertNewUser.setString(3, user.getUserName());
            insertNewUser.setString(4, user.getPassword());
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
     * @param klubb brukerens epost-addresse ("trym@example.com");
     * @param p     printwriter see metoden over.
     * @return et String objekt med eposten til brukeren.
     */

    public static List<TableModel> getKlubb(String klubb, PrintWriter p) {
        Connection db = null;
        PreparedStatement prepareStatement = null;
        List<TableModel> toReturn = new ArrayList<>();
        try {
            db = DbTool.getINSTANCE().dbLoggIn(p);
            ResultSet rs = null;
            String query = "SELECT * FROM mytable where Klubb  = ?";
            prepareStatement = db.prepareStatement(query);
            prepareStatement.setString(1, klubb);
            rs = prepareStatement.executeQuery();
            while (rs.next()) {
                TableModel getTableModel = new
                        TableModel(rs.getInt("Rank"), rs.getDouble("score"), rs.getInt("Født"), rs.getString("Navn"),
                        rs.getString("Klubb"), rs.getTime("2000_meter"), rs.getTime("3000_meter"), rs.getInt("60_meter"),
                        rs.getInt("krhev"), rs.getDouble("sargeant"), rs.getInt("beveg"));

                toReturn.add(getTableModel);

            }
            rs.close();

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return toReturn;

    }

    public static List<TableModel> getResults(PrintWriter printWriter) {
        Connection db = null;
        PreparedStatement prepareStatement = null;

        List<TableModel> toReturn = new ArrayList<>();
        try {
            db = DbTool.getINSTANCE().dbLoggIn(printWriter);
            ResultSet rs = null;
            String query = "SELECT * FROM mytable";
            prepareStatement = db.prepareStatement(query);
            rs = prepareStatement.executeQuery();
            while (rs.next()) {
                TableModel getTableModel = new
                        TableModel(rs.getInt("Rank"), rs.getDouble("score"), rs.getInt("Født"), rs.getString("Navn"),
                        rs.getString("Klubb"), rs.getTime("2000_meter"), rs.getTime("3000_meter"), rs.getInt("60_meter"),
                        rs.getInt("krhev"), rs.getDouble("sargeant"), rs.getInt("beveg"));

                toReturn.add(getTableModel);

            }

            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return toReturn;
    }


}
