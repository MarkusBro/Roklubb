package servlets;

import models.UserInfoModel;
import tools.repository.UserDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("startPage.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        UserDAO userdb = new UserDAO();

        try {
            if (userdb.checklogin(name,password)){
                HttpSession session=request.getSession();
                UserInfoModel user = userdb.getUser(name);
                session.setAttribute("firstname",user.getFirstName());
                session.setAttribute("lastname",user.getLastName());
                session.setAttribute("userType_name",user.getUserType());
                session.setAttribute("club_name",user.getClub());
                session.setAttribute("email",user.getEmail());



                request.getRequestDispatcher("startPage.jsp").forward(request,response);


            }else {
                String error = "Feil brukernavn eller passord";

                request.setAttribute("error", error);
                request.getRequestDispatcher("login.jsp").forward(request,response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
