$(document).ready(function() {
	setInterval(function(){

  			$("#slide-wrapper ul").animate({"margin-left":-610},9000,function(){

  					$(this).find("li:last").after($(this).find("li:first"));
  					$(this).css({"margin-left":0});


  			});

		},500);
});
