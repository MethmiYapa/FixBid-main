package servlets;

import util.UserDBUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "updateUserServlet")
public class updateUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String FName = request.getParameter("one");
        String LName = request.getParameter("two");
        String address = request.getParameter("three");
        String phoneNumber = request.getParameter("four");
        String email = request.getParameter("five");

        boolean result = UserDBUtil.updateUser(FName, LName, address, phoneNumber, email);

        if (result == true) {

            System.out.println("User is updated successfully");

            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/userProfile.jsp");
            dispatcher.forward(request,response);
        } else {
            System.out.println("Update is not successful");
        }


    }
}
