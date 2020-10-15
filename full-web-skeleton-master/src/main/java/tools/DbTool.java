package tools;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Properties;

public final class DbTool {
    private static final tools.DbTool INSTANCE = new tools.DbTool();
    static Connection connection;
    //path til config.properties på payara server
    static String payara = "/opt/payara/config.properties";

    /**
     * initiates the class as a singleton.
     *
     * @return DbTool
     */
    public static tools.DbTool getINSTANCE() {
        return INSTANCE;
    }

    /**
     * HashMap som leser over config.properties og lagrer
     * username, password og url til databasen for å lage en kobling.
     *
     * @return et hashmap med username, password og url til databasen.
     */
    private static Map<String, String> getProperties() {
        Map<String, String> result = new HashMap<>();


        try (InputStream input = new FileInputStream(payara)) {
            Properties prop = new Properties();

            prop.load(input);
            result.put("username", prop.getProperty("username"));
            result.put("password", prop.getProperty("password"));
            result.put("URL", prop.getProperty("URL"));
        } catch (IOException ex) {
            ex.printStackTrace();

        }
        return result;

    }

    /**
     *  used to list all files in current working directory on payara
     *  call this method inside getProperties() if needed.
     *  useful for debugging paths on payara server.
     */
    private static void printFilesInFolder() {
        System.out.println("Working Directory = " + System.getProperty("user.dir"));
        File file = new File(System.getProperty("user.dir"));
        String [] contents = file.list();

        for (int i = 0; i < Objects.requireNonNull(contents).length; i++) {
            System.out.println(contents[i]);
        }
    }

    /**
     * Establishes a connection with a mariaDB or returns an existing one.
     *
     * @param out for html printing in front-end e.g. (for errors or content)
     * @return connection to db
     * @throws SQLException if the connection fails
     */
    public Connection dbLoggIn(PrintWriter out) throws SQLException {
        Connection toReturn = null;
        Map<String, String> result = getProperties();


        try {
            toReturn = (connection != null)
                ? connection
                : DriverManager.getConnection(
                    result.get("URL"),
                    result.get("username"),
                    result.get("password"));
           
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("SQL Exception " + e);
        }
        return toReturn;
    }
}

