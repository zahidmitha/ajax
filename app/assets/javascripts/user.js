$(document).ready(function() {

$(".create_users_form").submit(function(e)
{	e.preventDefault();
	var url = "/users/";
	$.ajax({
		type: "POST",
		url: url,
		data: $(this).serialize(),
		success: function(data){
			var obj = jQuery.parseJSON(data.user)
			console.log(data);
		$(".return_value").html("User successfully generated:");
		// + obj.name + obj.email + obj.age);
		dataType:'json';
`
		// return: false
	}
	});
});

});


// http://net.tutsplus.com/tutorials/javascript-ajax/submit-a-form-without-page-refresh-using-jquery/
