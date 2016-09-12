class ConcertsController < ApplicationController

	def index
		@concert = Concert.all
	end

	def new
		@concert = Concert.new
	end

	def create
		concert = Concert.new(concerts_params)

		if concert.save
			redirect_to "/concerts"
		else
			@concert = concert

			render "new"
		end
	end

	def show
		@concert = Concert.find(params[:id])
		@comments_array = @concert.comments
	end

	private

	def concerts_params
		params.require(:concert).permit(:name, :artist, :venue, :city, :date, :price, :description)
	end

end
