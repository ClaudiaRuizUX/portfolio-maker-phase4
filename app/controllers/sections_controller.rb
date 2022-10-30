class SectionsController < ApplicationController
	def index
		@sections = Section.all
	end  

	def show
		@section = Section.find(params[:id])
	end

	def new
		@section = Section.new
		@skills = Skill.all
	end

	def create
		section = Section.create(section_params)
		redirect_to section_path(section)
	end

	def edit
		@section = Section.find(params[:id])
		@skills = Skill.all
	end

	def update
      section = Section.find(params[:id])
	  section.update(section_params)
	  redirect_to section_path(section)
	end

	def destroy
		Section.find(params[:id]).destroy
		redirect_to sections_url
	end

  private

  def section_params
    params.require(:section).permit(:title, skill_ids: [])
  end
end



