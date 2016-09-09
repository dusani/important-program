class TimeEntriesController < ApplicationController

	def index
		# Input
		# - project id under params[:id]
		# Output
		# - all entries for the project
		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries

		# .where(
		# 	date: Time.now.beginning_of_month..Time.now.end_of_month
		# 	)
	end

	def new
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new
	end

	def create
		# Input
		# - params[:project_id]
		# - params[:time_entry]
		# 1. Find the project
		# 2. Instantiate the new
		project = Project.find(params[:project_id])
		time_entry = project.time_entries.new(time_entry_params)
		time_entry.save

		redirect_to "/projects/#{project.id}/time_entries"
	end

	def edit
		# Input
		# - params[:project_id]
		# - params[:id]
		# Output
		# - The edit form
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])
	end

	def update
		project = Project.find(params[:project_id])
		time_entry = project.time_entries.find(params[:id])

		time_entry.update(time_entry_params)

		redirect_to "/projects/#{project.id}/time_entries"
	end

	private

	def time_entry_params
		params.require(:time_entry).permit(:hours, :minutes, :date)
	end
end
