package model;

public class checkout {
    private int checkoutID;
    private String fullname;
    private String email;
    private String address;
    private String city;
    private String zip;
    private String nameOnCard;
    private String creditCardNb;
    private String expMonth;
    private String expYear;
    private String cvv;

    public int getCheckoutID() {
        return checkoutID;
    }

    public void setCheckoutID(int checkoutID) {
        this.checkoutID= checkoutID;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() { return city; }

    public void setCity(String city) {
        this.city = city;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getNameOnCard() {
        return nameOnCard;
    }

    public void setNameOnCard(String nameOnCard) {
        this.nameOnCard = nameOnCard;
    }

    public String getCreditCardNb() {
        return creditCardNb;
    }

    public void setCreditCardNb(String creditCardNb) {
        this.creditCardNb= creditCardNb;
    }

    public String getExpMonth() {
        return  expMonth;
    }

    public void setExpMonth(String  expMonth) {
        this.expMonth =  expMonth;
    }

    public String getExpYear() {
        return  expYear;
    }

    public void setExpYear(String  expYear) {
        this.expYear =  expYear;
    }

    public String getCvv() {
        return  cvv;
    }

    public void setCvv(String  cvv) {
        this.cvv =  cvv;
    }




}


