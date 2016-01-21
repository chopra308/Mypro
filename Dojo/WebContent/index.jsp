<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#try{
 position: absolute;
    height: 200px;
    width: 200px;
	background-color: #ddd;
	border: 1px #eee;
	padding: 5px;
	margin:15px 0px 0px 250px;
}}</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


  	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" djConfig="parseOnLoad:true, isDebug:false"></script>
  	  
  	<script type="text/javascript">
dojo.ready(function(){
	var box=dojo.byId("try");
	var one=dojo.byId("b1");
	var two=dojo.byId("b2");
	dojo.connect(one, "onclick", function(evt){
		dojo.animateProperty({
			node: box,
			properties: {
				top: { start: 100, end: 150 },
				left: 0,
				opacity: { start: 1, end: 0 }
			},
			duration: 800
		}).play();
		
	});
	dojo.connect(two, "onclick", function(evt){
		dojo.animateProperty({
			node: box,
			properties: { top: 100, left: 300, opacity: 1 }
		}).play();
	});
});</script>
</head>
<body>
<h1>Animate with Dojo</h1>
<input type="button" id="b1" value="Drop out block"/>
<input type="button" id="b2" value="return out block"/>
<div id="try"></div>
</body>
</html>