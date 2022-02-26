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

@WebServlet(name = "updateProductServlet")
public class updateProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int pid = Integer.parseInt(request.getParameter("pid"));
        String pName = request.getParameter("nameEdit");
        String expDate = request.getParameter("dateEdit");
        String description = request.getParameter("descriptionEdit");

        boolean res = ProductDBUtil.updateProduct(pName,expDate,description,pid);
        if(res){

            HttpSession session = request.getSession(false);
            session.removeAttribute("pid");

            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/showProducts.jsp");
            dispatcher.forward(request,response);
            System.out.println("Update Success");
        }
        else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/productInfo.jsp");
            dispatcher.forward(request,response);
            System.out.println("Update Unsuccessful");
        }

    }
}
