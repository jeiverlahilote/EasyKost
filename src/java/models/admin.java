/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package models;

/**
 *
 * @author DELL
 */
import java.util.List;

public class admin extends user {
    private int adminId;

    public admin(int id, String username, String email, String password, int adminId) {
        super(id, username, email, password);
        this.adminId = adminId;
    }

    @Override
    public boolean login(String email, String password) {
        return email.equals(getEmail()) && password.equals(getPassword());
    }

    public void viewOrder(List<order> orders) {
        for (order order : orders) {
            System.out.println(order.viewOrderDetails());
        }
    }

    public void addService(service service) {
        System.out.println("Service added: " + service.getServiceDetails());
    }

    public void removeService(service service) {
        System.out.println("Service removed: " + service.getServiceDetails());
    }

    public void historyTransactions(List<payment> payments) {
        for (payment payment : payments) {
            System.out.println(payment.paymentDetails());
        }
    }

    public int getAdminId() { return adminId; }
}

