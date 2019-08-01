var id;
$("#loginform").submit(function(e){
	e.preventDefault();
	var email_first_input = document.getElementById("exampleInputEmail1");
	var password_second_input = document.getElementById("exampleInputPassword1");
	var re = /^[a-z0-9][a-z0-9-_\.]+@([a-z]|[a-z0-9]?[a-z0-9-]+[a-z0-9])\.[a-z0-9]{2,10}(?:\.[a-z]{2,10})?$/; 
	if(!(re.test(email_first_input.value))||email_first_input.value == ""){
	   document.getElementById("emailid").innerHTML="invaild email,please enter the vaild email";
		document.getElementById("emailid").style.color = "red";
		email_first_input.focus();
		//return false;
	}
	 else if(re.test(email_first_input.value)&&(password_second_input.value.length < 5 || password_second_input.value =="" )){
		 document.getElementById("emailid").innerHTML="";
		 password_second_input.focus();
		 document.getElementById("passwordid").innerHTML="invaild password,please enter the vaild password";
		document.getElementById("passwordid").style.color = "red";
		// return false;
	 }
	else if(password_second_input.value.length > 5 || password_second_input.value != ""){
		document.getElementById("passwordid").innerHTML="";
		//return true;
	}
	 
	 var objectData =
         {
             email: document.getElementById('exampleInputEmail1').value,
             password: document.getElementById('exampleInputPassword1').value                
         };


	 	$.ajax({
            method: "POST",
            url: "http://6.6.6.202/book_shop/login.php",
            dataType: "json",
            data: objectData,
            success: function (data) {
				console.log(data);
				id=data.token;
				if(data.status == 1){
					$("#loginform").hide(1000);
				$(".yes").css("display","block");
				$(".yes").html(data.message);
					setTimeout(function(){
						window.open("home.html","_self");
					},5000);
					
				}
				else{
				$(".er2").css("display","block");
				$("p").css("margin-bottom","10px");
				$(".er2").css("color","red");	
				$(".er2").html(data.errors["login"]);
				$(".form-container").css("height","460px");	
				}
				
//               alert('Success');

            },
            error: function (data) {
				console.log(data);
             //alert('Error');
            }
        });

})
/////////////////////////////////////
//registerion page js
////////////////////////////////////////////////////////////////////

var password_input = document.getElementById("exampleInputPassword1");
	var confirm_password_input = document.getElementById("exampleInputPassword2");
	var mobile_input = document.getElementById("exampleInputmobile");
$("#exampleInputPassword2").keyup(function(){
		if(password_input.value != confirm_password_input.value ){
			$("#confirmpasswordid").html("Passwords Don't match!!enter the vaild password");
			$("#confirmpasswordid").css("color","red");
			confirm_password_input.focus();
		}
	else if(password_input.value == confirm_password_input.value){
		$("#confirmpasswordid").html("Matched password");
			$("#confirmpasswordid").css("color","green");
		mobile_input.focus();
	}
		else{
			mobile_input.focus();
		}
	});
