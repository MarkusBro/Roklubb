package servlets;

import models.UserInfoModel;
import tools.repository.ClassRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Date;

@WebServlet(name = "adduser", urlPatterns = {"/AddUser"})
public class AddUser extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        resp.setContentType("text/plain; charset=UTF-8");

        String email = req.getParameter("email");
        String password = req.getParameter("passord");
        String firstName = req.getParameter("fname");
        String lastName = req.getParameter("lname");
        String date = req.getParameter("dob");
        String bio = req.getParameter("bio");
        String userType = req.getParameter("usertype");
        String className = req.getParameter("class");
        String club = req.getParameter("club");

        System.out.println(email+"," + password+"," + firstName+"," + lastName+"," +
                date+"," + bio+"," + userType+"," + className+"," + club);

        UserInfoModel AddClub = new UserInfoModel(club);
        //ClassRepository.addClub(AddClub);

        UserInfoModel AddUser = new UserInfoModel(email, password, firstName, lastName,
                date, bio,userType, className, club);
        ClassRepository.addUser(AddUser);
        req.getRequestDispatcher("StartSide.jsp").forward(req, resp);


    }
}

