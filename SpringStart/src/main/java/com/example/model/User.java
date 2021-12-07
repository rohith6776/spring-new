package com.example.model;

import java.sql.Date;
import java.util.Arrays;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import org.apache.tomcat.util.codec.binary.Base64;
import org.springframework.stereotype.Component;




@Entity
@Table(name = "user")
@Component
public class User {



@Id //Specifies the primary key of an entity
@GeneratedValue(strategy = GenerationType.AUTO) //
private Integer id;
private String fullName;
//@Column(name = "uname")
private String uName;
private String gender;
private Integer age;
private Date dob;
private String qualification;
private String[] speak;
private String city;
private String password;
@Lob
private byte[] userPic;
public User() {
super();
// TODO Auto-generated constructor stub
}





public User(Integer id, String fullName, String uName, String gender, Integer age, Date dob, String qualification,
String[] speak, String city, String password) {
super();
this.id = id;
this.fullName = fullName;
this.uName = uName;
this.gender = gender;
this.age = age;
this.dob = dob;
this.qualification = qualification;
this.speak = speak;
this.city = city;
this.password = password;
}





public User(Integer id, String fullName, String uName, String gender, Integer age, Date dob, String qualification,
String[] speak, String city, String password, byte[] userPic) {
super();
this.id = id;
this.fullName = fullName;
this.uName = uName;
this.gender = gender;
this.age = age;
this.dob = dob;
this.qualification = qualification;
this.speak = speak;
this.city = city;
this.password = password;
this.userPic = userPic;
}





public Integer getId() {
return id;
}



public void setId(Integer id) {
this.id = id;
}



public String getFullName() {
return fullName;
}



public void setFullName(String fullName) {
this.fullName = fullName;
}



public String getuName() {
return uName;
}



public void setuName(String uName) {
this.uName = uName;
}



public String getGender() {
return gender;
}



public void setGender(String gender) {
this.gender = gender;
}



public byte[] getUserPic() {
return userPic;
}



public void setUserPic(byte[] userPic) {
this.userPic = userPic;
}



public Integer getAge() {
return age;
}



public void setAge(Integer age) {
this.age = age;
}



public Date getDob() {
return dob;
}



public void setDob(Date dob) {
this.dob = dob;
}



public String getQualification() {
return qualification;
}



public void setQualification(String qualification) {
this.qualification = qualification;
}



public String[] getSpeak() {
return speak;
}



public void setSpeak(String[] speak) {
this.speak = speak;
}



public String getCity() {
return city;
}



public void setCity(String city) {
this.city = city;
}



public String getPassword() {
return password;
}



public void setPassword(String password) {
this.password = password;
}



public String getUserPicture() {
return Base64.encodeBase64String(userPic);
}



@Override
public String toString() {
return "User [id=" + id + ", fullName=" + fullName + ", uName=" + uName + ", gender=" + gender + ", age=" + age
+ ", dob=" + dob + ", qualification=" + qualification + ", speak=" + Arrays.toString(speak) + ", city="
+ city + ", password=" + password + "]";
}




}