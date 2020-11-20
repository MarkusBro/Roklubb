package servlets;

import models.ClassResultatsModel;
import models.TestBatchModel;
import models.UserInfoModel;
import org.graalvm.compiler.core.common.type.ArithmeticOpTable;
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
import java.util.List;

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
        System.out.println(date);

        TestBatchModel AddtestBatch = new TestBatchModel(id,date);
        ClassRepository.addTestBatch(AddtestBatch);
        req.getRequestDispatcher("AddTestBatch.jsp").forward(req, resp);


    }
}