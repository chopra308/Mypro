<%@taglib uri="/struts-tags" prefix="html"%>
<html>
<head>
<title>Insert title here</title>
<link href="css/style.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/test.js" djConfig="parseOnLoad:true">
			 </script>
</head>
<body>

<div id="login">
<h1><strong>Welcome.</strong> Please login.</h1>
<form action="reg" name="ContactForm">
<fieldset>
<p class="a">First Name:
<html:textfield name="firstName"  /><br><br></p>
<p class="a">Last Name:
<html:textfield name="lastName"  /><br><br></p>
<p class="a"><html:textfield name="name"   label="Username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' "/></p>
<p class="a"><html:password name="pass"  label="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "/></p>
<p class="a">Email:
<html:textfield name="email" /><br><br></p>
<div id="errorBox"></div>
<p id ="phone" class="a" >Phone No:
<html:textfield name="phone"  /><br><br></p>

<p><a href="#">Forgot Password?</a></p>

<p><input type="submit" value="Login" onsubmit="fun"></p>
</fieldset>
</form>
<p><span class="btn-round">or</span></p>
<p>
<a class="facebook-before"></a>
<button class="facebook">Login Using Facbook</button>
</p>
<p>
<a class="twitter-before"></a>
<button class="twitter">Login Using Twitter</button>
</p>
</div> <!-- end login -->
</body>

</html>