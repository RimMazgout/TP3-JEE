package dao;

import model.User;

public class UserDao {

    public boolean checkUser(User user) {
        return "admin".equals(user.getUsername()) && "1234".equals(user.getPassword());
    }
}