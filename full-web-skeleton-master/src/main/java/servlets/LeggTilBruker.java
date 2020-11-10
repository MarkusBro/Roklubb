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
            String firstNme = req.getParameter("firstname");
            String lastname = req.getParameter("lastname");
            String club = req.getParameter("club");
            String usertype = req.getParameter("usertype");

            UserInfoModel addBruker = new UserInfoModel(id, firstNme, lastname, club,
                    usertype);
            req.setAttribute(addBruker "addBruker");
        }
    }



