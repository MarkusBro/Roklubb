package servlets;

import models.TestBatchModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addtestbatch", urlPatterns = {"/addtestbatch"})
public class AddTestBatch extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        String id = req.getParameter("id");
        System.out.println(",,," + id);

        TestBatchModel AddtestBatch = new TestBatchModel(id);
        req.setAttribute("addtestbatch", id);
        req.getRequestDispatcher("AddUser.jsp").forward(req, resp);

    }
}