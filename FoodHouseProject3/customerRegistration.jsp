<html>
<head>
<style>

.cus{
text-align:center;
position:relative;
background-color:#d3d3d3;
height:70%;
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

<center><font face="broadway" size=6>Customer Registration</font><br><br></center>

<div class="cus">
	<div class="txtBox">
<form action='customerRegBtnAction1.jsp' method='post' >
<font size=4>FirstName:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type='text' value='' name="c_fname" size=40><br><br>

<font size=4>LastName:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type='text' value='' name="c_lname" size=40><br><br>

<font size=4>PhNumber:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type='text' value='' name="c_ph" size=40><br><br>


<font size=4>Email:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type='text' value='' name="c_emailadr" size=40><br><br>

<font size=4>Address:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type='text' value='' name="c_adr" size=40><br><br>

<font size=4>Password:</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type='password' value='' name="c_pwd" size=40><br>
<br><br>


<input type='submit' value='Register' name="register">
    

</form>

<form action='customerLogin.jsp' method='post'><input type="submit" value="Cancel" name=""></form>
</div>
</div>
</body>
</html>