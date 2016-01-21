<html>
  <head>
	<link href="js/dijit/themes/tundra/tundra.css" type="text/css" rel="stylesheet"/>
  
  			<script type="text/javascript" src="js/dojo/dojo.js" djConfig="parseOnLoad:true">
			 </script>
    

    <script>
        dojo.require("dojo.parser");
        dojo.require("dijit.form.Button");
        dojo.require("dijit.Menu");
        function call_function(choice) {
           alert(choice);
        }
        function save_function() {
           alert("Save");
        }
        function save_as_function(choice) {
           alert("Save As");
        }
    </script>
  </head>
  <body class="tundra">
        <div dojoType="dijit.form.DropDownButton">
            <span>Edit</span>
            <div dojoType="dijit.Menu" id="Edit">
                <div dojoType="dijit.MenuItem" label="Copy" onclick="call_function('copy');"></div>
                <div dojoType="dijit.MenuItem" label="Cut"  onclick="call_function('cut');"></div>
                <div dojoType="dijit.MenuItem" label="Paste" onclick="call_function('paste');"></div>
            </div>
        </div>
  </body>
</html>