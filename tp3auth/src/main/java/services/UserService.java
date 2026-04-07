package services;

import dao.UserDao;
import model.User;

public class UserService {

    private UserDao userDao = new UserDao();

    public boolean authenticate(User user) {
        return userDao.checkUser(user);
    }
}