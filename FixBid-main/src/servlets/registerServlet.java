package servlets;

import util.UserDBUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "registerServlet")
public class registerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String AccTpy = request.getParameter("Radios");
        String FName = request.getParameter("FName");
        String LName = request.getParameter("LName");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String password = request.getParameter("password");



        if (UserDBUtil.addUser(FName, LName, address, phoneNumber, email, password,AccTpy)) {
            System.out.println("New user data is inserted");
        } else {
            System.out.println("Data is not inserted");
        }


    }
}
