package model;


/**
 *  This is Admin model class
 */
public class Admin {
    private int adminId;
    private String firstName;
    private String lastName;
    private String email;
    private String phoneNo;
    private String street;
    private String city;
    private String state;
    private int zip;
    private String profilePic;

    /**
     *
     * @return adminId (int)
     */
    public int getAdminId() {
        return adminId;
    }

    /**
     *
     * @param adminId the adminId to set
     */
    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    /**
     *
     * @return firstName (String)
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     *
     * @param firstName the first name to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     *
     * @return lastName (String)
     */
    public String getLastName() {
        return lastName;
    }

    /**
     *
     * @param lastName the last name to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
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
     * @return phoneNo (String)
     */
    public String getPhoneNo() {
        return phoneNo;
    }

    /**
     *
     * @param phoneNo the phone number to set
     */
    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    /**
     *
     * @return street (String)
     */
    public String getStreet() {
        return street;
    }

    /**
     *
     * @param street the street to set
     */
    public void setStreet(String street) {
        this.street = street;
    }

    /**
     *
     * @return city (String)
     */
    public String getCity() {
        return city;
    }

    /**
     *
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     *
     * @return state (String)
     */
    public String getState() {
        return state;
    }

    /**
     *
     * @param state the state to set
     */
    public void setState(String state) {
        this.state = state;
    }

    /**
     *
     * @return zip (int)
     */
    public int getZip() {
        return zip;
    }

    /**
     *
     * @param zip the ZIP code to set
     */
    public void setZip(int zip) {
        this.zip = zip;
    }

    /**
     *
     * @return profilePic (String URL)
     */
    public String getProfilePic() {
        return profilePic;
    }

    /**
     *
     * @param profilePic the profile photo URL to set
     */
    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }
}
