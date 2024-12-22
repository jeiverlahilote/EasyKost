package models;
public class order {
    private int orderId;
    private customer customer;
    private service service;
    private String scheduleDate;
    private String status;
    private double totalHarga;

    public order(int orderId, customer customer, service service, String scheduleDate, String status, double totalHarga) {
        this.orderId = orderId;
        this.customer = customer;
        this.service = service;
        this.scheduleDate = scheduleDate;
        this.status = status;
        this.totalHarga = totalHarga;
    }

    public void createOrder() {
        System.out.println("Order created for customer: " + customer.getCustomerName());
    }

    public boolean confirmOrder() {
        this.status = "Confirmed";
        return true;
    }

    public boolean cancelOrder() {
        this.status = "Cancelled";
        return true;
    }

    public String viewOrderDetails() {
        return "Order ID: " + orderId + ", Customer: " + customer.getCustomerName() +
               ", Service: " + service.getServiceDetails() + ", Status: " + status;
    }

    public int getOrderId() { 
        return orderId; 
    }
}

