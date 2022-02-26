package util;

import model.Product;

import java.sql.*;
import java.util.ArrayList;

public class checkoutDBUtil {

    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    //Insert new Product
    public static boolean insert(String checkoutID, String fullName, String email, String address, String city,String zip,String nameOnCard,String creditCardNb,String expMonth,String expYear,String cvv) {
        boolean status = false;

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "INSERT INTO checkout values('"+checkoutID+"','"+fullName+"','"+email+"','"+address+"','"+city+"','" +zip+"','"+nameOnCard+"','"+creditCardNb+"','"+expMonth+"','"+expYear+"','"+cvv+"')";

            int res = stmt.executeUpdate(sql);

            if (res > 0) {
                status = true;
            }
            else{
                status = false;
            }

        } catch (Exception ex) {

            ex.getMessage();
        }

        return status;
    }

}

