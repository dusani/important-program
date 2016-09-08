class ProjectsController < ApplicationController
	def index
		@projects = Project.order(created_at: :desc).limit(10)
		# render "index"
	end

	def show
		#Display a single project from an id
		# @project = Project.find(params[:id])
		@project = Project.find_by(id: params[:id])
		unless @project
			render "no_project_found"
		end
	end

	def new
		@project = Project.new
	end

	def create
		project = Project.new(
			:name => params[:project][:name],
			:description => params[:project][:description])
		project.save

		redirect_to "/projects/#{project.id}"
	end
end
