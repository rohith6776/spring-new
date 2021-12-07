<%@include file="head.jsp" %>



<div class="row">
<div class="col"></div>
<div class="col">



<div class="card center" style="width: auto;">
<div class="card-body">
<h1 align="center">
<b>Login Form</b>
</h1>
<form:form action="validate" modelAttribute="user">
<table align="center">
<tr>
<td>User Name :</td>
<td><form:input path="uName" /></td>
</tr>



<tr>
<td>Password :</td>
<td><form:password path="password" /></td>
</tr>



<tr>
<td><button type="submit" class="btn btn-dark">&nbsp;&nbsp;Login&nbsp;&nbsp;</button></td>
<td align="center">
<button type="reset" class="btn btn-dark">&nbsp;&nbsp;clear&nbsp;&nbsp;</button>
</td>
</tr>
<tr>
<td colspan="2" align="center"><br />
<h5>
New User<a href="registeration"> Register Here<br /></a>
</h5></td>
</tr>
<tr>
<td colspan="2" align="center"><h3 style="color: red">${msg}</h3></td>
</tr>
</table>
</form:form>




</div>
</div>
</div>
<div class="col"></div>
</div>
</body>
</html>