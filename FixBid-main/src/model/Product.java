package model;

public class Product {
    private int pid;
    private String pName;
    private String expDate;
    private int startPrice;
    private String description;
    private String productType;
    private int vendorID;


    //Product Constructor?????

    //Product id
    public int getPid() { return pid; }

    public void setPid(int pid) { this.pid = pid; }

    //Product Name
    public String getpName() { return pName; }

    public void setpName(String pName) { this.pName = pName; }

    //Bid expiry date
    public String getExpDate() { return expDate; }

    public void setExpDate(String expDate) { this.expDate = expDate; }

    //Start Price
    public int getStartPrice() { return startPrice; }

    public void setStartPrice(int startPrice) { this.startPrice = startPrice; }

    //Description
    public String getDescription() { return description; }

    public void setDescription(String description) { this.description = description; }

    //Product Type
    public String getProductType() { return productType; }

    public void setProductType(String productType) { this.productType = productType; }

    //vendorID
    public int getVendorID() { return vendorID; }

    public void setVendorID(int vendorID) { this.vendorID = vendorID; }
}
