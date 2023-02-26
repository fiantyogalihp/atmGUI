/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package atmgui;

/**
 *
 * @author fiyuu
 */
public class session {
    private static session instance;
    private String userId;

    private session() {}

    public static session getInstance() {
        if (instance == null) {
            instance = new session();
        }
        return instance;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}

