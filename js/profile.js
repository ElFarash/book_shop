
var myItem =  localStorage.getItem('token');

$.ajax({
                        type: "POST",
                        //the url where you want to sent the userName and password to
                        url: "http://localhost/book_shop/backend/profile.php" ,
                        dataType: 'json',
	                    headers:{
							'Authorization': myItem
						},
                        success: function (data) {
//			console.log(data.books);
							if(data.status == 1){	
								
								var header = '<ul class="navbar-nav"><li class="nav-item active"><a class="nav-link nav-lin logout" >Log out</a></li></ul>';
									$('.container-fluid .dd .header .navbar .collapse').append(header);  
										
										$(".logout").on("click",function(){
								
								 myItem = localStorage.setItem("token","")
 						         window.open("index.html","_self");
								
						            	});
								
							var body = '<h5 class="card-title">'+data.info.first_name +" "+ data.info.last_name+'</h5><p class="card-text">'+data.info.email+'</p><p class="card-text">'+data.info.mobile+'</p><p class="card-text">About me :</p><p class="card-text identify">I am student in faculty of engineerig assuit , i am web developer (frontend developer ) , i like football and tunnis , i prefer sleeping on sound of Floor fan or washing machine </p>';
								
                        $('.card-body .copy').append(body);  

								
								
								
								localStorage.setItem("emailName", data.info.email);
								
									}
								
		           
//							alert('success');
                        },
						error:function (data) {
							
							alert(data.status);
						}
						
                      });
