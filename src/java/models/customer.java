package models;
import java.util.List;
public class customer extends user {
    private int customerId;
    private String customerName;
    private String address;

    public customer(int id, String username, String email, String password, int customerId, String customerName, String address) {
        super(id, username, email, password);
        this.customerId = customerId;
        this.customerName = customerName;
        this.address = address;
    }

    @Override
    public boolean login(String email, String password) {
        return email.equals(getEmail()) && password.equals(getPassword());
    }

    public void updateProfileDetails(String customerName, String address) {
        this.customerName = customerName;
        this.address = address;
        System.out.println("Profile updated.");
    }

    public void viewProfile() {
        System.out.println("Name: " + customerName + ", Address: " + address);
    }

    public void viewOrderHistory(List<order> orders) {
        for (order order : orders) {
            System.out.println(order.viewOrderDetails());
        }
    }
    public int getCustomerId() { 
        return customerId; 
    }
    public String getCustomerName() { 
        return customerName; 
    }
    public String getAddress() { 
        return address; 
    }
}

