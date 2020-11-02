package servlets;

import models.UserInfoModel;
import tools.repository.ClassRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "adduser", urlPatterns = {"/AddUser"})
public class AddUser extends HttpServlet{

       @Override
       protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

       }

       @Override
       protected void doPost(HttpServletRequest req, HttpServletResponse resp)
               throws IOException, ServletException {
           String email = req.getParameter("email");
           String passord = req.getParameter("passord");
           String firstName = req.getParameter("fname");
           String lastName = req.getParameter("lname");
           String date =  req.getParameter("dob");
           String bio = req.getParameter("bio");
           System.out.println(email + passord + firstName + lastName +
                   date + bio);
           UserInfoModel reqAddUser = new UserInfoModel(email, passord,firstName,lastName,
                   date, bio);
           ClassRepository.addUser(reqAddUser);
           req.getRequestDispatcher("StartSide.jsp").forward(req,resp);
       }

   }



