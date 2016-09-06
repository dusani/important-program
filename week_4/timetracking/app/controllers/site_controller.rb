class SiteController < ApplicationController

	def home
		render 'home' # name od view template	
	end

	def contact
		render 'contact'
	end

	def say_name
		@name = params[:name]
		render "say_name"
	end

end
