$(document).ready(function(){
	//animation for the text
	$("#line1").delay(400).fadeIn();       
	$("#line2").delay(650).fadeIn();
	$("#line3").delay(900).fadeIn();
	//animation for the boxes
	$("#sl1").delay(1100).fadeIn().animate({opacity: '1.0', left:'300px'});
    $("#sl2").delay(1500).fadeIn().animate({opacity: '1.0', right:'467px'});
	$("#sl3").delay(2000).fadeIn().animate({opacity: '1.0', left:'300px'});
	$("#sl4").delay(2500).fadeIn().animate({opacity: '1.0', right:'467px'});
	//defining click function for boxes
	$(".sl").click(function(){
		var n=Number($(this).attr("data-num"));
		$("#panel"+n).slideDown();
		$(".pop").not("#panel"+n).hide();
	});
	//hover effect for boxes
	$(".sl").hover(
		function(){
			$(this).css({"background-color":"grey"});
		},
		function(){
			$(this).css({"background-color":"#3DD3E7"});
		});
	

});