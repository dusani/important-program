// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
PokemonApp.PokemonComponent = class {
	constructor (pokemonUri) {
		this.id = PokemonApp.idFromUri( pokemonUri );
	}

	render () {
		console.log(`PokemonComponent rendering pokemon #${this.id}`);

		$.ajax({
			type: "GET",
			url: `/api/v1/pokemon/${this.id}`,
			success: PokemonApp.showPokemonModal,
			error: PokemonApp.handleError,
		});
	}
};

PokemonApp.showPokemonModal = function (result) {
	$(".js-poke-type-list").empty();
	console.log("Pokemon Info:");
	console.log(result);

	var typesArray = result.types;

	typesArray.forEach(function (theType) {
		var html = `
			<li>
				${theType.name}
			</li>
		`;
		$(".js-poke-type-list").append(html);
	});

	// console.log(`Name: ${result.name}`);
	// console.log(`Number: ${result.pkdx_id}`);
	// console.log(`Height: ${result.height}`);
	// console.log(`Weight: ${result.weight}`);

	$(".js-poke-name").html(result.name);
	$(".js-poke-number").html(`#${result.pkdx_id}`);
	$(".js-poke-height").html(result.height);
	$(".js-poke-weight").html(result.weight);
	$(".js-poke-hp").html(result.hp);
	$(".js-poke-attack").html(result.attack);
	$(".js-poke-defense").html(result.defense);
	$(".js-poke-spattack").html(result.sp_atk);
	$(".js-poke-spdefense").html(result.sp_def);
	$(".js-poke-speed").html(result.speed);
	// $(".js-poke-type").html(result.weight);

	$(".js-pokemon-modal").modal("show");
};

PokemonApp.handleError = function (theError) {
	console.log("Pokemon Component Error");
	console.log(theError.responseText);
};

// idFromUri
// Input: "api/v1/pokemon/57"
//			 0	   1        2       3    4
//        ["api", "v1", "pokemon", "57", ""]		length: 5
// Output: 57
PokemonApp.idFromUri = function (pokemonUri) {
	var uriSegments = pokemonUri.split("/");
	var secondLast = uriSegments.length - 2;
	return uriSegments[secondLast];
};

$(document).ready(function () {

	$(".js-show-pokemon").on("click", function (theEvent) {
		console.log("CLICK!");
		console.log(theEvent.currentTarget);

//		 data-pokemon-uri="api/v1/pokemon/57"
//		 ---- -----------
//		   |       |
//		   |       ---------------------------------------
//		   ---------------------------------------		 |
//												 |		 |
		var theUri = $(theEvent.currentTarget).data("pokemon-uri");
		console.log( theUri );

		var pokeComponent = new PokemonApp.PokemonComponent( theUri );
		pokeComponent.render();
	});
});