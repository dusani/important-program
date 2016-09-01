var numbers = '80:70:90:100';





function averageColon(numbers){

	var myArray = numbers.split(":").map(Number);
	console.log(myArray);

	return myArray.reduce(function (a, b) {
		return a + b;
	}) / myArray.length;
}

console.log( averageColon(numbers) === 85 );