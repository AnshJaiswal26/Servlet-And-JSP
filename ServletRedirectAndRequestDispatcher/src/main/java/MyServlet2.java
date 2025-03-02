import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/SubmitThis")
public class MyServlet2 extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
//        String name = req.getParameter("Name");
//        long phone = Long.parseLong(req.getParameter("phone"));

        PrintWriter pw = resp.getWriter();

        if(email.equals("anshjaiswalj26@gmail.com") && pass.equals("Ansh@1234")){

            HttpSession session = req.getSession();
            session.setAttribute("name_key", "Ansh Jaiswal");

            RequestDispatcher rd = req.getRequestDispatcher("/profile.jsp");
            rd.forward(req, resp);
        }
        else{
//             To prevent browser cache
//            resp.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
//            resp.setHeader("Pragma", "no-cache");
//            resp.setHeader("Expires", "0");

            resp.setContentType("text/html");
            pw.println("<h3 style = 'color: red'> Invalid Username Or Password </h3>");
            RequestDispatcher rd = req.getRequestDispatcher("/index.html");
            rd.include(req, resp);
        }
    }
}
