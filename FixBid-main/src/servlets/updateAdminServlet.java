package servlets;

import util.AdminDBUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "updateAdminServlet")
public class updateAdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adminId = request.getParameter("adminId");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String phoneNo = request.getParameter("phoneNo");
        String street = request.getParameter("street");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zip = request.getParameter("zip");

        int convertedAdminId = Integer.parseInt(adminId);
        int convertedZip = Integer.parseInt(zip);

        boolean success = AdminDBUtil.update(firstName, lastName, phoneNo, street, city, state, convertedZip, convertedAdminId);

        if (success){
            System.out.println("Update success"); // Testing only
        }else {
            System.out.println("Something went wrong!!!"); // Testing only
        }
        RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/admin.jsp");
        dispatcher.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
