//             var myItem = {token: localStorage.getItem('token')};
         
		        $.ajax({
                        type: "GET",
                        //the url where you want to sent the userName and password to
                        url: "http://localhost/book_shop/backend/books.php" ,
                        dataType: 'json',
                        success: function (data) {
//			console.log(data.books);
							if(data.status == 1){	
								
								if( myItem == ""){
										          
								var header =  '<ul class="navbar-nav"><li class="nav-item active"><a class="nav-link" href="regis.html">Sign up </a></li><li class="nav-item active"><a class="nav-link" href="login.html">Sign in</a></li></ul>'
                                  $('.container-fluid .dd .header .navbar .collapse').append(header);  
								
									} else{
										call();
										var lname = localStorage.getItem("mylastname"); 
								var header = '<ul class="navbar-nav"><li class="nav-item active"><a href="profile.html" class="nav-link">'+lname+'</a></li><li class="nav-item active"><a class="nav-link nav-lin logout" >Log out</a></li></ul>'
									$('.container-fluid .dd .header .navbar .collapse').append(header);  
										
										$(".logout").on("click",function(){
								
								 myItem = localStorage.setItem("token","")
 						         window.open("index.html","_self");
								
						            	});
									}
								
		               for(var i=0; i< data.books.length;i++){
				var card = 	'<div class="card col-xl-3 col-lg-4 col-md-4 col-sm-6"><div class="semicard"><img src="'+data.books[i].image_path+'" class="card-img-top" alt="..."></div><div class="card-body"><h5 class="cardtitle">'+data.books[i].title+'</h5><p class="card-text">By '+data.books[i].author_name+'</p><p class="card-text">rate : '+data.books[i].rate+'</p> <a class = "more" onclick="book_view('+data.books[i].id+')">more info</a></div></div>';
								$('.startCard .sd .row ').append(card);
								 
									}
						  
							}
//							alert('success');
                        },
						error:function (data) {
							
							alert(data.status);
						}
						
                      });
                      
                           function book_view(id){
							 localStorage.setItem("book_id", id)
									 window.open("details.html","_self"); 
						}
	                    
                            
                         

							var myItem =  localStorage.getItem('token')
					       
						

                     
var ltnm;
 function call(){
               $.ajax
                    ({
                        type: "POST",
                        url: "http://localhost/book_shop/backend/profile.php" ,
                        dataType: 'json',				       
				        headers:{
							'Authorization': myItem
						},
                       success: function (data) {
							if(data.status == 1){
                               
//								console.log(data.info.last_name);
								ltnm = data.info.last_name;
								localStorage.setItem("mylastname",ltnm);
								
//									alert("success");
							}
				
						  
                        },
						error:function (data) {
							
							alert("error");
						}
						
                      });
	 
                     }
                 
			        
