<html>
  <head>
 
 	<link href="js/dijit/themes/tundra/tundra.css" type="text/css" rel="stylesheet"/>
  
  			<script type="text/javascript" src="js/dojo/dojo.js" djConfig="parseOnLoad:true">
			 </script>
    <script>
            dojo.require("dojo.parser");
            dojo.require("dijit.form.Button");
            dojo.addOnLoad(function(  ) {
            	
                dojo.connect(dojo.byId("foo"), "onclick", function(evt) {
                    alert("connect fired for DOM Node onclick");
                });
                dojo.connect(dijit.byId("foo"), "onClick", function(evt) {
                    alert("connect fired for dijit onClick");
                });
            });
    </script>
  </head>
  <body class="tundra">
       <button id="foo" dojoType="dijit.form.Button" onclick="foo">click me
            <script type="dojo/method" event="onClick" args="evt">
                alert("Button fired onClick");
            </script>
        </button>
</body>
</html>