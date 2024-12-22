package models;

public class GeneralCleaning extends service {
    private int time;

    public GeneralCleaning(int serviceId, String serviceName, String description, double price, double duration, int time) {
        super(serviceId, serviceName, description, price, duration);
        this.time = time;
    }

    @Override
    public String getServiceDetails() {
        return String.format("Service ID: %d, Name: %s, Description: %s, Price: %.2f, Duration: %.2f hours, Time: %d minutes",
                             serviceId, serviceName, description, price, duration, time);
    }

    @Override
    public void getOrderNotification() {
        System.out.println("GeneralCleaning Notification: Scheduled for " + time + " minutes.");
    }
}

