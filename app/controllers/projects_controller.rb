class ProjectsController < ApplicationController
	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def new
		@project = Project.new
		@skills = Skill.all
	end

	def create
		project = Project.create(project_params)
		redirect_to project_path(project)
	end

	def edit
		@project = Project.find(params[:id])
		@skills = Skill.all
	end

	def update
	  project = Project.find(params[:id])
	  project.update(project_params)
	  redirect_to project_path(project)
	end

	def destroy
		Project.find(params[:id]).destroy
		redirect_to projects_url
	end

	# def destroy
	# 	@project.destroy
		# respond_to do |format|
		#   format.html { redirect_to projects_url, notice: "Project was successfully destroyed." }
		#   format.json { head :no_content }
		# end
		# end

  private

  def project_params
    params.require(:project).permit(:title, :description)
  end
end