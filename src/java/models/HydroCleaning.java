
package models;

public class HydroCleaning extends service {
    private String item;

    public HydroCleaning(int serviceId, String serviceName, String description, double price, double duration, String item) {
        super(serviceId, serviceName, description, price, duration);
        this.item = item;
    }

    @Override
    public String getServiceDetails() {
        return String.format("Service ID: %d, Name: %s, Description: %s, Price: %.2f, Duration: %.2f hours, Item: %s",
                             serviceId, serviceName, description, price, duration, item);
    }

    @Override
    public void getOrderNotification() {
        System.out.println("HydroCleaning Notification: Your cleaning service with " + item + " is confirmed!");
    }
}
