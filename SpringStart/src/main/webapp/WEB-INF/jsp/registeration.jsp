<%@include file="head.jsp" %>



<div class="row">
<div class="col"></div>
<div class="col">



<div class="card center" style="width: auto;">
<div class="card-body">
<center><h3 style="color: green">${msg}</h3></center>
<h1 align="center">
<b>Registration</b>
</h1>
<form:form action="submitform" modelAttribute="user" enctype="multipart/form-data">
<table align="center">
<tr>
<td>Full Name :</td>
<td><form:input path="fullName" /></td>
</tr>
<tr>
<td>User Name :</td>
<td><form:input path="uName" /></td>
</tr>
<tr>
<td>Gender :</td>
<td><form:radiobutton path="gender" value="Male" />Male
<form:radiobutton path="gender" value="Female" />Female</td>
</tr>



<tr>
<td>User Age :</td>
<td><form:input path="age" /></td>
</tr>
<tr>
<td>DateOfBirth :</td>
<td><form:input path="dob" type="Date" /></td>
</tr>
<tr>
<td>Qualification:</td>
<td><form:select path="qualification">
<form:option value="BTech" label="BTech" />
<form:option value="MTech" label="MTech" />
<form:option value="MCA" label="MCA" />
</form:select>
</td>
</tr>
<tr>
<td>Speaking</td>
<td><form:checkbox path="speak" value="English" /> English
<form:checkbox path="speak" value="Hindi" /> Hindi
<form:checkbox path="speak" value="Telugu" /> Telugu</td>
</tr>
<tr>
<td>City :</td>
<td><form:input path="city" /></td>
</tr>
<tr>
<td>Password :</td>
<td><form:password path="password" /></td>
</tr>
<tr>
<td>Photo :</td>
<td><input type="file" name="pic"></td>
</tr>
<tr>
<td><button type="submit" class="btn btn-dark">&nbsp;&nbsp;Register&nbsp;&nbsp;</button></td>
<td align="center">
<button type="reset" class="btn btn-dark">&nbsp;&nbsp;clear&nbsp;&nbsp;</button>
</td>
</tr>
<tr>
<td colspan="2" align="center"><br />
<h5>
Already Registered? <a href="home"> Login Here<br /></a>
</h5></td>
</tr>
</table>
</form:form>



</div>
</div>
</div>
<div class="col"></div>
</div>
<br/>
</body>
</html>