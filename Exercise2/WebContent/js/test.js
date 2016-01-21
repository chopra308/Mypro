
function fun()  
{  
	   var Telephone = document.ContactForm.phone;


  if((phone.value == ""))
  {  
	  document.getElementById("errorBox").innerHTML = "enter the valid number"; 
	     return false;  
     
  }  
  else  
  {  
	  return true;  
  }  
  }  