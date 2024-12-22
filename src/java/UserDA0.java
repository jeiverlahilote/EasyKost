import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDA0 {
    public boolean authenticate(String email, String password) {
        String query = "SELECT * FROM User WHERE email = ? AND password = MD5(?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {

            stmt.setString(1, email);
            stmt.setString(2, password);

            try (ResultSet rs = stmt.executeQuery()) {
                return rs.next(); // True if user exists
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public boolean register(String username, String email, String password, String role) {
    String query = "INSERT INTO User (username, email, password, role) VALUES (?, ?, MD5(?), ?)";
    try (Connection conn = DBConnection.getConnection();
         PreparedStatement stmt = conn.prepareStatement(query)) {

        stmt.setString(1, username);
        stmt.setString(2, email);
        stmt.setString(3, password);
        stmt.setString(4, role);

        return stmt.executeUpdate() > 0; // True if insert successful
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return false;
}

}
