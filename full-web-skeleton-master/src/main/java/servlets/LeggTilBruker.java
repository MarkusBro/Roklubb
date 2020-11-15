package servlets;

import models.ClassResultatsModel;
import models.UserInfoModel;
import tools.repository.ClassRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.List;

@WebServlet(name = "LeggTilBruker", urlPatterns = {"/LeggTilBruker"})
public class LeggTilBruker extends AbstractAppServlet {
        @Override
        protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        }

        @Override
        protected void writeBody(HttpServletRequest req, HttpServletResponse res, PrintWriter out) throws ServletException, IOException {

        }

        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp)
                throws ServletException, IOException {

        }
        protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException{
            String id = req.getParameter("id");
            String firstName = req.getParameter("firstname");
            String lastName = req.getParameter("lastname");
            String club = req.getParameter("club");
            String className = req.getParameter("classname");
            String userType = req.getParameter("usertype");

            List<String> values = new ArrayList<String>(req.getParameterMap().keySet());
            values.forEach(name -> System.out.println(name + "Inne i foreach") );

            System.out.println("userType = " + userType);
            System.out.println("className = " + className);
            System.out.println("club = " + club);
            System.out.println("lastName = " + lastName);
            System.out.println("firstName = " + firstName);
            System.out.println("id = " + id);

            List<UserInfoModel> addBruker = new ArrayList<>();

            UserInfoModel userInfo = new UserInfoModel(id, firstName, lastName, club, className,userType);
            addBruker.add(userInfo);

            req.setAttribute("addBruker", addBruker);
            req.getRequestDispatcher("LeggInnTest.jsp").forward(req,resp);
        }
    }



