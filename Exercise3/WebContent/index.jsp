<html>

<head>
<title>Form Validation Example</title>

<link href="css/style.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="js/test.js" djConfig="parseOnLoad:true">
			 </script>
			 <script type="text/javascript" src="js/test1.js" djConfig="parseOnLoad:true">
			 </script>
</head>

<body>
<h1>Sign up form</h1>
<form action="reg" 
name="ContactForm" onsubmit="return ValidateContactForm();">
    <p>Name: <input type="text" size="65" name="user"></p>
    <p>E-mail Address:  <input type="text" size="65" name="Email"></p>
    <p>Telephone: <input type="text" size="65" name="Telephone"><br>
        <input type="checkbox" name="DoNotCall" 
        onclick="EnableDisable(this);"> Please do not call me.</p>
        <p>Password: <input type="password" size="65" name="pass"/></p>
    <p>What can we help you with?
        <select type="text" value="" name="Subject">
            <option>  </option>
            <option>Customer Service</option>
            <option>Question</option>
            <option>Comment</option>
            <option>Consultation</option>
            <option>Other</option>
        </select>
        </p>
    <p>Comments:  <textarea cols="55" name="Comment">  </textarea></p>
    <p><input type="submit" value="Send" name="submit">
    <input type="reset" value="Reset" name="reset">
    <input type="button" value="LogIn" name="log" onclick="view.jsp"></p>
</form>
<div id="icon"></div>
<div id="img"><img src="Images/bird.png"/></div>

</body>

</html>