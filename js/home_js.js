$.ajax({
            method: "POST",
            url: "localhost/book_shop/index.php",
            dataType: "json",
            success: function(data) {
				console.log(data);
             alert('Success');

            },
            error: function (data) {
				console.log(data);
             	alert('error');
            }
        });