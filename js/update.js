
var myItem =  localStorage.getItem('token');

 var MYemail = localStorage.getItem("emailName");

var emialShow =	'<div class="col-sm-10"><label type="text" readonly class="form-control-plaintext" id="staticEmail" >'+MYemail+'</label></div>';
							
$('.form .emo').append(emialShow); 

	
$("#updated").submit(function(e){

	e.preventDefault();
	
	            var Firstname = $("#first").val();
	           	var lastname = $("#last").val();
	        	var Password = $("#inputPassword").val();
	        	var rePassword = $("#Password").val();
                var mobile = $("#mob").val();           
                var myPhone = /^\d{11}$/;

                 if(Firstname == "")
                {
                    document.getElementById("div1").innerHTML="Enter your firstname";
                    document.getElementById("div1").style.color="Red";
                   
                } 
			 
				else if(lastname == "")
                {
				    document.getElementById("div1").innerHTML="";
                    document.getElementById("div2").innerHTML="Enter your lastname";
                    document.getElementById("div2").style.color="Red";
					
                    
                }
			          
   				else if( Password.length < 6 )
				{   
					document.getElementById("div2").innerHTML="";
	                document.getElementById("div4").innerHTML="Please enter password but not weak";
                    document.getElementById("div4").style.color="Red";
					
                }
			 
			    else if( (Password != rePassword) )
				{   
					document.getElementById("div4").innerHTML="";
	                document.getElementById("div5").innerHTML="Password not identical";
                    document.getElementById("div5").style.color="Red";
					
                }
			    
			    else
				{
					document.getElementById("div4").innerHTML="";
					document.getElementById("div5").innerHTML="Correct";					document.getElementById("div5").style.color="green";
					document.getElementById("div5").style.fontWeight="bold";
                    document.getElementById("div6").style.color="Red";
					document.getElementById("div6").innerHTML="you must enter 11 digits";
				    
				}

	
	var objectUpdate = {
		
		first_name : $("#first").val(),
		last_name : $("#last").val(),
		password : $("#inputPassword").val(),
		mobile : $("#mob").val()
		
	}
	
          $.ajax({
                        type: "POST",
                        //the url where you want to sent the userName and password to
                        url: "http://localhost/book_shop/backend/update.php" ,
                        dataType: 'json',
                        data: objectUpdate,
	                    headers:{
							'Authorization': myItem
						},
	   
                        success: function (data) {
//			console.log(data.books);
							if(data.status == 1){	
				
								
//								
//								var header = '<ul class="navbar-nav"><li class="nav-item active"><a class="nav-link nav-lin logout" >Log out</a></li></ul>';
//									$('.container-fluid .dd .header .navbar .collapse').append(header);  
										
//										$(".logout").on("click",function(){
//								
//								 myItem = localStorage.setItem("token","")
// 						         window.open("index.html","_self");
//								
//						            	});
//								 
							setTimeout(function(){
									 window.open("profile.html","_self"); }, 3000);
								
									}
								
							
		           
//							alert('success');
                        },
						error:function (data) {
							
							alert(data.status);
						}
						
                      });

	});