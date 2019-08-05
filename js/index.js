  $.ajax
                    ({
                        type: "GET",
                        //the url where you want to sent the userName and password to
                        url: "http://localhost/book_shop/backend/books.php" ,
                        dataType: 'json',
                        
                      
                        success: function (data) {
                           console.log(data.books);
                            for(var i=0 ;i< data.books.length; i++){
//                                data.books[i]
                                var card= 
                     
         '<div class="card" style="width: 18rem;"><img src="'+data.books[i].image_path+'"class="card-img-top" alt="..."><div class="card-body"><h5 class="card-title">'+data.books[i].title+'</h5><p class="card-text">Author name:'+data.books[i].author_name+'</p><p class="card-text">Published at:'+data.books[i].published_at+'</p><a href="#" ><button id="card-button" class="info btn btn-primary">More Info</button></a></div></div>';
                                $('.items .lo .row').append(card);
                            }
                        },
                        error : function (data){
                            alert(data.status)
                        }
                     });


$('#card-button').on('click', function(){
//       localStorage.setItem(id, value);
      window.open("details.html","_self");
        
});