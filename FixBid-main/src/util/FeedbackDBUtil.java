package util;

import model.Feedback;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;

/**
 * Database connection and Queries for the Feedback service
 */
public class FeedbackDBUtil {

    private static Connection conn = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    /**
     * This performs INSERT new feedback to database
     *
     * @param email   email of the user
     * @param type    feedback type (Suggestion or Complain)
     * @param comment feedback message
     * @return isSuccess (boolean)
     * @see #getFeedback(ArrayList, String)
     * @see DBConnectUtil#getConnection()
     */
    public static boolean addFeedback(String email, String type, String comment) {
        boolean isSuccess = false;
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime now = LocalDateTime.now();
        String dateTime = dtf.format(now);

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();
            String sql = "INSERT INTO feedback values(0,'" + email + "','" + type + "','" + comment + "','" + dateTime + "')";

            int rs = stmt.executeUpdate(sql);

            if (rs != 0) {
                isSuccess = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return isSuccess;
    }

    /**
     * This performs GET all feedbacks and Display all feedbacks
     *
     * @return feedbacks (ArrayList<Feedback>)
     * @see #getFeedback(ArrayList, String)
     * @see DBConnectUtil#getConnection()
     */
    public static ArrayList<Feedback> allFeedback() {
        ArrayList<Feedback> feedbacks = new ArrayList<>();

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();
            String sql = "SELECT * FROM feedback ORDER BY feedbackID DESC";

            getFeedback(feedbacks, sql);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return feedbacks;
    }

    /**
     * This performs GET suggestion type feedbacks and Display them
     *
     * @return feedbacks (ArrayList<Feedback>)
     * @see #getFeedback(ArrayList, String)
     * @see DBConnectUtil#getConnection()
     */
    public static ArrayList<Feedback> suggestFeedback() {
        ArrayList<Feedback> feedbacks = new ArrayList<>();

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();
            String sql = "SELECT * FROM feedback WHERE type='Suggestion' ORDER BY feedbackID DESC";

            getFeedback(feedbacks, sql);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return feedbacks;
    }

    /**
     * This performs GET complain type feedbacks and Display them
     *
     * @return feedbacks (ArrayList<Feedback>)
     * @see #getFeedback(ArrayList, String)
     * @see DBConnectUtil#getConnection()
     */
    public static ArrayList<Feedback> complainFeedback() {
        ArrayList<Feedback> feedbacks = new ArrayList<>();

        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();
            String sql = "SELECT * FROM feedback WHERE type='Complain' ORDER BY feedbackID DESC";

            getFeedback(feedbacks, sql);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return feedbacks;
    }

    /**
     * This performs Delete feedback by feedbackID
     *
     * @param id id of the feedback
     * @see DBConnectUtil#getConnection()
     */
    public static void deleteFeedback(int id) {
        try {
            conn = DBConnectUtil.getConnection();
            stmt = conn.createStatement();

            String sql = "DELETE FROM feedback WHERE feedbackID='" + id + "'";
            stmt.executeUpdate(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * This is helper function for the allFeedback(), suggestFeedback() and complainFeedback()
     *
     * @param feedbacks ArrayList of the Feedback
     * @param sql       Query to perform
     * @throws SQLException Thrown when database access error occurs or this method is called on a closed connection
     * @see #allFeedback()
     * @see #suggestFeedback()
     * @see #complainFeedback()
     */
    private static void getFeedback(ArrayList<Feedback> feedbacks, String sql) throws SQLException {
        rs = stmt.executeQuery(sql);

        while (rs.next()) {
            Feedback feedback = new Feedback();
            feedback.setFeedbackID(rs.getInt(1));
            feedback.setEmail(rs.getString(2));
            feedback.setType(rs.getString(3));
            feedback.setComment(rs.getString(4));
            feedback.setCreated(rs.getString(5));

            feedbacks.add(feedback);
        }
    }
}
