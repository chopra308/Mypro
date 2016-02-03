<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<script>
		function validate(){
			var Id=document.login.EMPID;
			var name=document.login.NAME;
			
			var role=document.login.ROLE;
			if(isNaN(Id.value)){
				window.alert("Enter a valid Idnumber");
				Id.focus();
				return false;
			}
			   if (name.value == "")
			    {
			        window.alert("Please enter your name.");
			        name.focus();
			        return false;
			    }
			
		 if (role.selectedIndex < 1)
			    {
			        alert("Please Choose the option");
			      role.focus();
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
					<td><input type="text"  name="NAME"/></td>
				</tr>
				<tr>
					<td>Usertype</td>
					<td>
				
						<select type="text" value="" name="ROLE">
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