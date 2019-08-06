


var object = {
    id: localStorage.getItem("book_id")
};


$.ajax
                    ({
                        type: "GET",
                        //the url where you want to sent the userName and password to
                        url: "http://localhost/book_shop/backend/details.php" ,
                        dataType: 'json',
                        data: object,
                      
                        success: function (data) {
//                           console.log(data.book_info);
//                            for(var i=0 ;i< data.book_info.length; i++){
                              
                                var info= 
                    
        '<h4>'+data.book_info.title+'</h4><h5 class="rate">By:'+data.book_info.author_name+'</h5> <span class="rate">Rate:'+data.book_info.rate+'</span><p><span class="bio">Book description: </span>'+data.book_info.book_description+'</p><p><span class="bio">Author bio:</span>'+data.book_info.author_bio+'</p><div class="product-bottom-download"><div class="product-download"><button class="btn btn-success">Download</button></div></div>';
                              $('.product-details').append(info);
                            
                            
                            var images='<div id="carouselExampleControls" class="carousel slide" data-ride="carousel"><div class="carousel-inner"><div class="carousel-item active"><img src="'+data.book_images[0]+'" class="d-block w-100" alt="..."></div><div class="carousel-item"><img src="'+data.book_images[1]+'" class="d-block w-100" alt="..."></div><div class="carousel-item"><img src="'+data.book_images[2]+'" class="d-block w-100" alt="..."></div><div class="carousel-item"><img src="'+data.book_images[3]+'" class="d-block w-100" alt="..."></div><div class="carousel-item"><img src="'+data.book_info.author_image+'" class="d-block w-100" alt="..."></div></div><a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev"><span class="carousel-control-prev-icon" aria-hidden="true"></span><span class="sr-only">Previous</span></a><a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next"><span class="carousel-control-next-icon" aria-hidden="true"></span><span class="sr-only">Next</span></a></div>';
                            $('.product-tumb').append(images);
                            
                            
                            
//                            }
                        }
});
//                        error : function (data){
//                            alert(data.status)
//                        }
//                     })



    var token= { key: localStorage.getItem("auth_key")};
//            console.log(token);

                $.ajax({
                        type: "POST",
                        url: "http://localhost/book_shop/backend/profile.php" ,
                        dataType: 'json',
                        headers: {'Authorization': token.key},
                        success: function (data) {
                            console.log(data);
                            if(token.key=""){
                               var header_name=
    '<ul class="navbar-nav ml-auto"><li class="nav-item active"><a class="nav-link" href="login.html">Login<span class="sr-only">(current)</span></a></li><li class="nav-item"><a class="nav-link" href="register.html">Register</a></li></ul>';
                            $('.header_nav .collapse').append(header_name);}
                            
                        else{
                            var header_name=
                            '<ul class="navbar-nav ml-auto"><li class="nav-item last_name">'+data.info.last_name+'</li></ul> <button type="button" class="btn btn-danger logout">Log out</button>';
                            $('.header_nav .collapse').append(header_name);}
                            console.log(data.info.first_name);
                        
                        },
                        error : function (data){
                            alert(data.status)
                        }
                     });