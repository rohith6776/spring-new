<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
rel="stylesheet" />
<link href="/css/styles.css" rel="stylesheet" />
<title>Users</title>
<style>
html {
margin: 0;
height: 100%;
}



.bg {
font-family: "Times New Roman", Times, serif;
/* The image used */
background-image: url("img/bg1.jfif");
/* Full height */
height: 100%;
/* Center and scale the image nicely */
background-position: center;
background-repeat: repeat;
background-size: cover;
}



.title {
background-color: black;
color: white;
}



/* Menu bar styles */



/* Fixed sidenav, full height */
.sidenav {
display: none;
height: 100%;
width: 200px;
position: fixed;
z-index: 1;
top: 0;
left: 0;
background-color: #111;
overflow-x: hidden;
padding-top: 60px;
}



/* Style the sidenav links and the dropdown button */
.sidenav a, .dropdown-btn {
padding: 8px 8px 8px 32px;
text-decoration: none;
font-size: 25px;
color: #818181;
display: block;
border: none;
background: none;
width: 100%;
text-align: left;
cursor: pointer;
outline: none;
}



/* On mouse-over */
.sidenav a:hover, .dropdown-btn:hover {
color: #f1f1f1;
}



.sidenav .closebtn {
position: absolute;
top: 0;
right: 25px;
font-size: 36px;
margin-left: 50px;
}



/* Add an active class to the active dropdown button */
.active {
background-color: black;
color: white;
}



/* Dropdown container*/
.dropdown-container {
display: none;
background-color: #262626;
padding-left: 8px;
}



/* Optional: Style the caret down icon */
.fa-caret-down {
float: right;
padding-right: 8px;
}



/* Some media queries for responsiveness */
@media screen and (max-height: 450px) {
.sidenav {
padding-top: 15px;
}
.sidenav a {
font-size: 18px;
}
}



/* End of menubar style */
.center {
margin: auto;
width: 50%;
border: 3px black;
padding: 10px;
}



#black {
background-color: black;
height: 60px;
color: white;
}



.btn {
background-color: black;
}
</style>



</head>
<body class="bg">




<div id="mySidenav" class="sidenav">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>



<a href="home">Login</a>
<a href="registeration">Register</a> <a
href="">All users</a> <a
href="">Profile</a> <a
href="home">Logout</a>
</div>



<div class=" row title" id="black">
<div class="col-1">
<span style="font-size: 40px; cursor: pointer" onclick="openNav()">&#9776;</span>
</div>
<div class="col-11">
<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;UNIQUE
USERS</h1>
</div>
</div>



<script>
function openNav() {
document.getElementById("mySidenav").style.display = "block";
}



function closeNav() {
document.getElementById("mySidenav").style.display = "none";
}



/* Loop through all dropdown buttons to toggle between hiding and showing its dropdown content - This allows the user to have multiple dropdowns without any conflict */
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;



for (i = 0; i < dropdown.length; i++) {
dropdown[i].addEventListener("click", function() {
this.classList.toggle("active");
var dropdownContent = this.nextElementSibling;
if (dropdownContent.style.display === "block") {
dropdownContent.style.display = "none";
} else {
dropdownContent.style.display = "block";
}
});
}
</script>
<br />