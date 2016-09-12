class ConcertsController < ApplicationController

	def index
		@concert = Concert.all
	end

	def new
		@concert = Concert.new
	end

	def show
		@concert = Concert.find(params[:id])
	end

end
