package model;

/**
 * This is Feedback model class
 */
public class Feedback {
    private int feedbackID;
    private String email;
    private String type;
    private String comment;
    private String created;

    /**
     *
     * @return feedbackID (int)
     */
    public int getFeedbackID() {
        return feedbackID;
    }

    /**
     *
     * @param feedbackID the feedbackID to set
     */
    public void setFeedbackID(int feedbackID) {
        this.feedbackID = feedbackID;
    }

    /**
     *
     * @return email (String)
     */
    public String getEmail() {
        return email;
    }

    /**
     *
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     *
     * @return type of feedback (String)
     */
    public String getType() {
        return type;
    }

    /**
     *
     * @param type the feedback type (Suggestions / Complain) to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     *
     * @return feedback comment (String)
     */
    public String getComment() {
        return comment;
    }

    /**
     *
     * @param comment the feedback comment to set
     */
    public void setComment(String comment) {
        this.comment = comment;
    }

    /**
     *
     * @return created date and time (String)
     */
    public String getCreated() {
        return created;
    }

    /**
     *
     * @param created feedback submitted date and time to set
     */
    public void setCreated(String created) {
        this.created = created;
    }

    @Override
    public String toString() {
        return "Feedback{" +
                "feedbackID=" + feedbackID +
                ", email='" + email + '\'' +
                ", type='" + type + '\'' +
                ", comment='" + comment + '\'' +
                ", created='" + created + '\'' +
                '}';
    }
}
