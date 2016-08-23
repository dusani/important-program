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

users = [{username: "starwars", name: "Star Wars", bio: "The official home of Star Wars on Twitter", avatar: "https://pbs.twimg.com/profile_images/631535425333518336/D-i_GqpT.jpg"},
		 {username: "ericartman", name: "Eric Cartman", bio: "The official home of Eric Cartman on Twitter", avatar: "https://pbs.twimg.com/profile_images/33686422/cartman.jpg"},
		 {username: "daniel", name: "Daniel Usani", bio: "The official home of Daniel Usani on Iron Hack", avatar: "https://media.giphy.com/media/IGR4CXdHtqTjG/giphy.gif"}
]

# http://localhost:4567/users/ironhack
# http://localhost:4567/users/starwars
#                             --------
#                                 |
#                ------------------
#                |
get "/users/:username" do
#                |
#                --------------------
#                                   |
	@user_name_string = params[:username]

	@the_user = users.find {|the_user| the_user[:username] == @user_name_string}

	if @the_user == nil
		erb :no_user
	else
	erb :user_profile
	end
end
