package servlets;

import tools.repository.UserDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("StartSide.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        UserDAO userdb = new UserDAO();

        try {
            if (userdb.checklogin(name,password)){
                request.getRequestDispatcher("StartSide.jsp").forward(request,response);

            }else {
                String error = "Feil brukernavn eller passord";

                request.setAttribute("error", error);
                request.getRequestDispatcher("Login.jsp").forward(request,response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
