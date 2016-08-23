# app.rb

require "sinatra"

get "/" do
	"<h1>Welcome</h1> <br>
		<a href='/company'> Company page </a> <br>
		<a href='/about'> About Us </a> <br>
		<a href='/staff'> Our Staffs </a>"

end

get "/company" do
	# Refers to views/company.erb
	#                   |
	#      --------------
	#      |
	erb :company
	
end

get "/about" do
	# Refers to views/about.erb
	#                   |
	#      --------------
	#      |
	erb :about

end

get "/staff" do
	# Refers to views/staff.erb
	#                   |
	#      --------------
	#      |
	@staffs = ["Daniel", "Matthew", "Greg", "Marisa", "Alain"]
	erb :staff

end