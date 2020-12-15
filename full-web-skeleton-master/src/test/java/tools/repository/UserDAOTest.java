package tools.repository;

import models.UserInfoModel;
import org.junit.jupiter.api.Test;
import tools.repository.UserDAO;

import java.sql.SQLException;

import static org.junit.jupiter.api.Assertions.*;

class UserDAOTest {

    @Test
    public void checklogin() throws SQLException, ClassNotFoundException {
        //arrange
        UserInfoModel expected = new UserInfoModel ("1","per@KrsRoklubb.no","test","per","moe","1999-02-15","test","Utøver","Senior Mann","Kristiansand Roklubb");
        //act
        UserDAO dao = new UserDAO();
        boolean actual = dao.checklogin(expected.getEmail(),expected.getPassword(),true);
        //assert
        assertTrue(actual);


    }

    /**
     *
     * check getUser method
     * @throws SQLException
     */
    @Test
    public void getUser() throws SQLException {
        UserInfoModel expected = new UserInfoModel ("1","Per","moe","utøver","Senior Mann","Kristiansand Roklubb");
    UserDAO dao = new UserDAO();
    UserInfoModel actual = dao.getUser("per@KrsRoklubb.no",true);
    assertEquals(expected.getFirstName(),actual.getFirstName());


    }
}