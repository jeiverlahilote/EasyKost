package models;

import java.util.Date;

public class payment {
    // Common attributes
    private int paymentId;
    private String userName;
    private String userAddress;
    private String serviceSelected;
    private String paymentMethod;
    private double amount;
    private Date paymentDate;
    private String status; // Pending, Completed, Cancelled

    // Constructor
    public payment(int paymentId, String userName, String userAddress, String serviceSelected,
                   String paymentMethod, double amount, Date paymentDate, String status) {
        this.paymentId = paymentId;
        this.userName = userName;
        this.userAddress = userAddress;
        this.serviceSelected = serviceSelected;
        this.paymentMethod = paymentMethod;
        this.amount = amount;
        this.paymentDate = paymentDate;
        this.status = status;
    }

    // User methods
    public String getPaymentDetails() {
        return "Payment ID: " + paymentId + 
               "\nUser Name: " + userName + 
               "\nService: " + serviceSelected + 
               "\nAmount: Rp " + amount + 
               "\nStatus: " + status;
    }

    // Admin methods
    public void updateStatus(String newStatus) {
        this.status = newStatus;
    }

    public void printAdminPaymentDetails() {
        System.out.println("Payment ID: " + paymentId);
        System.out.println("User Name: " + userName);
        System.out.println("Service: " + serviceSelected);
        System.out.println("Payment Method: " + paymentMethod);
        System.out.println("Amount: Rp " + amount);
        System.out.println("Date: " + paymentDate);
        System.out.println("Status: " + status);
    }

    // Getters and Setters
    public int getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(int paymentId) {
        this.paymentId = paymentId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserAddress() {
        return userAddress;
    }

    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    public String getServiceSelected() {
        return serviceSelected;
    }

    public void setServiceSelected(String serviceSelected) {
        this.serviceSelected = serviceSelected;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
