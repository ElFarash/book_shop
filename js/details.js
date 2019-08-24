
var x=  {
	id: localStorage.getItem("book_id")
};
console.log(localStorage.getItem('book_id'));
var slideIndex = 1;
$(document).ready(function(){
	
              $.ajax
                    ({
                        type: "GET",
                        //the url where you want to sent the userName and password to
                        url: "http://localhost/book_shop/backend/details.php" ,
                        dataType: 'json',
                        data: x ,
				        headers:{
							'Authorization': book_token
						},
                        success: function (data) {
							  if(data.status == 1){
								  
							if( book_token == ""){
										          
								var header =  '<ul class="navbar-nav"><li class="nav-item active"><a class="nav-link" href="regis.html">Sign up </a></li><li class="nav-item active"><a class="nav-link" href="login.html">Sign in</a></li></ul>'
                                  $('.container-fluid .dd .header .navbar .collapse').append(header);  
								
									} else{
										call();
										var lastName = localStorage.getItem("mylastname"); 
								var header = '<ul class="navbar-nav"><li class="nav-item active"><a href="profile.html" class="nav-link">'+lastName+'</a></li><li class="nav-item active"><a class="nav-link nav-lin logout"  >Log out</a></li></ul>'
									$('.container-fluid .dd .header .navbar .collapse').append(header);  
										
										$(".logout").on("click",function(){
								
								 book_token = localStorage.setItem("token","")
 						         window.open("index.html","_self");
								
						            	});
										
										
										
										
									}
				 		   
				        var book_info = '<div class="col-md-6 slideshow"><div class="container slider "><div class="container "><div class="row"><div class="mySlides"><img src="'+data.book_info.author_image+'" style="width: 100%; height:400px"></div><div class="mySlides"><img src="'+data.book_images[0]+'" style="width: 100%; height:400px"></div><div class="mySlides"><img src="'+data.book_images[1]+'" style="width: 100%; height:400px"></div><div class="mySlides"><img src="'+data.book_images[2]+'" style="width: 100%; height:400px"></div><div class="mySlides"><img src="'+data.book_images[3]+'" style="width: 100%; height:400px"></div><div class="mySlides"><img src="'+data.book_images[3]+'" style="width: 100%; height:400px"></div></div><div class="row"><a class="prev" onclick="plusSlides(-1)"></a><a class="next" onclick="plusSlides(1)"></a><div class="caption-container"><p id="caption"></p></div></div><div class="row"><div class="column"><img class="demo cursor" src="'+data.book_info.author_image+'" style="width:100%" onclick="currentSlide(1)" ></div><div class="column"><img class="demo cursor" src="'+data.book_images[0]+'" style="width:100%" onclick="currentSlide(2)" ></div><div class="column"><img class="demo cursor" src="'+data.book_images[1]+'" style="width:100%" onclick="currentSlide(3)"></div><div class="column"><img class="demo cursor" src="'+data.book_images[2]+'" style="width:100%" onclick="currentSlide(4)" ></div><div class="column"><img class="demo cursor" src="'+data.book_images[3]+'" style="width:100%" onclick="currentSlide(5)" ></div><div class="column"><img class="demo cursor" src="'+data.book_images[3]+'" style="width:100%" onclick="currentSlide(6)" ></div></div></div></div></div><div class="col-md-6"><div class="card-body"><h3 class="card-title">'+data.book_info.title+'</h3><p class="desc">'+data.book_info.book_description+'</p><p class="card-text">rate : '+data.book_info.rate+'</p><p class="card-text">published at : 12/7/1990</p><p class="card-text">By '+data.book_info.author_name+'</p><p class="author">'+data.book_info.author_bio+'</p><a  id="myBtn" class="btn btn-primary more"><i class="fa fa-download">&nbsp;Download</i></a></div></div>';
						  
							$('.card .row').append(book_info);
							
							
							
						$("#myBtn").click(function(){
							if(data.book_info.url == "" ){
								window.open("login.html","_self");
													
							}
							else{
											
								window.open(data.book_info.url, "_blank");
							}
							
						});
									  	showSlides(slideIndex);
							  }
//							alert('success');
                        },
						error:function (data) {
							
							alert(data.status);
							
						}
						
                     });

                  });
                          

 
var book_token = localStorage.getItem('token');
var ltnm;
 function call(){
               $.ajax
                    ({
                        type: "POST",
                        url: "http://localhost/book_shop/backend/profile.php" ,
                        dataType: 'json',				       
				        headers:{
							'Authorization': book_token
						},
                       success: function (data) {
							if(data.status == 1){
                               
//								console.log(data.info.last_name);
								ltnm = data.info.last_name;
								localStorage.setItem("mylastname",ltnm);
//								console.log(ltnm);
							}
//							alert("success");
//							console.log(data);
//						     console.log(data.token)	
						   
                        },
						error:function (data) {
							
							alert("error");
						}
						
                      });
	 
                     }



function plusSlides(n) {
					  showSlides(slideIndex += n);
					}

					function currentSlide(n) {
					  showSlides(slideIndex = n);
					}

					function showSlides(n) {
					  var i;
					  var slides = document.getElementsByClassName("mySlides");
					  var dots = document.getElementsByClassName("demo");
					  var captionText = document.getElementById("caption");
					  if (n > slides.length) {slideIndex = 1}
					  if (n < 1) {slideIndex = slides.length}
					  for (i = 0; i < slides.length; i++) {
						  slides[i].style.display = "none";
					  }
					  for (i = 0; i < dots.length; i++) {
						  dots[i].className = dots[i].className.replace(" active", "");
					  }
					  slides[slideIndex-1].style.display = "block";
					  dots[slideIndex-1].className += " active";
					  captionText.innerHTML = dots[slideIndex-1].alt;
					}
			        
