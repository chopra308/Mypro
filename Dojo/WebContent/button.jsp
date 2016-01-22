<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" djConfig="parseOnLoad:true, isDebug:false"></script>
 <script type="dojo/on" data-dojo-event="click">
require(["dijit/registry"], function(registry){
    var button1 = registry.byId("button1");
    button1.on("click", function(){
        window.alert("I was clicked!");
    });
    button1.set("label", "I'm enabled");
    button1.set("disabled", false);
});
</script>
</head>
<body>
<button type="button" id="button1" disabled="disabled"
        data-dojo-type="dijit/form/Button">
    <span>I'm disabled</span>
</button>
<button type="button" id="button2" data-dojo-type="dijit/form/Button">
    <span>Click Me!</span>
   
</button>
</body>
</html>