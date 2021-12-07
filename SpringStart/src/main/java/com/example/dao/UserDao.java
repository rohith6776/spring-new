package com.example.dao;

import java.util.List;



import org.springframework.stereotype.Service;



import com.example.model.User;



@Service
public interface UserDao {



public void addUser(User user);
public List<User> getAllUser();
public User getUserById(int id);
public void updateUser(User user);
public void deleteUser(int userId);
public User validateUser(User user);
}
