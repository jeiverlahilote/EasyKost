import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

// Define the servlet mapping
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve email and password from the request
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Mock user authentication (replace with database logic)
        if ("admin@easykos.com".equals(email) && "password123".equals(password)) {
            // Create a session and set user attributes
            HttpSession session = request.getSession();
            session.setAttribute("userEmail", email);
            session.setAttribute("userRole", "Admin");

            // Redirect to the dashboard
            response.sendRedirect("Admin/layanan.jsp");
        } else if ("customer@easykos.com".equals(email) && "password123".equals(password)) {
            // Create a session and set user attributes
            HttpSession session = request.getSession();
            session.setAttribute("userEmail", email);
            session.setAttribute("userRole", "Admin");

            // Redirect to the dashboard
            response.sendRedirect("User/exploreProduk.jsp");
        }else {
            // Authentication failed, redirect to login with error message
            request.setAttribute("errorMessage", "Invalid email or password.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
