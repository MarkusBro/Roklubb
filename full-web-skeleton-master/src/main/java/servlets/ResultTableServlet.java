/*
 *   Java servlet that contains doGet method for ResultTable.jsp in webapp
 *   Get/Set from ResultModel in models
 *   getResult method comes from UserRepository
 *
 *   @Version 2.0
 *
 *   @Author Michael H. Valen
 */


package servlets;

import models.ResultModel;
import tools.repository.UserRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/*
 *  /ResultTable is the site-link to WebSevlet
 */

@WebServlet(name = "RequestResultTable", urlPatterns = {"/ResultTable"})
public class ResultTableServlet extends AbstractAppServlet {

    @Override
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void writeBody(HttpServletRequest req, HttpServletResponse resp, PrintWriter out) throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<ResultModel> useResult = UserRepository.getResult();
        req.setAttribute("List", useResult);
        req.getRequestDispatcher("ResultTable.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
    }
}





