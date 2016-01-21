<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration link</title>
<script type="text/javscript">
myFunction(){
 document.getElementById("myButton").onclick = function () {
if(
        location.href = "validate.java";
    };
}
</script>
</head>
<body>
<form method="post" action="validate">
Name: <input type="text" name="username"></input><br><br>
email:<input type="email" name="email"><br><br>
<input type="radio" name="sex" value="male" checked> Male
<br>
<input type="radio" name="sex" value="female"> Female
<br>
  Birthday:
  <input type="date" name="bday"><br>
  password: <input type="password" name="pass">
<input id="myButton" type="submit" value="submit"></form>


</body>
</html>