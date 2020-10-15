package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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

        if (name.equals("admin") && password.equals("Gr3")) {
            request.setAttribute("name", name);
            response.sendRedirect("StartSide.jsp");
        } else {
            response.sendRedirect("Login.jsp");
        }
    }
}
