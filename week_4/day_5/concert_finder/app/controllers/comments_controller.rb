class CommentsController < ApplicationController

	def new
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new
	end

	def create
		@concert = Concert.find(params[:concert_id])
		@comment = @concert.comments.new(comment_params)

		@comment.save

		redirect_to "/concerts/#{params[:concert_id]}"
	end

	private

	def comment_params
		params.require(:comment).permit(:name, :description)
	end

end

