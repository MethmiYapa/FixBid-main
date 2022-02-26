package util;

import model.Admin;

import java.sql.*;
import java.util.ArrayList;

/**
 * Database connection and Quarries for the Admin services
 */
public class AdminDBUtil {
    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    /**
     * This performs get single record of an admin
     *
     * @param email email of the admin
     * @return admin (Admin)
     * @see #getAdmin(Admin)
     * @see DBConnectUtil#getConnection()
     */
    public static Admin getSingleAdmin(String email) {
        Admin admin = new Admin();

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "SELECT * FROM admin WHERE email='" + email + "'";

            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                getAdmin(admin);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return admin;
    }

    /**
     * This performs get all records in admin table
     *
     * @return admins (ArrayList<Admin>)
     * @see #getAdmin(Admin)
     * @see DBConnectUtil#getConnection()
     */
    public static ArrayList<Admin> listAdmin() {
        ArrayList<Admin> admins = new ArrayList<>();

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "SELECT * FROM admin";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                Admin admin = new Admin();

                getAdmin(admin);

                admins.add(admin);
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return admins;
    }

    /**
     * This performs update admin's user details
     *
     * @param firstName first name of the admin
     * @param lastName  last name of the admin
     * @param phoneNo   phone number of the admin
     * @param street    street for the admin's address
     * @param city      city for the admin's address
     * @param state     state for the admin's address
     * @param zip       ZIP code for the admin's address
     * @return isSuccess (boolean)
     * @see DBConnectUtil#getConnection()
     */
    public static boolean update(String firstName, String lastName, String phoneNo, String street,
                                 String city, String state, int zip, int adminId) {
        boolean isSuccess = false;

        try {
            conn = DBConnectUtil.getConnection();
            PreparedStatement ps = conn.prepareStatement("UPDATE admin SET firstName=?, lastName=?, phoneNo=?, street=?, city=?, state=?, zip=? WHERE adminId=?");
            ps.setString(1, firstName);
            ps.setString(2, lastName);
            ps.setString(3, phoneNo);
            ps.setString(4, street);
            ps.setString(5, city);
            ps.setString(6, state);
            ps.setInt(7, zip);
            ps.setInt(8, adminId);

            int rs = ps.executeUpdate();

            if (rs != 0) {
                isSuccess = true;
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    /**
     * This performs login to admin profile
     *
     * @param email username(email) of the admin
     * @param password password of the admin account
     * @return isSuccess (boolean)
     */
    public static boolean logIn(String email, String password) {
        boolean isSuccess = false;

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "SELECT passwd FROM admin WHERE email='" + email + "'";

            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                if (password.equals(rs.getString(1))) {
                    isSuccess = true;
                }
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    /**
     * This is helper function for the getSingleAdmin() and listAdmin()
     *
     * @param admin object of the Admin
     * @throws SQLException Thrown when database access error occurs or this method is called on a closed connection
     * @see #getSingleAdmin(String)
     * @see #listAdmin()
     */
    private static void getAdmin(Admin admin) throws SQLException {
        admin.setAdminId(rs.getInt(1));
        admin.setFirstName(rs.getString(2));
        admin.setLastName(rs.getString(3));
        admin.setEmail(rs.getString(4));
        admin.setPhoneNo(rs.getString(5));
        admin.setStreet(rs.getString(6));
        admin.setCity(rs.getString(7));
        admin.setState(rs.getString(8));
        admin.setZip(rs.getInt(9));
        admin.setProfilePic(rs.getString(10));
    }
}
