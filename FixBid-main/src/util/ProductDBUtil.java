package util;

import model.Product;

import java.sql.*;
import java.util.ArrayList;

//This Util class provides CRUD operations for the table Products in the Database
public class ProductDBUtil {

    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;



    //Insert new Product
    public static boolean insertProduct(String pName,String expDate,int startPrice,String ptype ,String description,int vendorID){
        boolean status = false;
        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "INSERT INTO product values(0,'" + pName + "','" + expDate + "','" + startPrice + "','" + description +"','" + ptype + "','" + vendorID +"')";

            int res = stmt.executeUpdate(sql);

            if (res > 0) {
                status = true;
            }

        } catch (Exception ex) {

            ex.getMessage();
        }

        return status;
    }

    //Update a Product
    public static boolean updateProduct(String pName,String expDate,String description,int pid){
        boolean status = false;

        try{

            conn = DBConnectUtil.getConnection();
            PreparedStatement ps = conn.prepareStatement("UPDATE product SET pName=?, expDate=?, description=? WHERE pid = ?");

            ps.setString(1,pName);
            ps.setString(2,expDate);
            ps.setString(3,description);
            ps.setInt(4,pid);

            int result = ps.executeUpdate();

            if(result>0){
                status = true;
            }

        }catch(ClassNotFoundException | SQLException ex){

                ex.printStackTrace();
        }

        return status;
    }
    //Select Single Product by id
    public static Product selectOneProduct(int ppid){

        Product product = new Product();

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "SELECT * FROM product WHERE pid ='" + ppid + "'";

            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                product.setpName(rs.getString("pName"));
                product.setExpDate(rs.getString("expDate"));
                product.setStartPrice(rs.getInt("startPrice"));
                product.setDescription(rs.getString("description"));
                product.setProductType(rs.getString("productType"));
                product.setPid(rs.getInt("pid"));
            }
        } catch (ClassNotFoundException | SQLException e) {

            e.printStackTrace();

        }

        return product;

    }

    //To get all Products in the product Table
    public static ArrayList<Product> listProduct() {
        ArrayList<Product> products = new ArrayList<>();
        try{
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "SELECT * FROM product";
            rs = stmt.executeQuery(sql);

            while (rs.next()){
                Product product = new Product();

                product.setPid((rs.getInt(1)));
                product.setpName(rs.getString("pName"));
                product.setExpDate(rs.getString("expDate"));
                product.setStartPrice(rs.getInt("startPrice"));
                product.setDescription(rs.getString("description"));
                product.setProductType(rs.getString("productType"));

                products.add(product);

            }

        }catch (ClassNotFoundException | SQLException ex){

            ex.printStackTrace();
        }

        return products;
    }

    //Delete Product
    public static boolean deleteProduct(int pid ) {

        boolean deleted = false;

        try {

            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "DELETE FROM product WHERE  pid = '" + pid +"'";
            int res = stmt.executeUpdate(sql);

            if(res > 0)
            {
                deleted = true;
            }

        }catch(Exception e) {
            e.printStackTrace();
        }

        return deleted;
    }
}
