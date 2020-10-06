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
<center><font face="broadway" size=6>ADMIN LOGIN</font><br>
</center>
<div class="cus">
	<div class="txtBox">
<form action='AdminLoginForS.jsp' method='post'>


<font size=4>&nbsp;&nbsp;&nbsp;ID:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' name='id' size=50><br><br><br>

<font size=4>Password:</font>&nbsp;&nbsp;&nbsp;&nbsp;<input type='password' name='pwd' size=50><br><br><br>

<input type="submit" value="LOG IN" name="admin_login"></form>
<form action='realIndex.html' method='post'><input type="submit" value="CANCEL" name="admin_login"></form>

</div>
</div>
</body>
</html>
