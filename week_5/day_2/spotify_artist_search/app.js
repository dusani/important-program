$(document).ready(function (){

	$(".js-search").on("click", fetchArtist)


	function fetchArtist (theEvent){
		theEvent.preventDefault();

		console.log("Fetch Artist on Click");

		var name = $(".js-artist-name").val();

		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/search?type=artist&query=${name}`,
			success: showArtist,
			error: handleError,
		});

	};

	function showArtist (response) {
		$(".js-artist-list").empty();
		console.log("Success!");
		console.log(response);

		var artistArray = response.artists.items;

		artistArray.forEach(function (theArtist) {

			if (theArtist.images.length > 0){


			
			var html = `
			<div>
				<p> 
					<strong>${theArtist.name}</strong>
					<br>
					<img src="${theArtist.images[0].url}" alt= "" width="150", heigth="150">
					<button class="js-artist-button" data-artist-id="${theArtist.id}">Get ${theArtist.name}'s Albums</button>
				</p>
			</div>
			`;
			$(".js-artist-list").append(html);}
		});

		$(".js-artist-button").on("click", fetchAlbums);
	};

	function fetchAlbums (theEvent){
		theEvent.preventDefault();

		console.log("Fetch Album on Click");

		var artistId = $(theEvent.currentTarget).data("artist-id");
		

		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
			success: showAlbum,
			error: handleError,
		});
	};

	function showAlbum (response) {
		$(".js-artist-album").empty();
		// theEvent.preventDefault();

		console.log("Success!");
		console.log(response);

		var albumArray = response.items
		console.log(albumArray);
		
		albumArray.forEach(function (albums) {
			
			var html = `
				<li>
					${albums.name}
				</li>
			`;
			$(".js-artist-album").append(html);
		});
	};



	function handleError (error) {
		console.log("Error!");
		console.log(error.responseText);
	};

});

