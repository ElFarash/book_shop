var token= { key: localStorage.getItem("auth_key")};
//            console.log(token);

                $.ajax({
                        type: "POST",
                        url: "http://localhost/book_shop/backend/profile.php" ,
                        dataType: 'json',
                        headers: {'Authorization': token.key},
                        success: function (data) {
                            if(token.key != ""){
                                
                                var header_name=
                            '<ul class="navbar-nav ml-auto"><a href="profile.html"><li class="nav-item last_name">'+data.info.last_name+'</li></a></ul> <button onclick="localstorage_remove()" type="button" class="btn btn-danger logout">Log out</button>';
                            $('.header_nav .collapse').append(header_name);
                            
                            
                               var retrieve=
                                   '<div class="avatar"><img src="../images/1071625.jfif" height="150" width="150"></div><h2>'+data.info.first_name+' '+data.info.last_name+'</h2><h4>'+data.info.email+'</h4><h4>'+data.info.mobile+'</h4><h4>10 po box new york</h4><p class="bio">grew up in a working class neighbourhood. He was raised by his father, his mother having left when he was young.He is currently in a relationship with Chelsea Rhiannon Moss. Chelsea is 2 years older than him and works as a lab assistant.Steves best friend is a P.P.E. student called Jaydan Nguyen. They have a very firey friendship. He also hangs around with Ayden Young and Dylan Owen. They enjoy relaxing together.</p><a href="update.html"><button class="btn btn-secondary edit-profileBut">Edit profile</button></a>';
                                $('.user-details').append(retrieve);
                            
                            
                            
                            
                            
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





//
//$('#card-button').on('click', function(){
////       localStorage.setItem(id, value);
//      window.open("details.html","_self");
        



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