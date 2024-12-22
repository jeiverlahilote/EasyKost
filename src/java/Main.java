import java.util.Date;

public class Main {
    public static void main(String[] args) {
        UserDA0 userDAO = new UserDA0();
        OrderDAO orderDAO = new OrderDAO();

        // Example: Authenticate user
        String email = "john.doe@example.com";
        String password = "john1234";

        if (userDAO.authenticate(email, password)) {
            System.out.println("Login successful for user: " + email);
        } else {
            System.out.println("Invalid credentials.");
        }

        // Example: Register new user
        boolean isRegistered = userDAO.register("Jane Doe", "jane.doe@example.com", "jane1234", "Customer");
        if (isRegistered) {
            System.out.println("User registered successfully.");
        }

        // Example: Create an order
        boolean isOrderCreated = orderDAO.createOrder(2, 1, new java.sql.Date(new Date().getTime()), 500000);
        if (isOrderCreated) {
            System.out.println("Order created successfully.");
        }

        // Example: Get order list for a customer
        orderDAO.getOrderListByCustomer(2).forEach(System.out::println);
    }
}
