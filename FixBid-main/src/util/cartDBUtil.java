package util;

import model.Product;

import java.sql.*;
import java.util.ArrayList;

public class cartDBUtil {

    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    //Insert new Product
    public static boolean insert(String productID, String name, String price, String quantity, String subtotal) {
        boolean status = false;

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "INSERT INTO cart values('" + productID + "','" + name + "','" + price + "','" + quantity + "','" + subtotal + "')create table cart(	name varchar null,	price int null,	quantity int null,	subtotal int null,	constraint cart_pk		unique (productID));";
            int res = stmt.executeUpdate(sql);

            if (res > 0) {
                status = true;
            }

        } catch (Exception ex) {

            ex.getMessage();
        }

        return status;
    }

}