$("#registerid").submit(function(e){
	e.preventDefault();
	var first_name = document.getElementById("exampleInputfirstname");
	var last_name = document.getElementById("exampleInputlastname");
	var email_input = document.getElementById("exampleInputEmail1");
	var password_input = document.getElementById("exampleInputPassword1");
	var confirm_password_input = document.getElementById("exampleInputPassword2");
	var mobile_input = document.getElementById("exampleInputmobile");
	var phoneno = /^\d{11}$/;
	var re = /^[a-z0-9][a-z0-9-_\.]+@([a-z]|[a-z0-9]?[a-z0-9-]+[a-z0-9])\.[a-z0-9]{2,10}(?:\.[a-z]{2,10})?$/; 
    if(first_name.value == ""){
		document.getElementById("firstnameid").innerHTML = "please enter the first name";
		document.getElementById("firstnameid").style.color = "red";
		first_name.focus();
	}	
	else if (last_name.value == ""){
		document.getElementById("lastnameid").innerHTML = "please enter the last name";
		document.getElementById("lastnameid").style.color = "red";
		document.getElementById("firstnameid").innerHTML = "";
		last_name.focus();
	}
	else if(!re.test(email_input.value)){
		document.getElementById("emailid").innerHTML = "please enter the vaild email";
		document.getElementById("emailid").style.color = "red";
		document.getElementById("lastnameid").innerHTML = "";
		email_input.focus();
	}
	else if( password_input.value.length < 9 ){
		document.getElementById("passwordid").innerHTML = "please enter the vaild password (at least 9 numbers)";
		document.getElementById("passwordid").style.color = "red";
		document.getElementById("emailid").innerHTML = "";
		password_input.focus();
	}
	else if (confirm_password_input.value == "" || password_input.value != confirm_password_input.value){
		document.getElementById("confirmpasswordid").innerHTML = "Passwords Don't match!!,please enter the vaild password";
		document.getElementById("confirmpasswordid").style.color = "red";
			document.getElementById("passwordid").innerHTML = "";
		check = 0;
		confirm_password_input.focus();
	}
	else if(!mobile_input.value.match(phoneno)){
		document.getElementById("mobileid").innerHTML = "wrong phone format";
		document.getElementById("mobileid").style.color = "red";
		document.getElementById("confirmpasswordid").innerHTML = "";
		mobile_input.focus();
}
	else{
		document.getElementById("firstnameid").innerHTML = "";
		document.getElementById("lastnameid").innerHTML = "";
		document.getElementById("emailid").innerHTML = "";
		document.getElementById("passwordid").innerHTML = "";
		document.getElementById("confirmpasswordid").innerHTML = "";
		document.getElementById("mobileid").innerHTML = "";
		var objectData2 =
         {
             first_name: document.getElementById('exampleInputfirstname').value,
             last_name: document.getElementById('exampleInputlastname').value ,
			  email: document.getElementById('exampleInputEmail1').value,
             password: document.getElementById('exampleInputPassword1').value,
             mobile: document.getElementById('exampleInputmobile').value 
			 
         };


	 	$.ajax({
            method: "POST",
            url: "http://6.6.6.202/book_shop/register.php",
            dataType: "json",
            data: objectData2,
            success: function(data) {
				if(data.status == 1){
					$("#registerid").hide(1000);
				$(".yes").css("display","block");
				$(".yes").html(data.message);
					setTimeout(function(){
						window.open("home.html","_self");
					},4000);
					
				}
				if(!jQuery.isEmptyObject(data.errors)){
					if(data.errors["email"]){
						$("#emailid").html(data.errors["email"]);
						$("#emailid").css("color","red");
						$("#confirmpasswordid").html("");
					}
					else{
						
						$("#emailid").html("");
						$("#confirmpasswordid").html("");
					}
					if(data.errors["password"]){
						$("#passwordid").html(data.errors["password"]);
						$("#passwordid").css("color","red");
						$("#confirmpasswordid").html("");
					}
					if(data.errors["mobile"]){
						$("#mobileid").html(data.errors["mobile"]);
						$("#mobileid").css("color","red");
						$("#confirmpasswordid").html("");
					}
				
					
				}
//               alert('Success');

            },
            error: function (data) {
				console.log(data);
             	//alert('error');
            }
        });
	}
	
	

	
	
})
	







/*if(password_input != confirm_password_input){
		alert("Passwords Don't match!!");
		confirm_password_input.focus;
		return false;
	}
	else if(mobile_input.value.match(phoneno)){
	   	return false;
	}*/
/*var email_first_input = $("exampleInputEmail1").val();
	var password_second_input = $("exampleInputPassword1").val();
$(document).ready(function(){
	$("#emailid").hide();
	$("#passwordid").hide();
	$("button").click(function(){
		if(email_first_input == ""){
			$("#emailid").show();
			return false;
		}
	});
});*/