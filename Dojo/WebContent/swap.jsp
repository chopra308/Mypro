<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#box1{
 position: absolute;
    height: 200px;
    width: 200px;
	background-color: #ddd;
	border: 1px #eee;
	padding: 5px;
	margin:25px 0px 0px 50px;
}
#box2{ position: absolute;
    height: 200px;
    width: 200px;
	background-color: blue;
	border: 1px #eee;
	padding: 5px;
	margin:25px 0px 0px 400px;
}
</style>

<title>Insert title here</title>
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" djConfig="parseOnLoad:true, isDebug:false"></script>
<script type="text/javascript"> 
dojo.ready(function(){
	var but=dojo.byId("button");
	var a=dojo.byId("box1");
	var b=dojo.byId("box2");
	dojo.require("dojo.fx");
	dojo.connect(but,"onclick",function(evt){
		dojo.fx.wipeOut({
			node:a,
			easing : function(x) { return Math.pow(Math.sin(4*x),2);   },
            duration : 5000
		}).play();
		dojo.slideTo({
			node:b,
			properties:{
				right:200
			},
			duration: 800
		
		}).play();
		
	});
});
</script>

</head>
<body>
<h1>Swap these by clicking the below button</h1>
<input type="button" value="swap" id="button"></input>
<div id="box1">HEy Iam box1</div>
<div id="box2">HEy Iam box2</div>
</body>
</html>