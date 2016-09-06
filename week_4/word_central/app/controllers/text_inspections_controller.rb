
class TextInspectionsController < ApplicationController

	def new
		render "new"
	end

	def create
		@text = params[:text_inspection][:user_text]
		@text_array = @text.split(" ")
		@word_count = @text.split(" ").length
		@read_time = (@word_count * (60.0 / 275)).round
		
		@counts = Hash.new(0)

		@text_array.each do |word|
			@counts[word] += 1
		end

		
		render "results"
	end
end
