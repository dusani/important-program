class SiteController < ApplicationController

	def home
		@current_concerts = Concert.where(date: DateTime.now..DateTime.now.end_of_day)
		@month_concerts = Concert.where(date: DateTime.now.end_of_day + 1.day..DateTime.now.end_of_month)
	end

end
