// Write your Pizza Builder JavaScript in this file.
$(document).ready(function () {
	
	$('.btn-pepperonni').on('click', function(){
		$('.pep').fadeToggle('pep');
		$('.btn-pepperonni').toggleClass('active');
			
			if ( $(".btn-pepperonni").hasClass("active") ) {
				base_price +=1;
			}    
			else{
				base_price -=1;
			}

			$("#total_price").html("$" + base_price);
			$('#pep-price').fadeToggle();
		})	
		


	$('.btn-mushrooms').on('click', function(){
		$('.mushroom').fadeToggle('mushroom');
		$('.btn-mushrooms').toggleClass('active');

			if ( $(".btn-mushrooms").hasClass("active") ) {
				base_price +=1;
			}    
			else{
				base_price -=1;
			}
				$("#total_price").html("$" + base_price);
				$('#mush-price').fadeToggle();
		})	


	$('.btn-green-peppers').on('click', function(){
		$('.green-pepper').fadeToggle('green-pepper');
		$('.btn-green-peppers').toggleClass('active');

			if ( $(".btn-green-peppers").hasClass("active") ) {
				base_price +=1;
			}    
			else{
				base_price -=1;
			}
				$("#total_price").html("$" + base_price);
				$('#green-price').fadeToggle();
		})	

	$('.btn-crust').on('click', function(){
		$('.crust').toggleClass('crust-gluten-free');
		$('.btn-crust').toggleClass('active');

			if ( $(".btn-crust").hasClass("active") ) {
				base_price +=5;
			}    
			else{
				base_price -=5;
			}
				$("#total_price").html("$" + base_price);
				$('#crust-price').fadeToggle();
		})	

	$('.btn-sauce').on('click', function(){
		$('.sauce').toggleClass('sauce-white');
		$('.btn-sauce').toggleClass('active');

			if ( $(".btn-sauce").hasClass("active") ) {
				base_price +=3;
			}    
			else{
				base_price -=3;
			}
				$("#total_price").html("$" + base_price);
				$('#sauce-price').fadeToggle();
		})	
	var base_price = 10; 

    if ( $(".btn-pepperonni").hasClass("active") ) {
      base_price +=1;
    }    
    if ( $(".btn-mushrooms").hasClass("active") ) {
      base_price +=1;
    }
    if ( $(".btn-green-peppers").hasClass("active") ) {
      base_price +=1;
    }
    if ( $(".btn-sauce").hasClass("active") ) {
      base_price +=1;
    }
    if ( $(".btn-crust").hasClass("active") ) {
      base_price +=1;
    }

	$("#total_price").html("$" + base_price)

	$('#crust-price').fadeToggle();
	$('#sauce-price').fadeToggle();
});