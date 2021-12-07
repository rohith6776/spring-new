package com.example.dao;



import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.example.repository.UserRepository;
import com.example.model.User;



@Service
public class UserDaoImpl implements UserDao {



@Autowired
UserRepository UserRepository;

@Override
public void addUser(User user) {
// TODO Auto-generated method stub
UserRepository.save(user);
}



@Override
public List<User> getAllUser() {

List<User> userList = UserRepository.findAll();
return userList;
}



@Override
public User getUserById(int id) {
// TODO Auto-generated method stub
User user = UserRepository.getById(id);
return user;
}



@Override
public void updateUser(User user) {
// TODO Auto-generated method stub
UserRepository.save(user);



}



@Override
public void deleteUser(int userId) {
// TODO Auto-generated method stub
UserRepository.deleteById(userId);
}



@Override
public User validateUser(User user) {
// TODO Auto-generated method stub
User user1 = UserRepository.findByLoginData(user.getuName(), user.getPassword());
return user1;
}



}