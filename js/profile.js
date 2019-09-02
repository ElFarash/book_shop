var token= { key: localStorage.getItem("auth_key")};
//            console.log(token);

                $.ajax({
                        type: "POST",
                        url: "http://localhost/book_shop/backend/profile.php" ,
                        dataType: 'json',
                        headers: {'Authorization': token.key},
                        success: function (data) {
                            if(token.key != "" && data.info.type == "user"){
                                
                                var header_name=
                            '<ul class="navbar-nav ml-auto"><a href="profile.html"><li class="nav-item last_name">'+data.info.last_name+'</li></a></ul> <button onclick="localstorage_remove()" type="button" class="btn btn-danger logout">Log out</button>';
                            $('.header_nav .collapse').append(header_name);
                            
                            
                               
//                                   '<div class="avatar"><img src='+data.info.image+' height="150" width="150"></div><h2>'+data.info.first_name+' '+data.info.last_name+'</h2><h4>'+data.info.email+'</h4><h4>'+data.info.mobile+'</h4><p class="bioo">'+data.info.bio+'</p><a href="books_of_user.html"><button class="btn btn-danger liked-profileBut">Liked books</button></a><a href="update.html"><button id="editButt" class="btn btn-secondary edit-profileBut">Edit profile</button></a>';
//                                
                                   
                                 var retrieve=
                                     '<div class="row"><div class="left col-lg-4"><div class="photo-left"><img class="photo" src='+data.info.image+'></div><h4 class="name">'+data.info.first_name+' '+data.info.last_name+'</h4><p class="info">UI/UX Designer</p><p class="info">'+data.info.email+'</p><p class="info">'+data.info.mobile+'</p><p class="desc">'+data.info.bio+'</p><div class="social"><i class="fa fa-facebook-square" aria-hidden="true"></i><i class="fa fa-twitter-square" aria-hidden="true"></i><i class="fa fa-pinterest-square" aria-hidden="true"></i><i class="fa fa-tumblr-square" aria-hidden="true"></i></div><a href="update.html"><button id="editButt" class="btn btn-secondary edit-profileBut">Edit profile</button></a></div><div class="right col-lg-8"><ul class="nav"><li>liked Books</li></ul><div class="row gallery">';
                                $('main').append(retrieve);
                            
                            
                            
                            
                            
                            }
                            
                            else if(token.key != "" && data.info.type == "author"){
                                
                                    var header_name=
                            '<ul class="navbar-nav ml-auto"><a href="profile.html"><li class="nav-item last_name">'+data.info.last_name+'</li></a></ul> <button onclick="localstorage_remove()" type="button" class="btn btn-danger logout">Log out</button>';
                            $('.header_nav .collapse').append(header_name);
                            
                            
                               var retrieve=
//                                   
//                                   '<div class="avatar"><img src='+data.info.image+' height="150" width="150"></div><h2>'+data.info.first_name+' '+data.info.last_name+'</h2><h4>'+data.info.email+'</h4><h4>'+data.info.mobile+'</h4><p class="bioo">'+data.info.bio+'</p><a href="books_of_user.html"><button class="btn btn-danger liked-profileBut">Liked books</button></a><a href="update.html"><button id="editButt" class="btn btn-secondary edit-profileBut">Edit profile</button></a>';
                                
                                   
                                   
                                   
                                   '<div class="row"><div class="left col-lg-4"><div class="photo-left"><img class="photo" src='+data.info.image+'></div><h4 class="name">'+data.info.first_name+' '+data.info.last_name+'</h4><p class="info">UI/UX Designer</p><p class="info">'+data.info.email+'</p><p class="info">'+data.info.mobile+'</p><div class="stats row"><div class="stat1 col-xs-4"><p class="number-stat">3,619</p><p class="desc-stat">Followers</p></div><div class="stat2 col-xs-4"><p class="number-stat">42</p><p class="desc-stat">Following</p></div><div class="stat3 col-xs-4"><p class="number-stat">38</p><p class="desc-stat">Uploads</p></div></div><p class="desc">'+data.info.bio+'</p><div class="social"><i class="fa fa-facebook-square" aria-hidden="true"></i><i class="fa fa-twitter-square" aria-hidden="true"></i><i class="fa fa-pinterest-square" aria-hidden="true"></i><i class="fa fa-tumblr-square" aria-hidden="true"></i></div><a href="#"><button class="btn btn-danger liked-profileBut">Liked books</button></a><a href="#"><button class="btn btn-success upload-profileBut">Upload book</button></a><a href="update.html"><button id="editButt" class="btn btn-secondary edit-profileBut">Edit profile</button></a></div><div class="right col-lg-8"><ul class="nav"><li>Published Books</li></ul><button class="follow">Follow</button><div class="row gallery"><div class="card col-md-4 col-sm-6 col-12"><img src="https://images-na.ssl-images-amazon.com/images/I/51tQHDThsTL._SX329_BO1,204,203,200_.jpg" class="card-img-top" alt="..."><div class="card-body"><h5 class="card-title">Justice on Trial</h5><p class="card-text">Author name: Mollie Hemingway</p><p class="card-text">Published at: 2019-03-11</p><a href="#" ><button class="infoo btn btn-primary button">More Info</button></a></div></div></div> </div></div> ';
                                   $('main').append(retrieve);
                            
                                
                                
                            }
                            
                            else{
                               var header_name=
    '<ul class="navbar-nav ml-auto"><li class="nav-item active"><a class="nav-link" href="login.html">Login<span class="sr-only">(current)</span></a></li><li class="nav-item"><a class="nav-link" href="register.html">Register</a></li></ul>';
                            $('.header_nav .collapse').append(header_name);
//                                console.log(data.info.first_name);
                            }
                            
                            },
                            
//                        else{
//                            
////                            
//                        
//                        },
                        error : function (data){
                            alert(data.status)
                        }
                     });



