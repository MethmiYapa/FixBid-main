package servlets;

import util.ProductDBUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "addProductServlet")
public class addProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String pName = request.getParameter("product_name");
        String expDate = request.getParameter("expiry_date");
        int startPrice = Integer.parseInt(request.getParameter("start_price"));
        String productType = request.getParameter("product_type");
        String description = request.getParameter("product_description");
        int vendorID = Integer.parseInt(request.getParameter("vendor_id"));

        if(ProductDBUtil.insertProduct(pName,expDate,startPrice,productType,description,vendorID)){

            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/showProducts.jsp");
            dispatcher.forward(request,response);
            System.out.println("Addition Success");
        }
        else{
            RequestDispatcher dispatcher = request.getRequestDispatcher("/jsp/addProduct.jsp");
            dispatcher.forward(request,response);
            System.out.println("Addition Success");
        }
    }
}
