$(document).ready(function (){
	console.log("Document Ready")
	$(".js-search").on("click", fetchSongs)

	function fetchSongs (theEvent){
		theEvent.preventDefault();

		console.log("Fetch Songs on Click");

		var song = $(".js-song-name").val();

		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/search?type=track&q=${song}`,
			success: showSongs,
			error: handleError,
		});
	};

	function showSongs (response){

		console.log("Success");
		console.log(response);

		var firstSong = response.tracks.items[0];

		console.log(firstSong);

		$(".title").html(firstSong.name);
		$(".author").html(firstSong.artists[0].name);
		document.getElementById("js-album-image").src = (firstSong.album.images[0].url);
		document.getElementById("js-play-song").src = (firstSong.preview_url);

	};

	$(".btn-play").on("click", function(){
		$(".btn-play").toggleClass("playing");
			if ( $(".btn-play").hasClass("playing") ){
				$(".js-player").trigger('play');
			}
			else{
				$(".js-player").trigger('pause');
			}

	});

	function printTime () {
	  var current = $('.js-player').prop('currentTime');
	  console.log('Current time: ' + current);
		$("#progress_bar").attr("value", current);

		if (current >= 30){
			$(".btn-play").removeClass("playing")
		};
	}

	$('.js-player').on('timeupdate', printTime);


	function handleError (error) {
		console.log("Error!");
		console.log(error.responseText);
	};
});
