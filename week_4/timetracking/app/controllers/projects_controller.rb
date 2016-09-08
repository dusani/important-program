class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc).limit(10)
		render "index"
	end

	def show
		#Display a single project from an id
		@project = Project.find(params[:id])
	end
end