$.ajax({
                        type: "POST",
                        url: "http://localhost/book_shop/backend/books_of_user.php" ,
                        dataType: 'json',
                        headers: {'Authorization': token.key},
                        success: function (data) {
console.log(data);
//                           console.log(data.books);
//                            console.log(localStorage.getItem("person_token"));
                            for(var i=0 ;i< data.books.length; i++){
//                                data.books[i]
                                var card= 
                     
                                    '<div class="card col-md-4 col-sm-6 col-12"><img src="'+data.books[i].image_path+'" class="card-img-top" alt="..."><div class="card-body"><h5 class="card-title">'+data.books[i].title+'</h5><p class="card-text">Author name: '+data.books[i].author_name+'</p><p class="card-text">Published at: '+data.books[i].published_at+'</p><a href="#" ><button class="infoo btn btn-primary button">More Info</button></a></div></div></div></div></div>';
                                $('.gallery').append(card);
                                
//         '<div class="card" style="width: 18rem;"><img src="'+data.books[i].image_path+'"class="card-img-top" alt="..."><div class="card-body"><h5 class="card-title">'+data.books[i].title+'</h5><p class="card-text"><span class="names">Author name:</span>'+data.books[i].author_name+'</p><p class="card-text"><span class="names">Published at</span>:'+data.books[i].published_at+'</p><button onclick="redirect('+data.books[i].id+')" id="card-button" class="info btn btn-primary">More Info</button></div></div>';
                                
                            }
                            
                    
                        },
                        error : function (data){
                            alert("error")
                        }
                    
                     });



function redirect(id){
    localStorage.setItem("book_id", id);
    window.open("details.html","_self")
}


function localstorage_remove(){
//   localStorage.removeItem("auth_key");
//    token.key="";
    localStorage.setItem("auth_key", "");
    window.open("index.html","_self")
}

//console.log(localStorage.getItem("auth_key"));
//
//console.log(localStorage.getItem("auth_key"));

//console.log(token.key);
//token.key="";
//console.log(token.key);