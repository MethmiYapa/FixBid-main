package servlets;

import util.UserDBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "forgetPasswordServlet")
public class forgetPasswordServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String UserEmail = request.getParameter("em");
        String newPassword = request.getParameter("repass");

        boolean res = UserDBUtil.resetPassword(UserEmail, newPassword);

        if(res == true)
        {
            System.out.println("Password reset successful ");
        }

        else
        {
            System.out.println("password reset is not successful");
        }
    }
}
