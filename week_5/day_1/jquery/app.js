$(document).ready(function () {

	$('.hello-button').on('click', function () {
        alert('hello world');
      });

	$(".js-tacos").on("click", function () {
          alert("Wonderful Tacos-Locos-Burritos");
      });

	var append = "<p> Append Me </p>";
	$(".container").append(append);

	var prepend = "<p> Prepend Me </p>";
	$(".container").prepend(prepend);

	var before = "<p> Before Me </p>";
	$(".container").before(before);

	var after = "<p> After Me </p>";
	$(".container").after(after);

	$("h1").remove();

	$("input").prop("type");
	$(".container").prop("class");
});

