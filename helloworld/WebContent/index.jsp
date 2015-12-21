<!DOCTYPE html>
<html>
<head>
 <title>Hello World</title>
        <script type="text/JavaScript" src="js/dojo/dojo.js"
         djConfig="parseOnLoad: true">
        </script>
        <style type="text/css">
                @import "js/dijit/themes/tundra/tundra.css";
                @import "js/dojo/resources/dojo.css";
        </style>
       
    </head>
    <body class="tundra">
    <form action="#">
        <button dojoType="dijit.form.Button" id="helloButton" onClick="buttonTest">
                Hello World
        </button>
        </form>
         <script type="text/JavaScript">
                dojo.require("dijit.form.Button");
                dojo.require("dijit.form.ValidationTextBox");
                dojo.addOnLoad(function buttonTest() {
                	alert("I was clicked");
                	});
        </script>
</body>
</html>