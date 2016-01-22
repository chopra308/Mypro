<!Doctype>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/dojo/1.10.4/dojo/dojo.js" djConfig="parseOnLoad:true, isDebug:false"></script>
<script type="text/javascript">   
    dojo.require("dijit.form.TextBox");
    dojo.require("dijit.form.CheckBox");
    dojo.require("dijit.form.DateTextBox");
    dojo.require("dijit.form.CurrencyTextBox");
</script>
</head>
<body>
<form>
<h2>Textbox</h2>
Enter yor Id:<input type="text" dojoType="dijit.form.TextBox"/>
Enter yout name:<input type="text" dojoType="dijit.form.TextBox"/>

<h2>DateTextbox</h2>
<input type="text" dojoType="dijit.form.DateTextBox"/>

<h2>Checkbox</h2>
Enable: <input type="checkbox" value="Y" dojoType="dijit.form.CheckBox" checked="checked"/>
Disable: <input type="checkbox" value="Y" dojoType="dijit.form.CheckBox"/>
<h2>CurrencyTextbox</h2>
Enter salary<input type="text"  value="0.00" dojoType="dijit.form.CurrencyTextBox"/>
show income: <input type="text" value="1265234.57" dojoType="dijit.form.CurrencyTextBox" />

</form>

</body>
</html>