package servlets;

import util.ProductDBUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "handleProductServlet")
public class handleProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String button = request.getParameter("btn");
        int pid = Integer.parseInt(request.getParameter("pid"));

        if(button.equals("Edit")){
            HttpSession session = request.getSession();
            session.setAttribute("pid", pid);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/productInfo.jsp");
            dispatcher.forward(request, response);
            System.out.println("Edit Success");
        }
        else {

            ProductDBUtil.deleteProduct(pid);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/showProducts.jsp");
            dispatcher.forward(request, response);
            System.out.println("Delete Success");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
