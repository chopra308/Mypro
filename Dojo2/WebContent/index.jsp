<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
		<head>
			<title>My Dojo</title>
 			<link href="css/test.css" type="text/css" rel="stylesheet"/>
    		<link href="js/dijit/themes/tundra/tundra.css" type="text/css" rel="stylesheet"/>
  
  			<script type="text/javascript" src="js/dojo/dojo.js" djConfig="parseOnLoad:true">
			 </script>
    

			<script type="text/javascript">
				dojo.require("dijit.form.DateTextBox");
				alert("Hi Guys Welcome to Dojo!")
					dojo.addOnLoad(function(){
					var k=dojo.byId("box1");
					dojo.connect(k,"onclick",function(evt){
					dojo.fadeOut({node:k}).play();
					});
				});
			</script>
		</head>
		<body class="tundra">
		<div id="box1">Click here to proceed</div> 	
				<br>
			Choose a date(Click inside box for calender):
				<br>
			<input dojoType="dijit.form.DateTextBox" required="true" />
		</body>
	</html>
	