class SkillsController < ApplicationController
    def index
      @skills = Skill.all
    end
  
    def show
      @skill = Skill.find(params[:id])
    end
  
    def new
      @skill = Skill.new
      # @projects = Project.all
    end
  
    def create
      skill = Skill.create(skill_params)
      redirect_to skill_path(skill)
    end
  
    def edit
      @skill = Skill.find(params[:id])
    end
  
    def update
      skill = Skill.find(params[:id])
      skill.update(skill_params)
      redirect_to skill_path(skill)
    end

    def destroy
      Skill.find(params[:id]).destroy
      redirect_to skills_url
    end
  
    private
  
    def skill_params
      params.require(:skill).permit(:name)
    end
  end