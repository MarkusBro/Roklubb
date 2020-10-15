package servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RequestUserNameFromDb", urlPatterns = {"/RequestUserNameFromDb"})
public class RequestUserNameFromDb extends AbstractAppServlet {
    @Override
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        writeResponse(request, response, "Servlet");
    }

    @Override
    protected void writeBody(HttpServletRequest req,HttpServletResponse res, PrintWriter out) {
        out.println("<h1>Fuker dette?</h1>");
        out.println("<form action='ReceiveKlubb' method='post'>");
        out.println("  <label for='uklubb'>Klubb:</label>");
        out.println("  <input type='text' name='uklubb'/>");
        out.println("  <input type='submit' />");
        out.println("</form>");
        out.println("<style>");     // start style
        // enclose style attributes withing the <style> </style> elements
        out.println("h1 {");        // note leading brace
        out.println("color:white;");
        out.println("background-color:blue;");
        out.println("}");          // note trailing brace for h1 style
        // add styles for other elements here using similar structure
        // note that separate lines are used for clarity -
        // all of the above could be one println
        out.println("</style>");

    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
