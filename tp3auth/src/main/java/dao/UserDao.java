package dao;

import java.util.HashMap;
import java.util.Map;

import model.User;

public class UserDao {

    // Dictionnaire en mémoire : username -> password
    private static Map<String, String> users = new HashMap<>();

    static {
        // utilisateur par défaut
        users.put("admin", "1234");
    }

    public boolean checkUser(User user) {
        return users.containsKey(user.getUsername()) &&
               users.get(user.getUsername()).equals(user.getPassword());
    }

    public boolean userExists(String username) {
        return users.containsKey(username);
    }

    public boolean addUser(User user) {
        if (users.containsKey(user.getUsername())) {
            return false; // utilisateur existe déjà
        }
        users.put(user.getUsername(), user.getPassword());
        return true;
    }
}