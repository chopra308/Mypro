<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<script>
		function validate(){
			var Id=document.login.EMPID.value;
			var name=document.login.NAME.value;
			if(isNaN(Id)){
				alert("Enter a valid Idnumber");
				Id.focus();
				return false;
			}
			if(name==""){
				alert("Enter the name");
				name.focus();
				return false;
			}
			
			 if (what.selectedIndex < 1)
			    {
			        alert("Please tell us how we can help you.");
			        Subject.focus();
			        return false;
			    }
			 return true;
		}
		</script>
		<title>Login Here</title>
	</head>
	<body>
		<form name="login"  action="reg" onsubmit="javascript:return validate();">
			<table>
				<tr>
					<td>Emp Id</td>
					<td><input type="text" value="Emp Id" name="EMPID"/></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" value="Name" name="NAME"/></td>
				</tr>
				<tr>
					<td>Usertype</td>
					<td>
				
						<select type="text" value="" name="Subject">
							<option value="-1" selected>[choose yours]</option>
							<option value="1">Employee</option>
							<option value="2">Manager</option>
						</select>
					
					</td>
				</tr>
				<tr>
					<td><input type="submit" value="login"/></td>
				</tr>
			</table>
		</form>

	</body>
</html>