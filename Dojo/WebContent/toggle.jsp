<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script type="text/javascript">
      var djConfig = {
        baseScriptUri : "js/dojo/"
      };
    </script>
 <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" djConfig="parseOnLoad:true, isDebug:false"></script>
<script type="text/javascript">
      dojo.require("dojo.fx");
      var toggler = null;
      function fxTest() {
        toggler = new dojo.fx.Toggler({
          node : "myDiv",
          showFunc : dojo.fx.wipeIn,
        });
        toggler.show();
      }
    </script>
  </head>
  <body onLoad="fxTest();">
    <div id="myDiv" style="background-color:#ff0000;width:40px;top:5px;left:5px;position:absolute;">
     Hello</div>
     
  </body>
</html>