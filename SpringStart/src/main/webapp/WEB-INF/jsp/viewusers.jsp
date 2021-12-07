<%@include file="head.jsp"%>



<div class="container">
<div class="row">
<div class="col">

<div class='row row-cols-4'>



<c:forEach items="${users}" var="u">



<div class='col'>
<div class='card' style='width: auto;'>
<img alt="No Photo" height=200
" src="data:image/jpg;base64,${u.userPicture}"
class="rounded-circle" />




<div class='card-body'>
<table align='center'>
<tr>
<td>ID</td>
<td>: <a href="getbyid/${u.id}">${u.id}</a></td>
</tr>
<tr>
<td>Full Name</td>
<td>: ${u.fullName}</td>
</tr>
<tr>
<td>User name</td>
<td>: ${u.uName}</td>
</tr>
<tr>
<td>Gender</td>
<td>: ${u.gender}</td>
</tr>
<tr>
<td>Age</td>
<td>: ${u.age}</td>
</tr>
<tr>
<td>DOB</td>
<td>: ${u.dob}</td>
</tr>
<tr>
<td>Qualification</td>
<td>: ${u.qualification}</td>
</tr>
<tr>
<td>Speak</td>
<td>: <c:forEach var="lang" items="${u.speak}">
${lang}
</c:forEach></td>
</tr>
<tr>
<td>City</td>
<td>: ${u.city}</td>
</tr>




<tr>
<td><a href="updateuser/${u.id}">
<button type='button' name='button' class='btn btn-dark'>Edit</button>
</a></td>
<td><a href="deleteuser/${u.id}">
<button type='button' name='button' class='btn btn-dark'>Delete</button>
</a></td>
</tr>
</table>
</div>
</div>
</div>
</c:forEach>
</div>
</div>
</div>
</div>
</body>
</html>