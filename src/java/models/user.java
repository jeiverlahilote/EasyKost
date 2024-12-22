package models;

public abstract class user {
    private int id;
    private String username;
    private String email;
    private String password;

    public user(int id, String username, String email, String password) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
    }

    public abstract boolean login(String email, String password);
    public void logout() {
        System.out.println("Logout successful.");
    }
    public void register(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
    }

    // Getter & Setter
    public int getId() { 
        return id; 
    }
    public void setId(int id) { 
        this.id = id; 
    }
    public String getUsername() { 
        return username; 
    }
    public void setUsername(String username) { 
        this.username = username; 
    }
    public String getEmail() { 
        return email; 
    }
    public void setEmail(String email) { 
        this.email = email; 
    }
    public String getPassword() { 
        return password; 
    }
    public void setPassword(String password) { 
        this.password = password; 
    }
}

