package servlets;

import models.TestModel;
import models.UserInfoModel;
import tools.repository.ClassRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "Leggtiltestresultater", urlPatterns = {"/Leggtiltestresultater"})
public class LeggTilTestResultater extends AbstractAppServlet {

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
        String rank = req.getParameter("rank");
        String score = req.getParameter("score");
        String testbatchid = req.getParameter("testbatchid");
        String classnamestatic = req.getParameter("classnamestatic");
        String kmT5 = req.getParameter("kmT5");
        String kmW5 = req.getParameter("kmW5");
        String kmT2 = req.getParameter("kmT2");
        String kmW2 = req.getParameter("kmW2");
        String w60s = req.getParameter("W60s");
        String percentlierow = req.getParameter("percentlierow");
        String kglierow = req.getParameter("kglierow");
        String percentsquat = req.getParameter("percentsquat");
        String kgsquat = req.getParameter("kgsquat");

        System.out.println(id+"," + rank+"," + score+"," + testbatchid+"," + classnamestatic+"," + kmT5+"," +
                kmW5+"," + kmT2+"," + kmW2+"," + w60s+"," + percentlierow + kglierow+"," + percentsquat+"," + kgsquat+",");

        TestModel AddTest = new TestModel(testbatchid,id,rank, score, classnamestatic, kmT5, kmW5, kmT2,kmW2,w60s,
                percentlierow, kglierow, percentsquat, kgsquat);
        ClassRepository.addTestSenior(AddTest);

        //req.getRequestDispatcher("AddUser.jsp").forward(req, resp);

    }
}
