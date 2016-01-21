<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 	<link href="js/dijit/themes/tundra/tundra.css" type="text/css" rel="stylesheet"/>
  <script type="text/javascript">
      var djConfig = {
        baseScriptUri : "js/dojo/",
        parseOnLoad : true
      };
    </script>
  			<script type="text/javascript" src="js/dojo/dojo.js" djConfig="parseOnLoad:true">
			 </script>
    <script> 
    dojo.require("dojo.parser");
    dojo.require("dijit.Dialog");
    dojo.addOnLoad(showDialogs);

    function showDialogs() {
    	  dijit.byId("dialog1").show();
    }
  </script>
</head>
<body>
<div type="dijit.Dialog" id="dialog1" href="http://www.java2s.com/Tutorial/JavaScript/0570__Dojo-toolkit/dojoaddOnLoad.htm"></div>
</body>
</html>