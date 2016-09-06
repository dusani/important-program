class SiteController < ApplicationController

	def home
		render 'home' # name od view template	
	end

	def contact
		render 'contact'
	end

end
