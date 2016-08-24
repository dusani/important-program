# app.rb

require "sinatra"

get "/" do
	"<h4>Welcome to Daniel's online calculator. To begin your calcultaions click<a href='/add'> here </a></h4>"
end

get "/add" do
  erb :add

end

post "/calculate" do
# add numbers here
	first = params[:first_number].to_i
	second = params[:second_number].to_i

	if params[:operation] == "add"
		result = first + second
	elsif params[:operation] == "add"
		result = first - second
	elsif params[:operation] == "add"
		result = first * second
	elsif params[:operation] == "add"
		result = first / second.to_f
	end
		
	"<h4>The result of your calculations is #{result}</h4>"

end

# redirect to("/")
