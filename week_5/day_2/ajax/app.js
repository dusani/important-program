console.log("We are GO!!!")

$(document).ready(function () {

	$(".js-fetch-characters").on("click", fetchCharacters);
	$(".js-add-yoda").on("click", addYoda);

	$(".js-add-new-character").on("click", addNewCharacter);
});

function addNewCharacter (theEvent) {
	theEvent.preventDefault();

	console.log("Add New Character on Click");

	var name = $(".js-name").val();
	var occupation = $(".js-occupation").val();
	var weapon = $(".js-weapon").val();

	var addCharacter = {
		name: name,
		occupation: occupation,
		weapon: weapon,
	};

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: addCharacter,
		success: updateList,
		error: handleError
	});

	console.log(`Name: ${name}`);
	console.log(`Occupation: ${occupation}`);
	console.log(`Weapon: ${weapon}`);
};

function fetchCharacters () {
	console.log("Fetch Characters Click");

	// AJAX CODE HERE
	$.ajax({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/Characters",
		success: showCharacters,
		error: handleError
	});

};

function showCharacters (response) {
	console.log("Success!");
	console.log(response);

	var charactersArray = response;

	charactersArray.forEach(function (theCharacter) {
		var html = `
			<li> 
				<h3> Name: ${theCharacter.name} </h3>
			</li>

			<li>
				Occupation: ${theCharacter.occupation}
			</li>

			<li>
				Favorite Weapon: ${theCharacter.weapon}
			</li>

			<li>
				Has Debt: ${theCharacter.debt}
			</li>
		`;
		$(".js-characters-list").append(html);
	});

};

function addYoda () {
	console.log("Add Yoda on Click");

	var newCharacter = {
		name: "Yoda",
		occupation: "Jedi",
		weapon: "Lightsaber"
	};

	$.ajax({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: newCharacter,
		success: updateList,
		error: handleError
	});
}

function handleError (error) {
	console.log("Error!");
	console.log(error.responseText);

}

function updateList () {

};