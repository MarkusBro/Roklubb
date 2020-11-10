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
            List<ClassResultatsModel> useResult = ClassRepository.getClassResultat();
            req.setAttribute("List", useResult);
            req.getRequestDispatcher("SeniorMann.jsp").forward(req, resp);
        }
        protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException{
            String id = req.getParameter("id");
            String firstName = req.getParameter("firstname");
            String lastName = req.getParameter("lastname");
            String club = req.getParameter("club");
            String className = req.getParameter("classname");
            String userType = req.getParameter("usertype");

            UserInfoModel addBruker = new UserInfoModel(id, firstName, lastName, club,
                    className,userType);
            req.setAttribute("addBruker", addBruker);
        }
    }



