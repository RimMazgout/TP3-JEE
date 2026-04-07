package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.User;
import services.UserService;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private UserService userService = new UserService();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        User user = new User(username, password);

        boolean added = userService.register(user);

        if (added) {
            request.setAttribute("message", "Inscription réussie. Vous pouvez maintenant vous connecter.");
        } else {
            request.setAttribute("message", "Ce nom d'utilisateur existe déjà.");
        }

        request.getRequestDispatcher("/views/register.jsp").forward(request, response);
    }
}