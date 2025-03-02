import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/SubmitForm")
public class MyServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        String name = req.getParameter("Name");
        long phone = Long.parseLong(req.getParameter("phone"));

        System.out.println("Entered Email: "+email);
        System.out.println("Entered Password: "+pass);
        System.out.println("Entered Name: "+name);
        System.out.println("Entered Phone no.: "+phone);

        PrintWriter out = resp.getWriter();
        out.println("Entered Email: "+email);
        out.println("Entered Password: "+pass);
        out.println("Entered Name: "+name);
        out.println("Entered Phone no.: "+phone);
    }
}
