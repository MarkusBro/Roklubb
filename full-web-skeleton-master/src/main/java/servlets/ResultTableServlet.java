package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import models.ResultModel;
import tools.DbTool;
import tools.repository.UserRepository;


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
        for (ResultModel result : useResult) {
            req.setAttribute("fname", result.getFname());
            req.setAttribute("lname", result.getLname());
            req.setAttribute("dob", result.getDob());
        }
        req.getRequestDispatcher("ResultTable.jsp").forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws IOException, ServletException {
    }
}





