package servlets;

import util.UserDBUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "deleteUserServlet")
public class deleteUserServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String mail = request.getParameter("five");

        boolean result = UserDBUtil.deleteUser(mail);

        if(result == true)
        {
            System.out.println("Delete is successful");
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/register.jsp");
            dispatcher.forward(request,response);
        }
        else
        {
            System.out.println("Delete is not successful");
        }
    }
}
