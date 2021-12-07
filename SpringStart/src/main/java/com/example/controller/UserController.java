package com.example.controller;



import java.io.IOException;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;



import com.example.dao.UserDao;
import com.example.model.User;



@Controller
public class UserController {

@Autowired
User user;

@Autowired
UserDao userDao;

String msg;

@RequestMapping("/home")
public String home(Model model) {
model.addAttribute("user", user);
model.addAttribute("msg", msg);
return "index";
}

@RequestMapping("validate")
public String validateUser(@ModelAttribute("user") User user, Model mv) {

User user1 = userDao.validateUser(user);
if(user1!=null) {
msg = "Login Successfull";
System.out.println("Login Successfull");
return "redirect:/getall";
}else {
System.out.println("Login Failed");
msg = "Login Failed";
return "redirect:/home";
}

}



@RequestMapping("/registeration")
public String showRegisterationForm(Model model) {
model.addAttribute("user", user);
//model.addAttribute("msg", msg);
return "registeration";
}

@RequestMapping("submitform")
public ModelAndView saveUser(@ModelAttribute("user") User user, ModelAndView mv, @RequestParam("pic") MultipartFile file) throws IOException {

System.out.println("In Save User");
byte[] userPic = file.getBytes();

user.setUserPic(userPic);
userDao.addUser(user);
mv.addObject("msg", "User Added Successfully");
//mv.addObject("user", user);
mv.setViewName("registeration");
return mv;
}

@RequestMapping("getall")
public ModelAndView getAllUser(ModelAndView mv) {
List<User> userList = userDao.getAllUser();
mv.addObject("users", userList);
mv.addObject("msg", msg);
mv.setViewName("viewusers");
return mv;
}

@RequestMapping("getuserform")
public String getUserForm() {
return "getuser";
}

@RequestMapping("getbyid/{id}")
public ModelAndView getById(@PathVariable int id, ModelAndView mv) {
User user = userDao.getUserById(id);
mv.addObject("user", user);
mv.setViewName("showuser");
return mv;
}

@RequestMapping("updateuser/{id}")
public String getUpdateUser(@PathVariable int id, Model m) {

User user = userDao.getUserById(id);
System.out.println("In Controller : "+user);
m.addAttribute("user", user);
return "updateform";

}

@RequestMapping("saveupdate")
public String saveUpdate(@ModelAttribute("user") User user) {
userDao.updateUser(user);
return "redirect:/getall";

}

@RequestMapping("deleteuser/{id}")
public String deleteUser(@PathVariable int id) {
userDao.deleteUser(id);
return "redirect:/getall";
}
}