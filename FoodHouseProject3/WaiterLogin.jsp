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
top:40px;}



</style>


</head>
<body>


<center><font face="broadway" size=6>WAITER LOGIN</font><br>
</center>

<div class="cus">
	<div class="txtBox">
	
	<form action='WaiterLoginForS.jsp' method='post'>
	

<font size=4>&nbsp;&nbsp;&nbsp;ID:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' name='waiterId' size=50><br><br><br>

<font size=4>Password:</font>&nbsp;&nbsp;&nbsp;&nbsp;<input type='password' name='waiterPwd' size=50><br><br><br>

<input type="submit" value="LOGIN" name="waiter_login"></form>

<form action='realIndex.html' method='post'><input type="submit" value="CANCEL" name="customer_login">
</form>
</div></div>

</body>
</html>
