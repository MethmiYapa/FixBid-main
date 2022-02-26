package util;

import model.User;

import java.sql.*;
import java.util.ArrayList;


public class UserDBUtil {

    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Following code segment performs data insertion to the user table

    /**
     * @param FName  first name of the user
     * @param LName  last name of the user
     * @param address  address of the user
     * @param phoneNumber  phone number of the user
     * @param email  email address of the user
     * @param password  password of the user
     * @return status
     */
    public static boolean addUser(String FName, String LName, String address, String phoneNumber, String email, String password, String AccTpy) {
        boolean status = false;
        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "INSERT INTO user VALUES(0,'" + FName + "','" + LName + "','" + address + "','" + phoneNumber + "','" + email + "','" + password + "','" + AccTpy + "')";

            int res = stmt.executeUpdate(sql);

            if (res > 0) {
                status = true;
            }

        } catch (Exception e) {

            e.getMessage();
        }

        return status;
    }

    /**
     *
     * @param email1 email address of the user
     * @param password1 password of the user
     * @return
     */

    public static boolean userLogin(String email1, String password1) {
        boolean status = false;
        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "SELECT password FROM user WHERE email ='" + email1 + "'";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                if (password1.equals(rs.getString(1))) {
                    status = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return status;
    }

    /**
     *
     * @param email1 email address of the user
     * @return
     */

    public static User getSingleUser(String email1) {
        User user = new User();

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "SELECT * FROM user WHERE email='" + email1 + "'";

            rs = stmt.executeQuery(sql);
            while (rs.next()) {
                user.setFName(rs.getString("FName"));
                user.setLName(rs.getString("LName"));
                user.setAddress(rs.getString("address"));
                user.setPhoneNumber(rs.getString("phoneNumber"));
                user.setEmail(rs.getString("email"));
            }
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    /**
     * This performs GET all users
     *
     * @return users (ArrayList<User>)
     * @see DBConnectUtil#getConnection()
     */
    public static ArrayList<User> listUser() {
        ArrayList<User> users = new ArrayList<>();
        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "SELECT * FROM user";
            rs = stmt.executeQuery(sql);

            while (rs.next()){
                User user = new User();

                user.setUID(rs.getInt("UID"));
                user.setFName(rs.getString("FName"));
                user.setLName(rs.getString("LName"));
                user.setAddress(rs.getString("address"));
                user.setPhoneNumber(rs.getString("phoneNumber"));
                user.setEmail(rs.getString("email"));
                user.setAccType(rs.getString("AccTpy"));

                users.add(user);
            }
        } catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }

        return users;
    }

    /**
     *
     * @param FName  first name of the user
     * @param LName  last name of the user
     * @param address  address of the user
     * @param phoneNumber  phone number of the user
     * @param email  email address of the user
     * @return
     */
    public static boolean updateUser(String FName, String LName, String address, String phoneNumber, String email) {

        boolean status = false;

        try{

            conn = DBConnectUtil.getConnection();
            PreparedStatement st = conn.prepareStatement("UPDATE user SET FName=?, LName=?, address=?, phoneNumber=? WHERE email=?");

            st.setString(1, FName);
            st.setString(2, LName);
            st.setString(3, address);
            st.setString(4, phoneNumber);
            st.setString(5, email);

            int reply = st.executeUpdate();

            if(reply > 0)
            {
                status = true;
            }

        }catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        return status;
    }

    /**
     *
     * @param mail email address of the user
     */

    public static boolean deleteUser(String mail) {

        boolean status = false;

        try {

            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "DELETE FROM user WHERE email = '"+mail+"'";
            int res = stmt.executeUpdate(sql);

            if(res > 0)
            {
                status = true;
            }

        }catch(Exception e) {

            e.printStackTrace();
        }

        return status;
    }

    /**
     *
     * @param UEmail user email
     * @param newP new password
     * @return
     */

    public static boolean resetPassword(String UEmail, String newP) {

        boolean isSuccess = false;

        try {

            conn = DBConnectUtil.getConnection();
            PreparedStatement pst = conn.prepareStatement("UPDATE user SET password=? WHERE email=?");

            pst.setString(1, newP);
            pst.setString(2, UEmail);

            int exec = pst.executeUpdate();

            if(exec > 0)
            {
                isSuccess = true;
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return  isSuccess;
    }
}

