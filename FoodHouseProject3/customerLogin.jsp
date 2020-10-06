<html>
<head>
<style>

.cus{
text-align:center;
position:relative;
background-color:#d3d3d3;
height:50%;
width:50%;
left:300px;
top:30px;}

.txtBox{
position:absolute;
background-color:#d3d3d3;
left:87px;
top:20px;}



</style></head>

<body>
<center><font face="broadway" size=6>CUSTOMER LOGIN</font><br>
</center>
<div class="cus">
	<div class="txtBox">
<form action='CustomerLoginForS.jsp' method='post'>

<font size=4>ID:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type='text' name='c_id' size=50><br><br><br>

<font size=4>Password:&nbsp;&nbsp;&nbsp;&nbsp;</font><input type='password' name='c_pwd' size=50><br>

<br><br>
<input type="submit" value="LOG IN" name="customer_login"></form>
<form action='realIndex.html' method='post'><input type="submit" value="CANCEL" name="customer_login"></form>

<br>

<a href="customerRegistration.jsp" > Create account?</a>


	</div>


</div>




</body>
</html>