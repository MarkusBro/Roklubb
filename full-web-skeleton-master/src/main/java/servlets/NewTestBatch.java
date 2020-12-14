package servlets;

import models.TestBatchModel;
import tools.repository.ClassRepository;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "newtestbatch", urlPatterns = {"/newtestbatch"})
public class NewTestBatch extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
        String id = req.getParameter("id");
        String date = req.getParameter("date");
        String enddate = req.getParameter("enddate");
        System.out.println(date +","+ id );

        TestBatchModel AddtestBatch = new TestBatchModel(id, date, enddate);
        ClassRepository.addTestBatch(AddtestBatch);
        req.getRequestDispatcher("addTestBatch.jsp").forward(req, resp);


    }
}