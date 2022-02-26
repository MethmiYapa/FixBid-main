package servlets;

import util.AdminDBUtil;
import util.UserDBUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "loginServlet")
public class loginServlet extends HttpServlet {
        protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String email1 = request.getParameter("email1");
            String password1 = request.getParameter("password1");
            String isAdmin = request.getParameter("check1");

            if (isAdmin == null) {
                if (UserDBUtil.userLogin(email1, password1)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("email1", email1);

                    RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/userProfile.jsp");
                    dispatcher.forward(request, response);
                    System.out.println("Login Success");
                } else {
                    System.out.println("Login Unsuccessful");
                }
            } else {
                if (AdminDBUtil.logIn(email1, password1)){
                    HttpSession session = request.getSession();
                    session.setAttribute("email", email1);

                    RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/admin.jsp");
                    dispatcher.forward(request,response);
                    System.out.println("Login Success");
                } else {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/login.jsp");
                    dispatcher.forward(request,response);
                    System.out.println("Login Unsuccessful");
                }

            }

        }


    }
