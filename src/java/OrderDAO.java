import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO {
    public boolean createOrder(int customerId, int serviceId, Date scheduleDate, double totalPrice) {
        String query = "INSERT INTO `Order` (customer_id, service_id, schedule_date, status, total_price) VALUES (?, ?, ?, 'Pending', ?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, customerId);
            stmt.setInt(2, serviceId);
            stmt.setDate(3, scheduleDate);
            stmt.setDouble(4, totalPrice);

            return stmt.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<String> getOrderListByCustomer(int customerId) {
        String query = "SELECT o.id, s.service_name, o.schedule_date, o.status, o.total_price " +
                       "FROM `Order` o JOIN Service s ON o.service_id = s.id WHERE o.customer_id = ?";
        List<String> orders = new ArrayList<>();

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setInt(1, customerId);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    orders.add("Order ID: " + rs.getInt("id") +
                               ", Service: " + rs.getString("service_name") +
                               ", Date: " + rs.getDate("schedule_date") +
                               ", Status: " + rs.getString("status") +
                               ", Price: " + rs.getDouble("total_price"));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return orders;
    }
}
