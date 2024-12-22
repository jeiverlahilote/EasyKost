package models;

public abstract class service implements Notification {
    protected int serviceId;
    protected String serviceName;
    protected String description;
    protected double price;
    protected double duration;

    public service(int serviceId, String serviceName, String description, double price, double duration) {
        this.serviceId = serviceId;
        this.serviceName = serviceName;
        this.description = description;
        this.price = price;
        this.duration = duration;
    }

    public abstract String getServiceDetails();

    public double getPrice() {
        return price;
    }

    @Override
    public void getOrderNotification() {
        System.out.println("Service Notification: " + serviceName + " scheduled.");
    }
}
